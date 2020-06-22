import pandas as pd
import re
import os

addPath = 'C:\\Users\\joeld\\Downloads\\'
data_sources_path = addPath+'files\\Q2.2\\'
analysis_data_path = addPath+'files\\Q2.4\\'
code_desc_path = addPath+'files\\Q2.6\\'

# Function to split semicolon separated lists into python list objects
def splitLists(cell):
        if not pd.isna(cell):
            split = re.split('\s*;\s*',cell)
            return split
        else:
            return cell

# Get the list of users, or identifiers of the individuals we're making diagrams for
# these identifiers need to be constant across the three files (raw, analysis, code)
users = os.listdir(data_sources_path)
# Remove the file suffix to get the identifier. 
# File suffixes need to be constant across users
users = list(map(lambda x: re.sub('_data_sources.csv','',x),users))
if ".DS_Store" in users:
    users.remove(".DS_Store")


for user in users:
    
    # The input-output dataframe has a semicolon separated list of inputs and 
    # outputs associated with each file
    IO = pd.read_csv(code_desc_path+user+'_code_desc.csv',\
                     usecols=['file_name','inputs','outputs'])
    # Drop rows that don't produce output
    IO = IO.dropna(axis=0,subset = ['outputs'])
    #,
     #                encoding = 'cp1252')
    # The rawSources and analyticSources dataframes are used to check which 
    # files aren't used by any code scripts
    rawSources = pd.read_csv(data_sources_path+user+'_data_sources.csv')
    analyticSources = pd.read_csv(analysis_data_path+user+'_analysis_data.csv')
    
    # Start writing the diagram
    output = open(addPath+user+'_diagram.txt','w')

    # Make the inputs and outputs columns into python list objects
    IO['inputs']=IO['inputs'].apply(splitLists)
    IO['outputs']=IO['outputs'].apply(splitLists)
    IO = IO.fillna('')
    
    # In the odd case there are no code scripts
    if len(IO.index) == 0:
        IO['input'] = ''
        inputs = []
        outputs = []
    # Otherwise...
    else:
        # Make a row for each (code script, input file, output file)
        IO = IO.explode('inputs')
        IO = IO.explode('outputs')
        
        # Get the children for each output
        children = IO.groupby('outputs')['inputs'].apply(lambda x: list(set(x))).reset_index()
        
        # Get the inputs for each code script
        code_inputs = IO.groupby('file_name')['inputs'].apply(lambda x: list(set(x))).reset_index()
        
        # Get the code script that produces each output
        output_makers = IO.groupby('outputs')['file_name'].apply(lambda x: list(x)[0]).reset_index()
        
        # Get list of unique outputs
        outputs = IO['outputs'].unique().tolist()
    
    # Find the set of outputs that aren't used as inputs to any script
    finalOutputs = []
    for out in outputs:
        if len(IO.loc[IO['inputs']==out].index)==0:
            finalOutputs.append(out)
    
    # This function is really tricky. The main args are 
    # finalOut, which is the output we're tracing down the tree
    # and depth, which is how deep we are in the tree
    # prefix is an arg that adds text to the beginning of the line
    # it's used to connect outputs on the same level that have things in between
    # last is an arg that tracks whether or not we're on the last output for a branch-level
    # because it no longer needs the connecting bar
    def makeDiagram(finalOut,depth,prefix,last):
        # add the prefix, which always ends in a pipe, and name of the output
        if depth >0:
            output.write(prefix+'___'+finalOut+'\n')
        # If we're at the top of the tree, just write the output
        else:
            output.write(finalOut+'\n')
        # If we're in the last output for a branch-level, get rid of the pipe in the prefix
        # for items in lower levels
        # Note, comes AFTER writing the output for this level to avoid a missing pipe
        if last == True:
            prefix = prefix[0:-1]+' '
        # Find the code script that generates the output
        next_code = output_makers.loc[output_makers['outputs']==finalOut]['file_name']
        # If there is one write it
        if len(next_code.index)>0:
            # If we're below the first level, add space for the |___ before the output
            if depth>0:
                output.write(prefix+'   '+'|___'+output_makers.loc[output_makers['outputs']==finalOut]['file_name'].iloc[0]+'\n')
            # Otherwise, just record it
            else:
                output.write('|___'+output_makers.loc[output_makers['outputs']==finalOut]['file_name'].iloc[0]+'\n')
        # Find the cildren of the output
        next_children = children.loc[children['outputs']==finalOut]['inputs']
        # if there are any, add spaces and pipe to prefix
        if len(next_children.index)>0:
            prefix = prefix+' '*4
            if depth >0:
                prefix = prefix+' '*3
            prefix = prefix+'|'
            # Increase depth
            depth = depth +1
            # And iterate for the next level
            next_children = next_children.iloc[0]
            for i in range(0,len(next_children)-1):
                makeDiagram(next_children[i],depth, prefix,False)
            makeDiagram(next_children[-1],depth,prefix,True)
    
    # Make the diagram for all of those outputs
    for final in finalOutputs:
        makeDiagram(final,0,'',False)
        output.write('\n'*3)
    
    # Find unused data sources
    
    # get list of inputs
    inputs = IO['inputs'].unique().tolist()
    
    # Make list of data sources and analytic sources
    rawSources['data_files'] = rawSources['data_files'].apply(splitLists)
    rawSources = rawSources.data_files.apply(pd.Series)\
    .merge(rawSources['data_source'],right_index=True,left_index=True)\
    .melt(id_vars=['data_source'],value_name='data_file')\
    .drop('variable',axis=1)\
    .dropna()
    
    rawSourcesList = rawSources['data_file'].unique().tolist()
    analyticSourcesList = analyticSources['analysis_data'].unique().tolist()
    
    for i in analyticSourcesList:
        if i in rawSourcesList:
            analyticSourcesList.remove(i)
      
    # Check if sources are used in scripts at all
    notUsed = []
    used = []
    while len(rawSourcesList) >0:
        source = rawSourcesList.pop(0)
        if source in outputs:
            used.append(source)
        elif source in inputs:
            used.append(source)
        else:
            notUsed.append(source)  
    
    # Write the unused sources and close diagram
    output.write('Unusued data sources:\n')
    for source in notUsed:
        output.write(str(source)+'\n')
    output.write('\n'*3)
    
    notUsed = []
    used = []
    while len(analyticSourcesList) >0:
        source = analyticSourcesList.pop(0)
        if source in outputs:
            used.append(source)
        elif source in inputs:
            used.append(source)
        else:
            notUsed.append(source)  
    
    
    # Write the unused sources and close diagram
    output.write('Unusued analytic data:\n')
    for source in notUsed:
        output.write(str(source)+'\n')
    
    output.close()
