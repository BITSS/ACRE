# Assessment

The goal of this stage is to conduct a standardized assessment of your chosen paper’s computational reproducibility. This stage is designed to record as much of the learning process behind a reproduction as possible. Such a record facilitates future incremental improvements, allowing new reproducers to pick up where others have left off.

First, you will provide a detailed description of the reproduction package. Second, you will connect the outputs you’ve chosen to reproduce with their corresponding inputs. With these elements in place, you can score the level of reproducibility of each output, and report on paper-level dimensions of reproducibility.  
  

**Use [Survey 2](https://berkeley.qualtrics.com/jfe/form/SV_2gd9Y3XVtjLpZL7) to record your work as part of this step.**

*Tip:* We recommend that you first focus on one specific output (e.g. “Table 1”). After completing the assessment for this output, you will have a much easier time translating improvements to other outputs.


## Describe the inputs. {#describe-inputs}
This section explains how to list all the input materials found or referred to in the reproduction package. First, you’ll identify data sources and connect them with their raw data files (when available). Second, you’ll locate and provide a brief description of the analytic data files. Finally, you’ll locate, inspect, and describe the analytic code used in the paper.

The following terms will be used in this section:     
  
 -	**Cleaning code:** A script associated primarily with data cleaning. Most of its content is dedicated to actions such as deleting variables or observations, merging data sets, removing outliers, or reshaping the structure of the data (from long to wide or vice versa).  
  
 -	**Analysis code:** A script associated primarily with analysis. Most of its content is dedicated to actions such as running regressions, running hypothesis tests, computing standard errors, and imputing missing values.



### Describe the data sources and raw data. 

In the paper to be reproduced, find references to all *data sources* used in the analysis. A data source is usually described in narrative form. For example, if the body of the paper uses text like “…for earnings in 2018 we use the Current Population Survey…”, the data source is “Current Population Survey 2018”. If it is mentioned for the first time on page 1 of the Appendix, its location should be recorded as “A1”. Do this for all data sources mentioned in the paper.   

Data sources also vary by unit of analysis, with some sources matching the same unit of analysis used in the paper (as in previous examples), while others are less clear (e.g., "our information on regional minimum wages comes from the Bureau of Labor Statistics." This should be recorded as "regional minimum wages from the Bureau of Labor Statistics".).

Next look at the reproduction package and map the *data sources* mentioned in the paper to the *data files* in the available materials. Record their folder locations relative to the main reproduction folder^[relative location takes the form `/folder_in_rep_materials/sub_folder/file.txt`, in contrast to an absolute location that has the form `username/documents/projects/repros/folder_in_rep_materials/sub_folder/file.txt`]. In addition to looking at the existing data files, we recommend you review the first lines of all code files (especially cleaning code), looking for lines that call the data sets. Inspecting these scripts may help you understand how different data sources are used, and possibly identify any files missing from the reproduction package.

Record this information in a [standardized spreadsheet](https://docs.google.com/spreadsheets/d/1LUIdVFH0OfR70C7z07TYeE-uWzKI_JIeWUMaYhqEKK0/edit#gid=0&range=A1) with the following structure:    

          Raw data information:
          |----------------------|------|-----------------------------------------------|---------------------|---------------------|
          | data_source          | page | data_files                                    | known_missing       | directory           |
          |----------------------|------|-----------------------------------------------|---------------------|---------------------|
          | "Current Population  | A1    | cepr_march_2018.dta                          |                     | \data\              |
          | Survey 2018"         |      |                                               |                     |                     |
          |----------------------|------|-----------------------------------------------|---------------------|---------------------|
          | "DHS 2010 - 2013"    | 4    | nicaraguaDHS_2010.csv;                        | boliviaDHS_2011.csv | \rawdata\DHS\       |
          |                      |      | boliviaDHS_2010.csv; nicaraguaDHS_2011.csv;   |                     |                     |
          |                      |      | nicaraguaDHS_2012.csv; boliviaDHS_2012.csv;   |                     |                     |
          |                      |      | nicaraguaDHS_2013.csv; boliviaDHS_2013.csv    |                     |                     |
          |----------------------|------|-----------------------------------------------|---------------------|---------------------|
          | "2017 SAT scores"    | 4    | Not available                                 |                     | \data\to_clean\     |
          |----------------------|------|-----------------------------------------------|---------------------|---------------------|
          | ...                  | ...  | ...                                           | ...                 | ...                 |
          |----------------------|------|-----------------------------------------------|---------------------|---------------------|

### Describe the analytic data sets.

List all the analytic files you can find in the reproduction package, and identify their locations relative to the main reproduction folder. Record this information in a [standardized spreadsheet](https://docs.google.com/spreadsheets/d/1LUIdVFH0OfR70C7z07TYeE-uWzKI_JIeWUMaYhqEKK0/edit#gid=1299317837&range=A1).

As you progress through the exercise, add to the spreadsheet a one-line description of each file's main content (for example: `all_waves.csv` has the simple description `data for region-level analysis`). This may be difficult in an initial review, but will become easier as you go along.

The resulting report will have the following structure:  


          Analysis data information:
          |----------------|-----------------------|--------------------------------|
          | analysis_data  | location              | description                    |
          |----------------|-----------------------|--------------------------------|
          | final_data.csv | /analysis/fig1/       | data for figure1               |
          |----------------|-----------------------|--------------------------------|
          | all_waves.csv  | /final_data/v1_april/ | data for region-level analysis |
          |----------------|-----------------------|--------------------------------|
          | ...            | ...                   | ...                            |
          |----------------|-----------------------|--------------------------------|


### Describe the code scripts.{#desc-scripts}

List all code files that you find in the reproduction package and identify their locations relative to the master reproduction folder. Review the beginning and end of each code file and identify the inputs required to successfully run the file. Inputs may include data sets or other code scripts that are typically found at the beginning of the script (e.g., `load`, `read`, `source`, `run`, `do` ). For each code file, record all inputs together and separate each item with ";". Outputs may include other data sets, figures, or plain text files that are typically at the end of a script (e.g., `save`, `write`, `export`). For each code file, record all outputs together and separate each item with ";". Provide a one-line description of what each code file does. Record all this information in the [standardized spreadsheet](https://docs.google.com/spreadsheets/d/1LUIdVFH0OfR70C7z07TYeE-uWzKI_JIeWUMaYhqEKK0/edit#gid=1617799822&range=A1) with the following structure:


          |-------------------|------------------|---------------------|---------------------|----------------------|--------------|
          | file_name         | location         | inputs              | outputs             | description          | primary_type |
          |-------------------|------------------|---------------------|---------------------|----------------------|--------------|
          | output_table1.do  | /code/analysis/  | analysis_data01.csv | output1_part1.txt   | produces first part  | analysis     |
          |                   |                  |                     |                     | of table 1           |              |
          |                   |                  |                     |                     | (unformatted)        |              |
          |-------------------|------------------|---------------------|---------------------|----------------------|--------------|
          | data_cleaning02.R | /code/cleaninig/ | admin_01raw.csv     | analysis_data02.csv | removes outliers     | cleaning     |
          |                   |                  |                     |                     | and missing vals     |              |
          |                   |                  |                     |                     | from raw admin data  |              |
          |-------------------|------------------|---------------------|---------------------|----------------------|--------------|
          | ...               | ...              | ...                 | ...                 | ...                  | ...          |
          |-------------------|------------------|---------------------|---------------------|----------------------|--------------|
 

As you gain an understanding of each code script, you will likely find more inputs and outputs -- we encourage you to update the [standardized spreadsheet](https://docs.google.com/spreadsheets/d/1LUIdVFH0OfR70C7z07TYeE-uWzKI_JIeWUMaYhqEKK0/edit#gid=1617799822&range=A1). Once finished with the reproduction exercise, classify each code file as *analysis* or *cleaning*. This subjective assessment should be made based on your interpretation of each script's main role.   


## Connect each output to all its inputs {#diagram}

With all the information collected above, you can trace your output to reprodue to its primary sources. Upload the standarized table you build to the decribe the code above into the [ACRE workflow diagram builder](ADD LINK). 

### Complete workflow information 

If you were able to identify all the relevant components in the previous section, the ACRE builder will produce and diagram like the following.  

          table 1
            └───[code] formatting_table1.R
                ├───output1_part1.txt  
                |   └───[code] output_table1.do           
                |       └───[data] analysis_data01.csv
                |          └───[code] data_cleaning01.R
                |             └───[data] survey_01raw.csv
                └───output1_part2.txt  
                    └───[code] output_table2.do           
                        └───[data] analysis_data02.csv
                           └───[code] data_cleaning02.R
                              └───[data] admin_01raw.csv  

The ACRE diagram builder will also generate a table that reprents the diagram above in a data set with the following structure:

          Data representation of diagram behind Table 1.
          |--------|-------|-------------------|---------------------|------------|
          | ouput  | order | component         | depends_on          | inpt_type  |
          |--------|-------|-------------------|---------------------|------------|
          | table1 | 1     | table1            | formatting_table1.R | code       |
          |--------|-------|-------------------|---------------------|------------|
          | table1 | 2     |formatting_table1.R| output1_part2.txt   | output     |
          |--------|-------|-------------------|---------------------|------------|
          | table1 | 3     |formatting_table1.R| output1_part1.txt   | output     |
          |--------|-------|-------------------|---------------------|------------|
          | table1 | 4     | output_table1.do  | analysis_data01.csv | data       |
          |--------|-------|-------------------|---------------------|------------|
          | ...    | ...   | ...               | ...                 | ...        |
          |--------|-------|-------------------|---------------------|------------|


### Incomplete workflow information 
If there are some components missing, then...   

[Joel and Fernando need to workshop a better solution, until then...]

Draw diagrams connecting outputs to raw data sources. To do this, find the code script that generates the target output (formatted or not), then find all inputs required to execute the script (including data and other code files). Repeat until you reach the raw data or the last available file.

When a connection cannot be drawn due to a missing component, use the "-||-" symbol. For more examples of diagrams connecting final output to initial raw data, [see here](#additional-diagrams).    
This diagram can be represented in data format by specifying how each component depends on its inputs. For example: 


Record this information in the [standardized spreadsheet](https://docs.google.com/spreadsheets/d/1LUIdVFH0OfR70C7z07TYeE-uWzKI_JIeWUMaYhqEKK0/edit#gid=1384504774&range=A1). 
If you have difficulty translating the diagram into a spreadsheet, you can draw it with pen and paper, take a picture and upload it to the assessment survey.

## Assign a reproducibility score. {#score}

Once all possible inputs have been identified, and there is a clear understanding of the connection between the outputs and inputs, you can start to assess the output-specific level of reproducibility. 

The following concepts will be used in this section:     

 - **Computationally Reproducible from Analytic data (CRA):** The output can be reproduced with minimal effort starting from the analytic data sets.

 - **Computationally Reproducible from Raw data (CRR):** The output can be reproduced with minimal effort from the raw data sets.

 - **Minimal effort:** One hour or less are required to run the code, not including computing time.

### Levels of Computational Reproducibility for a Specific Output  

Here we outline different levels of computational reproducibility. Each level is defined by availability of data and materials, and whether or not some type of reproducibility is achieved. In addition, for each level we briefly describe the type of improvements that can be done to improve the current reproducibility. In the next chapter we'll describe each possible improvement in more detail.

The assessment is made at the output level -- a paper can be highly reproducible for its main results, but suffer from low reproducibility for other outputs. The assessment is made using a 10-point scale, where 0 represents that, under current circumstances, reproducers cannot access any reproduction package, while 10 represents access to all the materials and that the target outcome can be reproduced starting from raw data.

 - **Level 1 (L1):** No data or code are available. Possible improvements include adding: raw data (+AD), analysis data (+RD), cleaning code (+CC), and analysis code (+AC). 

 - **Level 2 (L2):** Code scripts are available, but no data are available. Possible improvements include adding: raw data (+AD) and analysis data (+RD). 

 - **Level 3 (L3):** Analytic data are available, but raw data and code are not. Possible improvements include adding: raw data (+RD) and analysis code (+AC).  

 - **Level 4 (L4):** Analytic data sets and analysis code are available. However, code does not run or produces different results than those in the paper (not CRA). Possible improvements include obtaining raw data (+RD) or debugging the analysis code (DAC).    

 - **Level 5 (L5):** Analytic data sets and analysis code are available. They produce the same results as presented in the paper (CRA). The reproducibility package may be improved by obtaining the original raw data sets, or by documenting the steps required to obtain those files.   

 - **Level 6 (L6):** Analytic data and raw data are available. However, some or all cleaning and analysis code are missing. Possible improvements include: adding analysis code (+AC) and/or cleaning code (+CC).   

 - **Level 7 (L7):**  All data and analysis code are available. However, the code does not run or produces different results than those presented in the paper (not CRA). Possible improvements include: adding the missing cleaning code (+CD) or debugging the analysis code (DAC).   

 - **Level 8 (L8):**  All data and analysis code are available, but cleaning code may be missing. They produce the same results as presented in the paper (CRA). The reproducibility package may be improved by adding the missing cleaning code (+CD).

 - **Level 9 (L9):**  All materials (raw data, analytic data, cleaning code, and analysis code) are available. However, the code does not run or produces different results than those presented in the paper (not CRR and not CRA). Possible improvements include: debugging the cleaning code (DCC) or debugging the analysis code (DAC).

 - **Level 10 (L10):**  All materials (raw data, analytic data, cleaning code, and analysis code) are available. The analysis code produces the same output as presented in the paper (CRA). However, the cleaning code does not run or produces different results that those presented in the paper (not CRR). Possible improvements include: debugging the cleaning code (DCC).  

 - **Level 11 (L11):** All materials are available and produce the same results as presented in the paper with minimal effort, starting from the analytic data (yes CRA) or the raw data (yes CRR).    

The following figure summarizes the different levels of computational reproducibility (for any given output). For each level, there will be improvements that: have been made (-), can be made to move up one level of reproducibility (`✔`), or are out of reach given the current level of reproducibility (`x`).

                        Figure 1: Levels of Computational Reproducibility    

                                     | Availavility of materials, and reproducibility |
                                     |------------------------------------------------|
                                     |Analysis| Analysis| CRA | Cleaning| Raw   | CRR |
                                     |Code    | Data    |     | Code    | Data  |     |
                                     ---------|---------|-----|---------|-------|-----|
                                     | P | C  | P  | C  |     | P  |  C | P | C |     |
    L1: No materials.................| -   -  | -    -  |  -  |  -    - | -   - |  -  |     
    L2: Only code and/or docs........| ✔   ✔  | -    -  |  -  |  -    - | -   - |  -  |     
    L3: Partial analyiss data & code.| ✔   ✔  | ✔    -  |  -  |  -    - | -   - |  -  |
    L4: All analysis data & code.....| ✔   ✔  | ✔    ✔  |  -  |  -    - | -   - |  -  |
    L5: Reproducible from analysis...| ✔   ✔  | ✔    ✔  |  ✔  |  -    - | -   - |  -  |
    L6: Some cleaning code...........| ✔   ✔  | ✔    ✔  |  ✔  |  ✔    - | -   - |  -  |
    L7: All cleaning code............| ✔   ✔  | ✔    ✔  |  ✔  |  ✔    ✔ | -   - |  -  |
    L8: Some raw data................| ✔   ✔  | ✔    ✔  |  ✔  |  ✔    ✔ | ✔   - |  -  |
    L9: All raw data.................| ✔   ✔  | ✔    ✔  |  ✔  |  ✔    ✔ | ✔   ✔ |  -  |
    L10:Reproducible from raw data...| ✔   ✔  | ✔    ✔  |  ✔  |  ✔    ✔ | ✔   ✔ |  ✔  |

Choose the appropriate level of computational reproducibility and record it using the following format.


          |-------------|-------|------------------------|------------|
          | output_name | level | additional_explanation | other_info |
          |-------------|-------|------------------------|------------|
          | table 1     | 4     |                        | ...        |
          |-------------|-------|------------------------|------------|
          | table 2     | 7     |                        | ...        |
          |-------------|-------|------------------------|------------|
          | figure 1    | 5     |                        | ...        |
          |-------------|-------|------------------------|------------|
          | ...         | ...   | ...                    | ...        |
          |-------------|-------|------------------------|------------|

Record this information in the  [standarized spreadsheet](https://docs.google.com/spreadsheets/d/1LUIdVFH0OfR70C7z07TYeE-uWzKI_JIeWUMaYhqEKK0/edit#gid=1384504774&range=A1). You will be asked to provide this information in the [assessment and improvement survey](ADD LINK).   

To present each category above as levels that reflect a gradient of improvement, we need to make explicit the following underlying valuations. 

- L1: The worst is to have no access to any data or code.    
- L2: Having only some code is better than nothing, but worst than any data.
- L3: Having analytic data but not code is better than having code and no data. 
- L4 and L5: Conditional on having all analytic material. Reproducible is better than not 
- L6: Having raw and analytic data, even without any code, is better than having CRA.  
- L7: Given that there is raw and analysis data, having a cleaning code only does not add much. having analysis code does add (to lvl 7 and lvl 8 if CRA)  
- L9: Having all materials that but not being able to reproduce is better than all previous cases. Achieving  CRA (lvl 10) and CRR (lvl 11) are the best levels according to these criteria.

The reproducer and/or reader of this information can disagree with this subjective valuations. In this scenario, the levels should be understood as unordered categories, or ordered under different criteria. The reader of these guidelines are also encouraged to submit suggested edits using the ADD IMAGE button above.


### Reproducibility dimensions at the paper level   

In addition to an output-specific assessment of computational reproducibility, several practices can facilitate a paper's overall computational reproducibility. These practices are described in detail in the Improvement chapter. In the Assessment section, it is only required that you verify whether the original reproduction package made use of any of the following:  

- master script that runs all steps
- readme file
- standard file organization       
- version control 
- analysis uses open source software  
- dynamic document        
- computing capsule (e.g. CodeOcean, Binder, etc.)     

Congratulations! You have now completed the Assessment stage. You have provided a concrete building block of knowledge to improve understanding of the state of reproducibility in Economics. 

Please continue to the [next section](#improvements) where you can help to improve it!

