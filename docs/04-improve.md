
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
# Improvements   
After assessing the paper's reproducibility package, you can start proposing ways to improve its reproducibility. Making improvements provides an opportunity to gain a deeper understanding of the paper's methods, findings, and overall contribution. Each contribution can also be assessed and used by the wider ACRE community, including other students and researchers using the ACRE platform.

As with the *Assessment* section, we recommend that you first focus on one specific display item (e.g., “Table 1”). After making improvements to this first item, you will have a much easier time translating those improvements to other ones.   

**Use Survey 2 to record your work as part of this step.**

## Types of output-level improvements

### Adding raw data: missing files or metadata {#rd}

Reproduction packages often do not include all original [raw datasets](#describe-inputs). To obtain any missing raw data, or information about them, follow these steps:

1. Identify the missing file. During [Assessment](#assessment), you identified all data sources from the paper's body and appendices (column `data_source` in [this standarized spreadsheet](https://docs.google.com/spreadsheets/d/1LUIdVFH0OfR70C7z07TYeE-uWzKI_JIeWUMaYhqEKK0/edit#gid=0&range=A1)). However, some data sources (as collected by the original investigators) might be missing one or more data files. You can sometimes find the specific name of those files by looking at the beginning of the cleaning code scripts. If you find the name of the file, record it in the `known_,missing` field of the [same spreadsheet](https://docs.google.com/spreadsheets/d/1LUIdVFH0OfR70C7z07TYeE-uWzKI_JIeWUMaYhqEKK0/edit#gid=0&range=A1) as above. If not, record it as “Some/All" in the `known_,missing` field of the for each specific data source.      
2. Verify whether this file (or files) can be easily obtained from the web.   
      - 2.1 - If yes: obtain the missing files and add them to the reproduction package. Make sure to obtain permission from the original author to publicly share this data. See [tips for communication](#tips-for-communication) for relevant guidance.   
      - 2.2 - If no: proceed to step 3.   
3. [Use the ACRE database](ADD LINK) to verify whether there have been previous attempts to contact the authors regarding this paper, about this specific missing raw files.  
4. Contact the original authors and politely request the original materials. Be mindful of the authors’ time, and remember that the paper you are trying to reproduce was possibly published at a time when standards for computational reproducibility were different. See [tips for communication](#tips-for-communication) for sample language on how to approach the authors for this specific scenario.  
5. If the datasets are not available due to legal or ethical restrictions, you can still improve the reproduction package by providing detailed instructions for future researchers to follow, including contact information and possible costs of obtaining the raw data.

In addition to trying to obtain the raw data, you can also contribute by obtaining missing analytic data.   


### Adding missing analytic data files {#ad}

[Analytic data](#describe-inputs) can be missing for two reasons: (i) raw data exists, but the procedures to transform it into analytic data are not fully reproducible, or (ii) some or all raw data is missing, and some or all analytic data is not included in the original reproduction package. To obtain any missing analytic data, follow these steps:

1. Identify the specific name of the missing data set. Typically this information can be found in some of the analysis code that calls the data to perform an analysis (eg `analysis_data_03.csv`).   
2. Verify that the data cannot be obtained by running the data cleaning code over the raw data.    
3. [Use the ACRE database](ADD LINK) to verify if previous attempts have been made to contact the authors about this data.    
4. [Contact the authors](#tips-for-communication) and request the specific data set.       

### Adding missing analysis code {#ac}
[Analysis code](#describe-inputs) can be added when analytic data files are available, but some or all methodological steps are missing from the code. In this case, follow these steps:  

1. Identify the specific line or paragraph in the paper that describes the analytic step that is missing from the code (e.g., “We impute missing values to...” or “We estimate this regression using a bandwidth of...”).  

2. Identify the code file and the approximate line in the script where the analysis can be carried out. If you cannot find the relevant code file, identify its location relative to the main folder using the the steps in the [reproduction diagram](#diagram).   

3. [Use the ACRE database](ADD LINK) to verify if previous attempts have been made to contact the authors about this issue.     

4. [Contact the authors](#tips-for-communication) and request the specific code files.     

5. If step #4 does not work, we encourage you to attempt to recreate the analysis using your own interpretation of the paper, and making explicit your assumptions when filling in any gaps.   

### Adding missing data cleaning code {#cc}  

[Data cleaning (processing) code](#describe-inputs) might be added when steps are missing in the creation or re-coding of variables, merging, subsetting of the data sets, or other steps related to data cleaning and processing. You should follow the same steps you used when adding missing analysis code (1-5).  

### Debugging analysis code  {#dac}

Whenever code is available in the reproduction package, you should be able to debug those scripts. There are four types of debugging that can improve the reproduction package:  

  - *Code cleaning:* Simplify the instructions (e.g., by wrapping repetitive steps in a function or a loop) or remove redundant code (i.e., old code that was commented out) while keeping the original output intact.  
  - *Performance improvement:* Replace the original instructions with new ones that perform the same tasks but take less time (e.g., choose one numerical optimization algorithm over another, but obtain the same results).    
  - *Environment set up:* Modify the code to include correct paths to files, specific versions of software, and instructions to install missing packages or libraries.    
  - *Correcting errors:* A coding error will occur when a section of the code in the reproduction package executes a procedure that is in direct contradiction with the intended procedure expressed in the documentation (i.e., paper or code comments). For example, an error will happen if the paper specifies that the analysis is performed on a population of males, but the code restricts the analysis to females only. Please follow the [ACRE procedure to report coding errors](ADD LINK).  


### Debugging cleaning code 

Follow the same steps that you did to debug the analysis code, but report them separately.  


### Reporting results    

Track all the different types of improvements you make and record in [this standarized spreadsheet](https://docs.google.com/spreadsheets/d/1LUIdVFH0OfR70C7z07TYeE-uWzKI_JIeWUMaYhqEKK0/edit#gid=0&range=A3) with the following structure:   

<table>
<caption>(\#tab:improvements-spreadsheet)Level-specific quality improvements: add data/code, debug code</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> output_name </th>
   <th style="text-align:left;"> imprv </th>
   <th style="text-align:left;"> description_of_added_files </th>
   <th style="text-align:left;"> lvl </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> table 1 </td>
   <td style="text-align:left;"> +AD </td>
   <td style="text-align:left;"> ADD EXAMPLES </td>
   <td style="text-align:left;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> table 1 </td>
   <td style="text-align:left;"> +RD </td>
   <td style="text-align:left;"> ADD EXAMPLES </td>
   <td style="text-align:left;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> table 1 </td>
   <td style="text-align:left;"> DCC </td>
   <td style="text-align:left;"> ADD EXAMPLES </td>
   <td style="text-align:left;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> figure 1 </td>
   <td style="text-align:left;"> +CC </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> figure 1 </td>
   <td style="text-align:left;"> DAC </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> inline 1 </td>
   <td style="text-align:left;"> DAC </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
  </tr>
</tbody>
</table>
           Level-specific quality improvements: add data/code, debug code.

           | output_name | imprv | description_of_added_files        | lvl |
           |-------------|-------|-----------------------------------|-----|
           | table 1     | +AD   |        ADD EXAMPLES               |  5  |
           | table 1     | +RD   |        ADD EXAMPLES               |  5  |
           | table 1     | DCC   |        ADD EXAMPLES               |  5  |
           | figure 1    | +CC   |                                   |  6  |
           | figure 1    | DAC   |                                   |  6  |
           | inline 1    | DAC   |                                   |  8  |
           | ...         | ...   | ...                               | ... |  




##  Types of paper-level improvements {#paper-level}

There are at least  six additional improvements you can make to improve a paper's overall reproducibility. These additional improvements can be applied across all reproducibility levels (including level 10).    

1. Set up the reproduction package using version control software, such as Git.
2. Improve documentation by adding extensive comments to the code.
3. Integrate the documentation with code by adapting the paper into a literate programming environment (e.g., using Jupyter notebooks, RMarkdown, or a Stata Dynamic Doc).
4. If the code was written using a proprietary statistical software (e.g., Stata or Matlab), re-write it using an open source statistical software (e.g., R, Python, or Julia).
5. Re-organize the reproduction package into a set of folders and sub-folders that follow [standardized best practices](https://www.projecttier.org/tier-protocol/specifications/#overview-of-the-documentation), and add a master script that executes all the code in order, with no further modifications. [See AEA's reproduction template](https://github.com/AEADataEditor/replication-template).  
6. Set up a computing capsule that executes the entire reproduction in a web browser without needing to install any software. For examples, see [Binder](https://mybinder.org/) and [Code Ocean](https://codeocean.com/).


### Reporting improvements  
You will be asked to provide this information in the [Assessment and Improvement Survey](ADD LINK).   
