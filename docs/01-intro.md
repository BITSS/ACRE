---
output:
  html_document: default
  pdf_document: default
  word_document: default
---


# Introduction {-#intro}

In 2019, the [American Economic Association](https://www.aeaweb.org/journals/policies/data-code/) updated its Data and Code Availability Policy, which now mandates that the AEA Data Editor verifies the reproducibility of all papers before they are accepted by an AEA journal. In addition to the requirements, several [specific recommendations](https://aeadataeditor.github.io/aea-de-guidance/) were produced to facilitate compliance. This change in policy is expected to improve the computational reproducibility of all newly published research, after several studies showed that rates of *computational reproducibility* in economics at large range from alarmingly low [@galiani2018make; @chang2015economics] to just low [@kingi2018reproducibility].

*Replication*, or the process by which a study’s hypotheses and findings are re-examined using different data or different methods (or both) [@King95] is an essential part of the scientific process that allows science to be “self-correcting.” *Computational reproducibility*, or the ability to reproduce the results, tables, and other figures using the available data, code, and materials, is a precondition for replication. Computational reproducibility is assessed through the process of *reproduction*. At the center of this process is the *reproducer* (you!), a party not involved in the production of the original paper. Reproductions sometimes involve the *original author* (whom we refer to as “the author”) in cases where additional guidance and materials are needed to execute the process.

This exercise is designed for reproductions performed in economics graduate courses or undergraduate theses, with the goal of providing a common approach, terminology, and standards for conducting reproductions. The goal of reproduction, in general, is to assess and improve the computational reproducibility of published research in a way that facilitates future replication, extension, and collaboration.

This exercise is part of the Accelerating Computational Reproducibility in Economics [(ACRE)](https://www.bitss.org/ecosystem/acre/) project led by the Berkeley Initiative for Transparency in the Social Sciences [(BITSS)](bitss.org) and Prof. Lars Vilhuber, Data Editor for the journals of the American Economic Association (AEA). ACRE looks to assess, enable, and improve the computational reproducibility of published economics research.

## Beyond binary judgments {-}

Assessments of reproducibility can easily gravitate towards binary assessments that declare an entire paper "reproducible" or "non-reproducible". These guidelines suggest a more nuanced approach by highlighting two reasons that make binary judgment less relevant. 

First, a paper may contain several scientific claims, out of which all can vary in computational reproducibility. Each claim is tested using different methodologies, where results are presented in one or more outputs (like table and figures). Each output will itself contain several specifications. Figure \@ref(fig:diagram) illustrates this idea. 

![(\#fig:diagram)One paper has multiple components to reproduce](01-intro_files/figure-docx/diagram-1.png)

Second, for a given specification there are several levels of reproducibility, ranging from the absence of any materials to complete reproducibility starting from the raw data. And even for a specific claim-specification, distinguishing the appropriate level can be far more constructive than simple labeling as (ir)reproducible.

Note that the highest level of reproducibility, which requires complete reproducibility starting from raw data, is very demanding and it should not be expected of all published research -- especially before 2019. Instead, this level serves as an aspiration to improve the current reproducibility of research and facilitate the transmission of knowledge in the scientific community.


## Stages of the exercise {-}

This reproduction exercise is divided into four stages, corresponding to the first four chapters of these guidelines, with a fifth optional stage :   

1. [**Scoping**](#scoping), where you (the reproducer) will define the scope of the exercise by declaring a paper and the specific output(s) on which you will focus in the remainder of the exercise;  
2.    [**Assessment**](#assessment), where you will review and describe in detail the available reproduction package, and assess the current level of computational reproducibility of the selected outputs; 
3.    [**Improvement**](#improvements), where you will modify the content and/or the organization of the reproduction package to improve its reproducibility;  
4.    [**Robustness checks**](#robust), where will assess the quality of selected analytical choices from the paper; and  
5.    **Extension** (if applicable), where you may extend the current paper by including new methodologies or data. This step brings the reproduction exercise a step closer to *replication*.


               Figure 2: Steps for reproduction

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


Figure 2 depicts suggested levels of effort for each stage of the exercise depending on the context in which the reproducer is performing a reproduction. This process need not be chronologically linear, e.g., the reproducer may realize that the scope of a reproduction is too ambitious and switch to a less intensive reproduction. Later in the exercise, the reproducer can also begin testing different specifications for robustness while also assessing a paper's level of reproducibility.

## Recording the results of the exercise {-}

You will be asked to record the results of their reproduction progress through each stage. 

At *Stage 1:[Scoping](#scoping)*, complete **[Survey 1](https://berkeley.qualtrics.com/jfe/form/SV_8hLHNI6LGSYchEN)**, where you will declare the paper of choice and the specific output(s) on which you will focus for the remainder of the exercise. This step may also involve writing a brief 1-2 page summary of the paper (confirm this with your instructor). 

At *Stage 2: [Assessment](#assessment)*, you will inspect the paper's reproduction package (raw data, analysis data, and code), connect the output to reproduce with its inputs, and assign a reproducibility score to each output. At *Stage 3: [Improvement](#improvements)*, you will try to improve the reproducibility of the selected outputs by adding missing files and documentation, and will report potential changes in the level of reproducibility. Use **Survey 2** to record your work at Stages 2 and 3.

At *Stage 4: [Robustness Checks](#robust)* you will assess different analytical choices and test possible variations. Use **Survey 3** to record your work at this stage.
