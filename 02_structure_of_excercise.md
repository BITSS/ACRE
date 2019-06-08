
# Structure of the Reproduction Activity
1 - Read the paper and identify main causal claims (10%)  

2 - Conduct reproduction: (up to 60%)  
  - 2.0 - Declare if assessment will be about all or main outputs.
  - 2.1 - Assessing computational reproducibility of [all | main] output of the paper.
  Review and classify the replication materials: data (raw and analytic) and code
  (cleaning and analysis). Assess current category of computational reproducibility.
      - List all raw data sets as described in the paper (for example "CPS March 2018 from CEPR") and, if available, match with the filename in the reproducibility package (`cepr_march_2018.dta`).   
      - Draw diagrams from output to raw data sources  

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
      - Assess the current [level](README.md#levels-of-computational-reproducibility) of computational reproducibility of each output     

            | output_name | level | name_description_of_missing_files |
            |-------------|-------|-----------------------------------|
            | table 1     | 4     |        ADD EXAMPLES               |
            | figure 1    | 7     |                                   |
            | inline 1    | 5     |                                   |
            | ...         | ...   | ...                               |

  - 2.2 - Improve the current computational reproducibility of [all | main | specific] output of the paper. Choose among the feasible and desired types of improvements described in this [section](01_definitions.md#possible-improvements)
       - Level-specific quality improvements: add data/code, debug code.

             | output_name | imprv | name_description_of_added_files   |
             |-------------|-------|-----------------------------------|
             | table 1     | +AD   |        ADD EXAMPLES               |
             | table 1     | +RD   |        ADD EXAMPLES               |
             | table 1     | DCC   |        ADD EXAMPLES               |
             | figure 1    | +CC   |                                   |
             | figure 1    | DAC   |                                   |
             | inline 1    | DAC   |                                   |
             | ...         | ...   | ...                               |  

       - Overall quality improvement: folders, literate programming, open source statistical software, version controls software, computing capsule.      



             | improvement              | took_place |  description         |
             |--------------------------|------------|----------------------|
             | version control          |   yes      |   ADD EXAMPLES       |
             | dynamic document         |   no       |   -                  |
             | translate to open source |   no       |   -                  |
             | file organization        |   yes      |   ADD EXAMPLES       |
             | computing capsule        |   yes      |   ADD EXAMPLES       |    


  - 2.3 - Identify all possible analytical choices.   

        | file_name  | line_number | choice_type         | choice_value                   | Source              |
        |------------|-------------|---------------------|--------------------------------|---------------------|
        | code_01.do | 73          | data subsetting     | males                          | original            |
        | code_01.do | 122         | variable definition | income = wages + capital gains | "code_01.do-L103" |
        | code_05.R  | 143         | controls            | age, income, education         | original            |
        | ...        | ...         | ...                 | ...                            | ...                 | 

3 - Test the robustness of results to alternative (sensible) specifications (at least 30%)
  - Identify sensible analytical choices.
  - Jackknife the preferred estimate.
  - Sample from sensible analytical choices and re-run: report how much do results change as fraction of standard deviations.

# Final products
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


       Decisions:
       Declare outputs to assess  (all, main)
       Declare outputs to improve (all, main, main + specific)
       Declare depth of improvements (lvl X -> lvl Y)
