# Checking for Robustness {#robust}


[UNDER CONSTRUCION]

- Identify all possible analytical choices: original and repeated ones.   
- Identify type of choice.  
- Identify choice value. 
- Suggest choice alternative and justify (one line)  




## Identifying Analytical Choices
As part of the requirements to [demonstrate comprehension of the paper and the code](requirements_comprehension.md) researchers conducting the reproduction will be asked to record all the analytical choices identified during the code review process. This is done in two steps: first adding comment lines into the code files where an analytic choice are found, and second, compiling those analytic choices into a standardized data set.  

In your copy of the replication code, add the comment `“# ANALYTICAL CHOICE OF TYPE ____. RECORDED FOR THE FIRST TIME [HERE or IN "FILE_NAME-LINE_NUMBER"]”` above each analytical choice detected in the code. Possible types of analytical choices include (but are not limited to):  

- Analytical choices in data cleaning code:
  - Variable definition  
  - Data sub-setting  
  - Data reshaping (merge, append, long/gather, wide/spread)  
  - Others (specify as "processing - other")
- Analytical choices in analysis code:   
   - Regression function (link function)  
   - Key parameters (tuning, tolerance parameters, etc.)  
   - Controls  
   - Adjustment of standard errors  
   - Choice of weights  
   - Treatment of missing values  
   - Imputations
   - Other (specify as "methods - other")    

Once finished, transcribe all the information on analytical choices into a data set. For the `source` field type “original” whenever the analytical choice is identified for the first time, and  `file_name-line number` every time that the same analytical choice is applied subsequently (for example if a analytic choice is identified for the first time in line 103 and for a second in line 122 their respective values for the `source` field should be `original` and `code_01.do-L103` respectively).

The resulting data base should have the [following structure](https://docs.google.com/spreadsheets/d/1nZuJSHswbZgaaIfBcyIUGPwG-WIP8zE1Oambud-WoDc/edit?usp=sharing):

| file_name  | line_number | choice_type         | choice_value                   | Source              |
|------------|-------------|---------------------|--------------------------------|---------------------|
| code_01.do | 73          | data subsetting     | males                          | original            |
| code_01.do | 122         | variable definition | income = wages + capital gains | "code_01.do-L103" |
| code_05.R  | 143         | controls            | age, income, education         | original            |
| ...        | ...         | ...                 | ...                            | ...                 |


## Choose and justify alternative values for analytical choices  



## Test the robustness of results  

Test the robustness of results to alternative (sensible) specifications

  - Identify sensible alternatives to analytical choices.
  - Sample from sensible analytical choices and re-run: report how much do results change as fraction of standard deviations.  
  - Jackknife the preferred estimate.
  - Use ML to select among covariates...  

 


