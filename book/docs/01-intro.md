---
output:
  pdf_document: default
  html_document: default
  word_document: default
---
#  {-}

                    (1)       (2)         (3)        (4)        (5)
                  scope --> assess --> improve --> robust --> extend
                   ▲         |  |                   ▲
                   |         |  |                   |
                   |_________|  |___________________|


<table><thead><tr><th>[Scoping](#scoping) </th><th>[Assessment](#assessment)</th><th colspan=2>[Improvement](#improvements)</th><th>[Robustness](#robust)</th><th>Extensions</th></tr></thead><tbody><tr><td></td><td></td><td>[Outcome-level](#improvements)</td><td>[Paper-level](#paper-level)</td></tr><tr><td>&#9744; Select paper</td><td>[&#9744; Describe inputs](#describe-inputs)</td><td>Output-level imp:</td><td>[&#9744; + Version control](#paper-level)</td><td>[&#9744; Analytical choices](#id-analy)</td><td>&#9744; New method</td></tr><tr><td>[&#9744; Check ACRE](#check-acre)</td><td>[&#9744; Reproduction diagrams](#diagram)</td><td>[&#9744; + Raw data](#rd)</td><td>[&#9744; + Documentation](#paper-level)</td><td>[&#9744; Type of choice](#id-type)</td><td>&#9744; New data</td></tr><tr><td>&#9744; [Search for rep. mat.](#verify-rep-mat)</td><td>[&#9744; Reproduction score](#score)</td><td>[&#9744; + Analysis data](#ad)</td><td>[&#9744; + Dynamic document](#paper-level)</td><td>[&#9744; Choice value](#id-val)</td><td>&#9744; New data</td></tr><tr><td>[&#9744;  Read and summ.](#read-summ)</td><td></td><td>[&#9744; + Analysis code](#ac)</td><td>[&#9744; + File structure](#paper-level)</td><td>[&#9744; Justify and test alternatives](#test-rob)</td><td></td></tr><tr><td>[&#9744; Output(s)](#outputs)</td><td></td><td>[&#9744; Debug analysis code](#dac)</td><td></td><td><td></td><td></td></tr><tr><td>[&#9744; Depth](#intensive)</td><td></td><td>[&#9744; Debug cleaning code](#dcc)</td><td></td><td></td><td></td></tr><tr><td>Record results is Survey 1</td><td>Record results is Survey 2</td><td colspan=2>Record results is Survey</td><td></td><td></td></tr></tbody></table>

# Introduction {#intro} 

REVIEW 

 Since in 2019, the [American Economic Association](https://www.aeaweb.org/journals/policies/data-code/) began requiring all the materials for reproduction of any new publication. In addition to the requirements, several [specific recommendations](https://aeadataeditor.github.io/aea-de-guidance/) were produced to facilitate the authors' compliance. This change in policy and guidance should radically improve the computational reproducibility of all new published research. However all the published research before 2019 did not have neither the requirements or the guidance to develop proper reproduction materials.

As a result, several studies point towards rates of computational reproducibility in economics that range from alarmingly low (ADD Gertler, Chang Li) to just low (ADD Kingi et al. ). The project of Advancing Computational Reproducibility in Economics (ACRE) has the goals of improving, and having a much clearer picture of, computational reproducibility in economics.

Replication, or the process by which a study’s hypotheses and findings are re-examined using different data or different methods (or both) (@King95) is an essential part of the scientific process that allows science to be “self-correcting.” Computational reproducibility, or the ability to reproduce the results, tables, and other figures using the available data, code, and materials, is a precondition for replication. Computational reproducibility is assessed through the process of reproduction. At the center of this process is the reproducer (you!), a party not involved in the production of the original paper. Reproductions sometimes involve the original author (whom we refer to as “the author”) in cases where additional guidance and materials are needed to execute the process.  

This exercise is designed for reproductions performed in Economics graduate courses or undergraduate theses, with the goal of providing common terminology and standards for conducting reproductions. The goal of reproduction, in general, is to assess and improve the computational reproducibility of published research in a way that facilitates future replication, extension, and collaboration.   


## Beyond binary judgements

A PAPER CAN HAVE SEVERAL SCIENTIFIC CLAIMS

FOR EACH SCIENTIFIC CLAIM, TYPYCALLY, THERE WILL BE SEVERAL SPECIFICATIONS. 



```r
# JOEL: can you figure out why this to run int the html version of the book?
library(DiagrammeR)

DiagrammeR("
   graph TB
   Paper-->Claim1
   Paper-->Claim2
   Paper-->Claim3
   Claim1-->Spec11
   Claim1-->Spec12
   Claim1-->Spec13
   Claim2-->Spec21
   Claim2-->Spec22
   Claim2-->Spec23
   Claim3-->Spec31
   Claim3-->Spec32
   Claim3-->Spec33
   ")
```


IN THE MOST BASIC REPRODUCTION EXCERCISE, REPRODUCERS WILL BE ASK TO ASSESS ONE SPECIFICATION OF ONE CLAIM. 

FOR THAT EXCERCISE, REPRODUCIBILITY WILL BE ASSESSED ON A 10 LEVEL CATEGORIES. 

ARGUE THAT LEVEL 10 IS VERY STRINGENT BUT DESIRABLE. IT IS ALSO VERY CLOSE TO THE NEW REQUIREMENTS ESTABLISHED BY THE AEA IN 2019. 

EMPHASIZE THAT BEFORE 2019 IT IS VERY HARD TO DEMAND ANY TYPE OF REPRODUCIBILITY, SO OUR GOAL IS TO ASSESS AND IMPROVE, NOT JUDGE. 


## Stages of the exercise

This reproduction exercise is divided into four to five stages:   

1.	**Scoping**, where the reproducer defines the scope of the exercise by declaring a paper and specific output(s) on which they will focus;  
2.	**Assessment**, where the reproducer reviews and describes in detail the available reproduction materials (or the “reproduction package”) and assess current levels of computational reproducibility;  
3.	**Improvement**, where the reproducer modifies the content and/or the organization of the reproduction materials to improve its reproducibility;  
4.	**Robustness checks**, where the reproducer assesses the quality of selected analytical choices from the paper; and  
5.	**Extension** (if applicable), where the reproducer  may “extend” the current paper by including new methodologies or data. This step brings the reproduction exercise a step closer to replication.


                    (1)       (2)         (3)        (4)        (5)
                  scope --> assess --> improve --> robust --> extend
                   ▲         |  |                   ▲
                   |         |  |                   |
                   |_________|  |___________________|

            Suggested level of effort:
        - Graduate
          research:   5%       10%        5%         10%         70%
        - Graduate
          course:    10%       25%       20%         40%         5%
        - Undergrad.
          thesis:    10%       30%       40%         20%         0%

(**JOEL**: Please add guesstimates of level of efforts for projects that last 2 weeks, 1 month or one semester. Ask Katie for a paper form 3ie on Push buttom replications (one of the authors is Sayak Khatua)

Figure 1 depicts the suggested levels of effort for each stage of the exercise depending on the context in which you are performing this exercise. This process need not be chronologically linear, e.g. you can realize that the scope of their reproduction is too ambitious and then switch to a less intensive reproduction. Later in the exercise, you can also begin testing different specifications for robustness while also assessing the current level of reproducibility.

## Recording the results of the exercise

You will be asked to record the results of your reproduction as you make progress through different stages. After the [scoping stage](#scoping), you will be asked to complete [a survey](https://berkeley.qualtrics.com/jfe/form/SV_8hLHNI6LGSYchEN) that records paper of choice and specific outputs to reproduce. In the [assessment stage](#assessment), you should inspect all the reproduction materials (raw data, analysis data and code), draw diagrams that connect the target output (to reproduce) with all its inputs, and score the level of reproducibility. All this information will be recorded in a [standarized spreadsheet](ADD LINK). At the [improvement  stage]((#improvements)), you can record any specific improvements report any potential increase in the reported level of reproducibility in a second short survey. Finally, in the [robustness stage](#robust) you will record any analytical choice and possible variations of it.