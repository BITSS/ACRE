# repro_categories
Categories of computational reproducibility and possibilities for improvement



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







Computationally Reproducible from Analytic data (CRA):
Computationally Reproducible from Raw data (CRR):

Analytical data: (base on majority of content)
Raw data:

Analysis code:  
Cleaning code:

Type of reproduction:  
  - Main results
  - Complete  

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
