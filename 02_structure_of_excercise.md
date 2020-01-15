---
output:
  word_document: default
  html_document: default
---
# Guidelines for Computational Reproducibility in Economics
## Structure of the Reproduction Activity


                 (1)       (2)         (3)        (4)        (5)
                scope --> assess --> improve --> robust --> extend
                  ▲         |
                  |         |
                  |_________|

     Suggested level
     of effort:
     - Undergraduate
       thesis:    10%       30%       40%         20%         0%
     - Graduate
       course:    10%       25%       20%         40%         5%
     - Graduate
       research:   5%       10%        5%         10%         70%


### 1 - Scope
Read the paper and identify main scientific claims. Define scope of the reproduction exercise (10%). Declare if assessment will be about [all or main outputs](01_definitions.md#types-of-reproduction).

Complete Survey I.  ADD LINK  


### 2 - Assess
Assess the current level of computational reproducibility of the different outputs in the paper.
  - 2.1 - List all the input materials found or referred in the reproduction package:  
    - 2.1.1 - List all raw data sources as described in the paper (for example "CPS March 2018 from CEPR") and, if raw data is available, match it with the filename in the reproducibility package (`cepr_march_2018.dta`). The result will have the following structure:  

          Raw data information:
          |----------------------|------|-----------------------------------------------|----------|---------------------|
          | data_source          | page | data_files                                    | complete | known_missing       |
          |----------------------|------|-----------------------------------------------|----------|---------------------|
          | "Current Population  | 3    | cepr_march_2018.dta                           | yes      |                     |
          | Survey 2018"         |      |                                               |          |                     |
          |----------------------|------|-----------------------------------------------|----------|---------------------|
          | "DHS 2010 - 2013"    | 4    | nicaraguaDHS_2010.csv;                        | no       | boliviaDHS_2011.csv |
          |                      |      | boliviaDHS_2010.csv; nicaraguaDHS_2011.csv;   |          |                     |
          |                      |      | nicaraguaDHS_2012.csv; boliviaDHS_2012.csv;   |          |                     |
          |                      |      | nicaraguaDHS_2013.csv; boliviaDHS_2013.csv    |          |                     |
          |----------------------|------|-----------------------------------------------|----------|---------------------|
          | "2017 SAT scores"    | 4    | Not available                                 | no       |                     |
          |----------------------|------|-----------------------------------------------|----------|---------------------|
          | ...                  | ...  | ...                                           | ...      | ...                 |
          |----------------------|------|-----------------------------------------------|----------|---------------------|

    - 2.1.2 - List and describe all the analytic data sets. The resulting report will have the following structure:  

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

    - 2.1.3 - List and describe all the code scripts. The result will have the following structure.  

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
  - 2.2 - Draw diagrams from output to raw data sources. For more examples of diagrams connecting final output to initial raw data, [see here](06_sample_diagrams.md).    

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

      This diagram can be represented in data format by specifying how each component depends to its inputs. For example:  

          Data representation of diagram behind Table 1.
          |-------|-------------------|---------------------|------------|
          | order | component         | depends_on          | other_info |
          |-------|-------------------|---------------------|------------|
          | 1     | table1            | formatting_table1.R | ...        |
          |-------|-------------------|---------------------|------------|
          | 2     | table1            | output1_part2.txt   | ...        |
          |-------|-------------------|---------------------|------------|
          | 3     | output1_part1.txt | output_table1.do    | ...        |
          |-------|-------------------|---------------------|------------|
          | 4     | output_table1.do  | analysis_data01.csv | ...        |
          |-------|-------------------|---------------------|------------|
          | ...   | ...               | ...                 | ...        |
          |-------|-------------------|---------------------|------------|

  - 2.3 - Assess the current [level](README.md#levels-of-computational-reproducibility) of computational reproducibility of each output    

          |-------------|-------|-----------------------|------------|
          | output_name | level | desc_of_missing_files | other_info |
          |-------------|-------|-----------------------|------------|
          | table 1     | 4     |                       | ...        |
          |-------------|-------|-----------------------|------------|
          | table 2     | 7     |                       | ...        |
          |-------------|-------|-----------------------|------------|
          | figure 1    | 5     |                       | ...        |
          |-------------|-------|-----------------------|------------|
          | ...         | ...   | ...                   | ...        |
          |-------------|-------|-----------------------|------------|

- 2.4 - Check for the existence of paper-level best practices for reproducibility    

      |--------------------------|------------|
      | best_practice            | exist      |
      |--------------------------|------------|
      | version control          |   yes      |
      | dynamic document         |   no       |
      | translate to open source |   no       |
      | file organization        |   yes      |
      | computing capsule        |   no       |
      |--------------------------|------------|

### 3 -  Improve

Improve the current computational reproducibility of [all | main | specific] output of the paper. Choose among the feasible and desired types of improvements described in this [section](01_definitions.md#possible-improvements)  
  - 3.1 - Level-specific quality improvements: add data/code, debug code.

           | output_name | imprv | name_description_of_added_files   | lvl |
           |-------------|-------|-----------------------------------|-----|
           | table 1     | +AD   |        ADD EXAMPLES               |  5  |
           | table 1     | +RD   |        ADD EXAMPLES               |  5  |
           | table 1     | DCC   |        ADD EXAMPLES               |  5  |
           | figure 1    | +CC   |                                   |  6  |
           | figure 1    | DAC   |                                   |  6  |
           | inline 1    | DAC   |                                   |  8  |
           | ...         | ...   | ...                               | ... |  

  - 3.2 - Overall quality improvement: file organization, literate programming, open source statistical software, version controls software, computing capsule.      



           | improvement              | took_place |  description         |
           |--------------------------|------------|----------------------|
           | version control          |   yes      |   ADD EXAMPLES       |
           | dynamic document         |   no       |   -                  |
           | translate to open source |   no       |   -                  |
           | file organization        |   yes      |   ADD EXAMPLES       |
           | computing capsule        |   yes      |   ADD EXAMPLES       |    


### 4 - Check Robustness  

Check the robustness of results to variations in the underlying set of analytical choices  

- 4.1 - Identify all possible analytical choices.   

      | file_name  | line_number | choice_type         | choice_value                   | Source              |
      |------------|-------------|---------------------|--------------------------------|---------------------|
      | code_01.do | 73          | data subsetting     | males                          | original            |
      | code_01.do | 122         | variable definition | income = wages + capital gains | "code_01.do-L103"   |
      | code_05.R  | 143         | controls            | age, income, education         | original            |
      | ...        | ...         | ...                 | ...                            | ...                 | 

- 4.2 Test the robustness of results to alternative (sensible) specifications
  - Identify sensible alternatives to analytical choices.
  - Sample from sensible analytical choices and re-run: report how much do results change as fraction of standard deviations.  
  - Jackknife the preferred estimate.
  - Use ML to select among covariates...  

### 5 - [Optional] Propose Extensions    

Propose extensions that can be carried out with these data/methods.



### Final products
 -  One-page introduction describing why you chose this paper
 -  Two-page summary of paper
 -  2 Completed surveys:  
       - i  - General information about the paper and specific
      information about output to reproduce.  
       - ii - Assessment of how (computationally) reproducible is the paper;
       description of improvements to its reproducibility; record of all the
       analytical choices identified in the exercise.
 -  ACRE report card with all the improvements that were created by the researcher reproducing the paper. The list of improvements will be made public and original authors will receive a copy of the report card. The option of anonymity will be provided to the researchers reproducing the paper.     

 - New Readme file (autogenerated).
 - Data with all analytical choices identified.
 - ?? Narrated description of improvements to original CR of the paper, assessment of robustness of results. Lessons from the exercise and possible future extensions.
