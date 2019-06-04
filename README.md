classified# repro_categories  

## Categories of computational reproducibility and possibilities for improvement  


Types of reproducibility, by sources used:  
**Computationally Reproducible from Analytic data (CRA):** an output is CRA if it can be reproduced with minimal effort starting from the analytic data sets.

**Computationally Reproducible from Raw data (CRR):** an output is CRR if it can be reproduced with minimal effort from the raw data sets.

Types of data:  
**Raw data:** A data set is considered to be raw, if it corresponds to the a unmodified file that was obtained by the authors from the sources cited in the paper. The only possible modification that can be made to raw data, without changing its category to processed data, is that of deleting personally identifiable information.

**Processed data:** a raw data set that has gone through any transformation should be defined as processed data. Processed data can be separated into intermediate data and analytic data.
 - *Intermediate data:* a processed dataset is defined as intermediate if it is not directly used as final input for an analysis in the final paper (including appendix). Intermediate data should not contain direct identifiers.
 - *Analytic data:* data will be defined as analytic if it will be used as the last input in the workflow, to produce a statistic displayed in the final paper (including the appendix).


Types of code:  
**Cleaning code:** a script should be classified as primarily data cleaning if most of its content is dedicated to actions such as: deleting variables or observations, merging data sets, removing outliers, and reshaping the structure of the data (from long to wide or vice versa).     
**Analysis code:** a script should be classified as primarily analysis code if most of its content is dedicated to actions such as: running regressions, running hypothesis tests, computing standard errors, and imputing missing values.

**Minimal effort:** the definition of minimal effort we will use here is that of spending
five minutes or less in getting the code running. This five minutes do not include the computing time.


Type of reproduction, by outputs reproduced:  
  - **Main results:** a successful reproduction of main results would have obtained the same estimates as in the original paper, for the estimates that the authors highlight the most in either the abstract, introduction or conclusion of the paper. If no estimate is highlighted, then the researcher conducting the reproduction should choose the main result and declare it in at the begging of the reproduction.
  - **Complete:**  a successful reproduction is complete when it is possible to obtain the same estimates as the original study for all the outputs presented in the paper. This includes: tables, figures, and inline estimates both in the main body of the paper and all the appendices.   

Possible improvements:
 - **Add missing analysis data files (+AD):** if found missing from the reproduction materials, analysis data sets could be added. Researchers performing the reproduction are encourage to follow these steps:  
  1 - Identify specific name of the missing data set. Typically this information can be found in some of the analysis code that calls such data in order to perform an analysis (eg `analysis_data_03.csv`).   
  2 - Verify that such data cannot be obtained by running the data cleaning code over the raw data.   
  3 - [Verify the ACRE database](ADD LINK) for previous attemps to contact the authors on this topic.  
  4 - [Contact the authors](contact_authors.md) and request the specific data set.     
 - **Add missing raw data files (+RD):** most reproductions packages do not include all the original raw datasets. To obtain any missing raw data, follow the same steps (1-4) recommended for the adding analysis data sets. If the data sets are not available due to confidentiality or proprietary issues, the researcher conducting the reproduction can still improve the reproduction package by including a detailed set of instructions, including contact information and possible costs, for future researchers to follow.  
 - **Add missing analysis code (+AC):**
 - **Add  missing data cleaning code (+CC):**
 - **Debug analysis code (DAC):**
 - **Debug cleaning code (DCC):**


**Level 1 (L1):**  No data and no code.  
**Level 2 (L2):**  
**Level 3 (L3):**   ...  
**Level 4 (L4):**    
**Level 5 (L5):**    
**Level 6 (L6):**  
**Level 7 (L7):**  
**Level 8 (L8):**  
**Level 9 (L9):**  
**Level 10 (L10):**  

The following figure summarizes the different levels of computational reproducibility (for any given output)

                                                       | Possible improvements |
                                               # Level |+AD|+RD|+AC|+RC|DAC|DCC|
                                               --------|---|---|---|---|---|---|
    What data are available?                   |       |   |   |   |   |   |   |
    ├── None ..................................|   L1  | ✔ | ✔ | x | x | x | x |
    ├── Analytic data only. Code?              |       |   |   |   |   |   |   |
    |   ├── No code or cleaning code only......|   L2  | - | ✔ | ✔ | x | x | x |
    |   └── Analysis code only. Is it CRA?     |       |   |   |   |   |   |   |
    |      ├── No..............................|   L3  | - | ✔ | - | x | ✔ | x |
    |      └── Yes.............................|   L4  | - | ✔ | - | x | - | x |
    └── Raw & Analytic data. Code?             |       |   |   |   |   |   |   |
       ├── None ...............................|   L5  | - | - | ✔ | ✔ | x | x |
       ├── Analysis code only. CRA?            |       |   |   |   |   |   |   |
       |  ├── No...............................|   L6  | - | - | - | ✔ | ✔ | x |
       |  └── Yes..............................|   L7  | - | - | - | ✔ | - | x |
       └── A. and cleaning code. Is it CRR?    |       |   |   |   |   |   |   |
           ├── No. CRA?                        |       |   |   |   |   |   |   |
           |  ├── No...........................|   L8  | - | - | - | - | ✔ | ✔ |
           |  └── Yes..........................|   L9  | - | - | - | - | - | ✔ |
           └── Yes.............................|   L10 | - | - | - | - | - | - |


 Additional improvements across categories.
  - Improve documentation
       - Add comments
       - Literate programming
  - Open source implementation
  - File organization
  - Set up a computing capsule


Analytical choices:  
Sensible choices:

Steps:  
1 - Read the paper and identify main causal claims (10%)  

2 - Conduct reproduction: (up to 60%)  
  - Review and classify the replication materials: data (raw and analytic) and code
  (cleaning and analysis). Assess current category of computational reproducibility  
  - Contribute to increase the CR of the paper
       - Obtaining data/code
       - Creating code
       - Debugging code
       - Overall quality improvement (folders, LP, OS)
  - ID possible analytical choices


3 - Test the robustness of results to alternative (sensible) specifications (at least 30%)
  - ID sensible analytical choices
  - Sample from sensible and re-run: report how much do result change as
    fraction of standard deviations.

Final products:
 -  Two-page summary of paper
 -  One-page introduction describing why you chose this paper
 -  2 Completed surveys:  
      i  - General information about the paper and specific
      information about output to reproduce.  
      ii - Assessment of how (computationally) reproducible is the paper;
       description of improvements to its reproducibility; record of all the
       analytical choices identified in the exercise.
 -  Narrated description of improvements to original CR of the paper, assessment
    of robustness of results. Lessons from the exercise and possible future
    extensions.

Others:
 - think how to distinguish "true" analytical choices and "errors"  
 - Ideas to test comprehension of the code?  
    - Ask authors about possible quizzes to test comprehension of paper?


# Additional sources
- Lars   
- TIER   
- IDB   
- DD  
- Git  
- OSF  
