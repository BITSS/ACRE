---
output:
  word_document: default
  html_document: default
---
# Introduction {#intro}
Since in 2019, the [American Economic Association](https://www.aeaweb.org/journals/policies/data-code/) began requiring all the materials for reproduction of any new publication. In addition to the requirements, several [specific recommendations](https://aeadataeditor.github.io/aea-de-guidance/) were produced to facilitate the authors' compliance. This change in policy and guidance should radically improve the computational reproducibility of all new published research. However all the published research before 2019 did not have neither the requirements or the guidance to develop proper reproduction materials. 

As a result, several studies point towards rates of computational reproducibility in economics that range from alarmingly low (ADD Gertler, Chang Li) to just low (ADD Kingi et al. ). This motivates the creation of the project to Advance the Computational Reproducibility in Economics (ACRE) is carrying out the ACRE to better assess and improve the reproducibility of published work in Economics. [Berkeley Initiative for Transparency in Social Sciences (BITSS)](https://www.bitss.org/) 

Replication, or the process by which a study’s hypotheses and findings are re-examined using different data or different methods (or both) (@King95) is an essential part of the scientific process that allows science to be “self-correcting.” Computational reproducibility, or the ability to reproduce the results, tables, and other figures using the available data, code, and materials, is a precondition for replication. Computational reproducibility is assessed through the process of reproduction. At the center of this process is the reproducer (you!), a party not involved in the production of the original paper. Reproductions sometimes involve the original author (whom we refer to as “the author”) in cases where additional guidance and materials are needed to execute the process.  

This exercise is designed for reproductions performed in Economics graduate courses or undergraduate theses, with the goal of providing common terminology and standards for conducting reproductions. The goal of reproduction, in general, is to assess and improve the computational reproducibility of published research in a way that facilitates future replication, extension, and collaboration.   


## Stages of the exercise

This reproduction exercise is divided into four to five stages:   

1.	Scoping, where the reproducer defines the scope of the exercise by declaring a paper and specific output(s) on which they will focus;  
2.	Assessment, where the reproducer reviews and describes in detail the available reproduction materials (or the “replication package”) against the ACRE scale;  
3.	Improvement, where the reproducer modifies the content and/or the organization of the reproduction materials to improve its reproducibility;  
4.	Robustness checks, where the reproducer assesses the quality of selected analytical choices from the paper; and  
5.	Extension (if applicable), where the reproducer  may “extend” the current paper by including new methodologies or data. This step brings the reproduction exercise a step closer to replication.

 

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

Figure 1 depicts the connection between the five stages of a reproduction exercise. 
The three main populations that are likely to work with this framework are: graduate students (and researchers) doing research, 
graduate students in a class, and undergraduate students in a thesis project. These three groups will
differ in the amount of time and focus that will place on each stage. Figure 1
suggest some possible time allocation for each category.  

The process described in Figure 1 need not be cronologically linear. Students can realize that the scope of their reproduction is too ambitious and then switch to a less intensive reproduction. Also later in the excercise, students could begin to test different specification for robustness while assessing the current reproduciblity. 

## Recording the results of the exercise

Students will be ask to record the results of their reproduction as they make progress through different stages. After the [scoping stage](#scoping), they will be ask to complete [a survey](https://berkeley.qualtrics.com/jfe/form/SV_8hLHNI6LGSYchEN) that records paper of choice and specific outputs to reproduce. As part of this step students are ask to write a brief (max two page) summary of the paper of choice. In the [assessment stage](#assessment), reproducers should inspect all the reproduction materials (raw data, analysis data and code), draw diagrams that connect the output-to-reproduce with all its inputs, and score the level of reproducibility. All this information will be recorded in a [standarized spreadsheet](ADD LINK). In the next stage, student can record any specific [improvements](#improvements) report any potential increase in the reported level of reproducibility in a second short survery. Finally, in the [robustness stage](#robust) student will record any analytical choice and possible variations of it. 

## Outputs of this excercise  
 -  One-page introduction describing why you chose this paper
 -  Two-page summary of paper
 -  2 Completed surveys:  
       - i  - General information about the paper and specific
      information about output to reproduce.  
       - ii - Assessment of how (computationally) reproducible is the paper; description of improvements to its reproducibility; record of all the analytical choices identified in the exercise.
 -  ACRE report card with all the improvements that were created by the researcher reproducing the paper. The list of improvements will be made public and original authors will receive a copy of the report card. The option of anonymity will be provided to the researchers reproducing the paper.     

 - New Readme file (autogenerated).
 - Data with all analytical choices identified.
 - ?? Narrated description of improvements to original CR of the paper, assessment of robustness of results. Lessons from the exercise and possible future extensions.
