
```r
library(tidyverse)
```

```
## ── Attaching packages ──────────────────────────────────────────────────────────────────────────────────────────────── tidyverse 1.3.0 ──
```

```
## ✓ ggplot2 3.3.2     ✓ purrr   0.3.4
## ✓ tibble  3.0.1     ✓ dplyr   1.0.0
## ✓ tidyr   1.1.0     ✓ stringr 1.4.0
## ✓ readr   1.3.1     ✓ forcats 0.5.0
```

```
## ── Conflicts ─────────────────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

```r
library(knitr)
library(kableExtra)
```

```
## 
## Attaching package: 'kableExtra'
```

```
## The following object is masked from 'package:dplyr':
## 
##     group_rows
```

```r
temp_eval <- FALSE
```
# Checking for Robustness {#robust}

Once you have assessed and improved the computational reproducibility of a paper, you can assess the quality of different analytical choices by including new robustness checks in addition to those included in the original paper. We use the term **robustness checks** to describe any possible change in a computational choice, both in data analysis and data cleaning, and its subsequent effect on the main estimates of interest. The universe of robustness checks can be very large or potentially infinite. The focus should be on the set of **reasonable specifications** ([Simonsohn et. al., 2018](https://urisohn.com/sohn_files/wp/wordpress/wp-content/uploads/Paper-Specification-curve-2018-11-02.pdf)), defined as (1) sensible tests of the research question, (2) expected to be statistically valid, and (3) not redundant with other specifications in the set.

The addition of new robustness checks will depend on the current level of reproducibility. E.g., for claims supported by display items reproducible at level 0-1, it is not possible to perform any other robustness checks in addition to what is already in the paper [@fhoces: include a brief explanation why: because...]. It may be possible to perform additional robustness checks for claims supported by display items reproducible at levels 2-4, but not using the specific estimates declared in *Stage 1: Scoping* because the display items are not computationally reproducible from analysis data (CRA). It is possible to include additional robustness checks to validate the core conclusion of a claim based on a display item reproducible at level 5. Finally, a claim associated with display items reproducible at level 6 and above allows for robustness checks that involve variable definitions and data manipulations. When checking the robustness to a new variable definition, reproducers will also have the possibility of testing how the main estimate changes under an alternative variable definition *and* an alternative core analytical choice. [@fhoces: please verify whether this is what you meant to say in the last 2 sentences]

Going back to our diagram that represents the multiple parts of a paper (\@ref(fig:diagram)), the robustness section begins at the claim level. For a given claim, there will be several specifications presented in the paper, one of which is identified by the authors (or yourself, in the absence of one designated by the authors) as the main or preferred specification. Identify which display item contains this specification and refer to the reproduction tree to identify the code files where you can potentially modify a computational choice. Using the example tree discussed in the *Assessment* stage, we can remove the data files for simplicity and obtain the following: 
<!-- Emma: add reference to label in assessment stage-->

        table1.tex (contains preferred specification of a given claim)
            |___[code] analysis.R
                    |___[code] final_merge.do
                            |___[code] clean_merged_1_2.do
                            |       |___[code] merge_1_2.do
                            |               |___[code] clean_raw_1.py
                            |               |___[code] clean_raw_2.py
                            |___[code] clean_merged_3_4.do
                                    |___[code] merge_3_4.do
                                            |___[code] clean_raw_3.py
                                            |___[code] clean_raw_4.py
                                            
This simplified tree gives you a list of potential files where you could test different reasonable specifications. Here we suggest two types of contributions to robustness checks: i) mapping the universe of robustness checks and ii) testing reasonable specifications. Both contributions should be recorded in the ACRE platform referring to files in a specific reproduction package. 

## Mapping the universe of robustness checks

**Analytical choices in data cleaning code**
  - Variable definition  
  - Data sub-setting  
  - Data reshaping (merge, append, long/gather, wide/spread)  
  - Others (specify as "processing - other")
**Analytical choices in analysis code** 
   - Regression function (link function)  
   - Key parameters (tuning, tolerance parameters, etc.)  
   - Controls  
   - Adjustment of standard errors  
   - Choice of weights  
   - Treatment of missing values  
   - Imputations
   - Other (specify as "methods - other")    

Once finished, transcribe all of the information on analytical choices into a dataset (the ACRE platform will allow for easier recording once deployed). For the `source` field type *“original”* whenever the analytical choice is identified for the first time, and `file_name-line number` every subsequent time when the same analytical choice is applied (for example if an analytic choice is identified for the first time in line #103 and for the second time in line #122 their respective values for the `source` field should be `original` and `code_01.do-L103`, respectively).

For each analytical choice recorded, add the specific choice that the paper used, and describe what other alternatives could have been used. The resulting database should have the [following structure](https://docs.google.com/spreadsheets/d/1nZuJSHswbZgaaIfBcyIUGPwG-WIP8zE1Oambud-WoDc/edit?usp=sharing):



|entry_id| file_name  | line_number | choice_type         | choice_value                   | choice_range                  | Source              |
|--------|------------|-------------|---------------------|--------------------------------|-------------------------------|---------------------|
|   1    | code_01.do | 73          | data sub-setting    | males                          | males, female,                | original            |
|   2    | code_01.do | 122         | variable definition | income = wages + capital gains | wages, capital gains, gifts   | "code_01.do-L103"   |
|   3    | code_05.R  | 143         | controls            | age, income, education         | age, income, education, region| original            |
| ...    | ...        | ...         | ...                 | ...                            | ...                           | ...                 |

The advantage of this type of contribution is that you are not required to have an in-depth knowledge of the paper and its methodology to contribute. This allows you to potentially map several code files, achieving a broader understanding of the paper. The disadvantage is that you are not expected to test alternative specifications. 

## Proposing a specific robustness check

When performing a specific robustness test, follow these steps: 

1. Search in the mapping database (previous section) [@fhoces, is this referring to the reproduction tree diagram?] and record the identifier(s) corresponding to the analytical choice to test (`entry_id`). If there is no entry corresponding for the specific lines, please create one. 

2. Propose a specific variation to this analytical choice. 

3. Discuss whether you think this variation is sensible, specifically in the context of the claim tested (e.g. does it make sense to include exclude low-income Hispanics from the sample?). 

4. Discuss how this variation could affect the validity of the results (e.g. likely effects on omitted variable bias, measurement error, change in the Local Average Treatment Effects for the underlying population). 

5. Confirm that test is not redundant with other tests in the paper/robustness exercise. 

6. Report the results from the robustness check (new estimate, standard error, and units).


The advantage of this approach is that it allows for an in-depth inspection of a specific section of the paper. The main limitation is that justifying sensibility and validity (and non-redundancy, to some extent) requires a much deeper understanding of the topic and the methods of the paper, making it less feasible for undergraduate students or graduates with only a general interest in the paper. [@fhoces: what does it mean to have only a general interest in the paper?]

<!--
## Test the robustness of results  

Test the robustness of results to alternative (sensible) specifications

  - Specification curves: DESCRIBE. 
  - Jackknife the preferred estimate: DESCRIBE.  
  - Use ML to select among excoriates: DESCRIBE.    
-->
 


