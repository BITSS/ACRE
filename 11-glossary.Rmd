---
output:
  word_document: default
  html_document: default
---
# Definitions

## Concepts in reproducibility

 - **Raw data** are unmodified files obtained by the authors from the sources cited in the paper. Raw data from which personally identifiable information (PII) has been removed is still considered raw. All other modifications to raw data make it *processed*.   A data set may be classified as **raw** if it fits any of the following criteria:     
 
   - The data is stored in a folder or file labeled as “raw”.  
   - The data set is not the output of any code script in the reproduction package.    
   - The same data file can be independently obtained from the data source cited in the paper.  

 - **Processed data** are raw data sets that have gone through any transformation other than the removal of PII. There are two kinds of processed data:  
      - **Intermediate data** are not directly used as final input for analyses presented in the final paper (including appendices). Intermediate data should not contain direct identifiers.  
      - **Analytic data** is used as the final input in a workflow in order to produce a statistic displayed in the paper (including appendices).A data set may be classified as **analytic** if it fits any of the following criteria:      
         - The data is stored in a folder or file labeled as “analytic” or “analysis.”
         - The data set is the last input required to produce some of the output (formatted or unformatted) of the paper.
  - **Causal claim:** This paper estimates the effect of X on Y for population P, using method F. Example: "This paper investigates the impact of bicycle provision on secondary school enrollment among young women in Bihar/India, using a Difference in Difference approach."   

 - **Descriptive/predictive claim:** This paper estimates the value of Y (estimated or predicted) for population P under dimensions X using method M. Example: "Drawing on a unique Swiss data set (population P) and exploiting systematic anomalies in countries’ portfolio investment positions (method M), I find that around 8% of the global financial wealth of households is held in tax havens (value of Y) "

 - **Reproduction package:** Collection of all the materials associated with the reproduction of a paper. A reproduction package may contain  data, code and documentation. When the materials are provided in the original publication they will be labeled as 'original reproduction package', when they provided by a previous reproducer they will be referred as 'reproducer X's reproduction package'. At this point you are only assessing the existence of one (or more) reproduction packages, you are will not be assessing the quality of its content at this stage. 
 
 ## Concepts in the ACRE exercise and platform
 
- **Candidate paper** is a paper that has been considered for reproduction, but the reproducer decided not to move forward with the analysis due to failure to locate a reproduction package. Learn more [here](https://bitss.github.io/ACRE/scoping.html#from-candidate-to-declared-paper).
- **Declared paper** is the paper that the reproducer analyzes throughout the exercise.

