# repro_categories  

## Categories of computational reproducibility and possibilities for improvement  



                                                       | Possible improvements |
                                               # Categ |+AD|+RD|+AC|+RC|DAC|DCC|
                                               --------|---|---|---|---|---|---|
    What data are available?                   |       |   |   |   |   |   |   |
    ├── None ..................................|   C1  | ✔ | ✔ | x | x | x | x |
    ├── Analytic data only. Code?              |       |   |   |   |   |   |   |
    |   ├── No code or cleaning code only......|   C2  | - | ✔ | ✔ | x | x | x |
    |   └── Analysis code only. Is it CRA?     |       |   |   |   |   |   |   |
    |      ├── No..............................|   C3  | - | ✔ | - | x | ✔ | x |
    |      └── Yes.............................|   C4  | - | ✔ | - | x | - | x |
    └── Raw & Analytic data. Code?             |       |   |   |   |   |   |   |
       ├── None ...............................|   C5  | - | - | ✔ | ✔ | x | x |
       ├── Analysis code only. CRA?            |       |   |   |   |   |   |   |
       |  ├── No...............................|   C6  | - | - | - | ✔ | ✔ | x |
       |  └── Yes..............................|   C7  | - | - | - | ✔ | - | x |
       └── A. and cleaning code. Is it CRR?    |       |   |   |   |   |   |   |
           ├── No. CRA?                        |       |   |   |   |   |   |   |
           |  ├── No...........................|   C8  | - | - | - | - | ✔ | ✔ |
           |  └── Yes..........................|   C9  | - | - | - | - | - | ✔ |
           └── Yes.............................|   C10 | - | - | - | - | - | - |


**Computationally Reproducible from Analytic data (CRA):** an output is CRA if it can be reproduced with minimal effort starting from the analytic data sets.

**Computationally Reproducible from Raw data (CRR):** an output is CRR if it can be reproduced with minimal effort from the raw data sets.

**Raw data:** A data set is considered to be raw, if it corresponds to the a unmodified file that was obtained by the authors from the sources cited in the paper. The only possible modification that can be made to raw data, without changing its category to processed data, is that of deleting personally identifiable information.

**Processed data:** A data set is considered to be analytical (base on majority of content)  


A second common suggestion is to follow a standardized folder structure within the main project folder.

Most recommendations focus on having a few high-level folders separating raw data, processed data, code, and documentation. Raw data is any data that was received by the researcher and has not been processed in any way. Processed data include both intermediary files and final files to be used in the analysis. Code contains any program used to process the data (cleaning and analysis). Documentation should include the final report and all additional inputs required for the project such as questionnaires, bibliography, and raw output (tables and plots).



Types of code:
Data cleaning code: a script should be clasified as primarily data cleaning if most of its content is dedicated to actions such as: deleting variables or observations, merging data sets, removing outliers, and reshaping the structure of the data (from long to wide or vice versa).     
Analysis code: a script should be clasified as primarily analysis code if most of its content is dedicated to actions such as: running regressions, running hypothesis tests, computing standard errors, and imputing missing values.


Types of data:
Raw data: data are considered “raw” if they have not been processed since they were received from the original source.
Processed data: a raw data set that has gone through any transformation should be defined as processed data. Processed data can be separated into intermediate data and analytic data.
Intermediate data: a processed dataset is defined as intermediate if it is not directly used as final input for an analysis in the final paper (including appendix). Intermediate data should not contain direct identifiers.
Analytic data: data will be defined as analytic if it will be used as the last input in the workflow, to produce a statistic displayed in the final paper (including the appendix). 



**Minimal effort:**

**Analysis code:**  
**Cleaning code:**  

Type of reproduction:  
  - **Main results:**
  - **Complete:**  

Possible improvements:
 - Add missing analysis data files (+AD)
 - Add (+RD)
 - Add (+AC)
 - Add (+CC)
 - Debug analysis code (DAC)
 - Debug cleaning code (DCC)

Additional improvements across categories.
 - Improve documentation
      - Add comments
      - Literate programming
 - Open source implementation
 - File organization
 - Set up a computing capsule

Analytical choices:  
Sensible choices:


Category 1: No data and no code.  
...  
Category 10: ...  


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
