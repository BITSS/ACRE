# Introduction {-#intro}

In 2019, the [American Economic Association](https://www.aeaweb.org/journals/policies/data-code/) updated its Data and Code Availability Policy, which now requires that the AEA Data Editor verify the reproducibility of all papers before they are accepted by an AEA journal. In addition to the requirements laid out in the policy, several [specific recommendations](https://aeadataeditor.github.io/aea-de-guidance/) were produced to facilitate compliance. This change in policy is expected to improve the computational reproducibility of all published research going forward, after several studies showed that rates of *computational reproducibility* in economics at large range from somewhat low to  alarmingly low [@galiani2018make; @chang2015economics; @kingi2018reproducibility].

*Replication*, or the process by which a study’s hypotheses and findings are re-examined using different data or different methods (or both) [@King95] is an essential part of the scientific process that allows science to be “self-correcting.” *Computational reproducibility*, or the ability to reproduce the results, tables, and other figures using the available data, code, and materials, is a precondition for replication. Computational reproducibility is assessed through the process of *reproduction*. At the center of this process is the *reproducer* (you!), a party not involved in the production of the original paper. Reproductions sometimes involve the *original author* (whom we refer to as “the author”) in cases where additional guidance and materials are needed to execute the process.

This exercise is designed for reproductions performed in economics graduate courses or undergraduate theses, with the goal of providing a common approach, terminology, and standards for conducting reproductions. The goal of reproduction, in general, is to assess and improve the computational reproducibility of published research in a way that facilitates further robustness checks, extensions, collaborations, and replication.

This exercise is part of the Accelerating Computational Reproducibility in Economics [(ACRE)](https://www.bitss.org/ecosystem/acre/) project led by the Berkeley Initiative for Transparency in the Social Sciences [(BITSS)](bitss.org) and Prof. Lars Vilhuber, Data Editor for the journals of the American Economic Association (AEA). ACRE looks to assess, enable, and improve the computational reproducibility of published economics research.

## Beyond binary judgments {-}

Assessments of reproducibility can easily gravitate towards binary assessments that declare an entire paper "reproducible" or "non-reproducible." These guidelines suggest a more nuanced approach by highlighting two reasons that make binary judgments less relevant. 

First, a paper may contain several scientific claims (or major hypothesis) that may vary in computational reproducibility. Each claim is tested using different methodologies, where results are presented in one or more display items (outputs like table and figures). Each display item will itself contain several specifications. Figure \@ref(fig:diagram) illustrates this idea. 

<div class="figure">
<!--html_preserve--><div id="htmlwidget-b1e8ffa1d51c07bb2809" style="width:672px;height:480px;" class="grViz html-widget"></div>
<script type="application/json" data-for="htmlwidget-b1e8ffa1d51c07bb2809">{"x":{"diagram":"\ndigraph a_nice_graph {\n\ngraph [layout = neato, rankdir= TB, overlap=true]  ## layout = [neato|twopi, etc]\n#https://rich-iannone.github.io/DiagrammeR/graphviz_and_mermaid.html\n\n\n# node definitions with substituted label text\nnode [fontname = Helvetica, shape = box, style=empty ]\npaper [label = \"Paper\"]    ## label indicates the position of the letter\n\nnode [fontname = Helvetica, shape = diamond, fontsize = 10, fixedsize = TRUE, fillcolor=Gray]\nclaim1 [label = \"Claim 1\", color=red]\nclaim2 [label = \"Claim 2\"]\nclaim3 [label = \"Claim 3\"]\n\nnode [fontname = Helvetica, shape = circle, fillcolor=YellowGreen, fixedsize = TRUE]\noutput1 [label = \"DI 1\", color = red]\noutput2 [label = \"DI 2\"]\noutput3 [label = \"DI 3\"]\noutput4 [label = \"DI 4\"]\noutput5 [label = \"DI 5\"]\noutput6 [label = \"DI 6\"]\n\nnode [fontname = Helvetica, shape = circle, fixedsize = TRUE, fillcolor=Peru]\nspec1 [label = \"S 1\", color=red]\nspec2 [label = \"S 2\"]\nspec3 [label = \"S 3\"]\nspec4 [label = \"S 4\"]\nspec5 [label = \"S 5\"]\nspec6 [label = \"S 6\"]\nspec7 [label = \"S 7\"]\nspec8 [label = \"S 8\"]\nspec9 [label = \"S 9\"]\nspec10 [label = \"S 10\"]\nspec11 [label = \"S 10\"]\nspec12 [label = \"S 10\"]\n\n\n# edge definitions with the node IDs\npaper -> {claim1} [color=red]      ##[label = ...] adds text on the edge\npaper -> {claim2 claim3} \nclaim1 -> {output1} [color=red]\nclaim1 -> {output2} \nclaim2 -> {output3 output4}\nclaim3 -> {output5 output6}\noutput1 -> {spec1} [color=red]\noutput1 -> {spec2} \noutput2 -> {spec3 spec4}\noutput3 -> {spec5 spec6}\noutput4 -> {spec7 spec8}\noutput5 -> {spec9 spec10}\noutput6 -> {spec11 spec12}\n}","config":{"engine":"dot","options":null}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->
<p class="caption">(\#fig:diagram)One paper has multiple components to reproduce. <br> DI: Display Item, S: Specification </p>
</div>

Second, for a given specification there are several levels of reproducibility, ranging from the absence of any materials to complete reproducibility starting from raw data. And even for a specific claim-specification, distinguishing the appropriate level can be far more constructive than simply labeling it as (ir)reproducible.

Note that the highest level of reproducibility, which requires complete reproducibility starting from raw data, is very demanding to achieve and should not be expected of all published research -- especially before 2019. Instead, this level can serve as an aspiration as the field of economics at large seeks to improve the reproducibility of research and facilitate the transmission of knowledge throughout the scientific community.


## Stages of the exercise {-}

This reproduction exercise is divided into four stages, corresponding to the first four chapters of these guidelines, with a fifth optional stage:   

1. [**Scoping**](#scoping), where you (the reproducer) will define the scope of the exercise by declaring a paper and the specific output(s) on which you will focus in the remainder of the exercise;  
2.    [**Assessment**](#assessment), where you will review and describe in detail the available reproduction package, and assess the current level of computational reproducibility of the selected outputs; 
3.    [**Improvement**](#improvements), where you will modify the content and/or the organization of the reproduction package to improve its reproducibility;  
4.    [**Robustness checks**](#robust), where you will assess the quality of selected analytical choices; and  
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
          - Undergrad
            thesis:    10%       30%       40%         20%         0%


Figure 2 depicts suggested levels of effort for each stage of the exercise depending on the context in which you are performing a reproduction. This process need not be chronologically linear. For example, you may realize that the scope of a reproduction is too ambitious and switch to a less intensive one. Later in the exercise, you can also begin testing different specifications for robustness while also assessing a paper's level of reproducibility.

## Recording the results of the exercise {-}

You will be asked to record the results of their reproduction progress through each stage. 

In *Stage 1: [Scoping](#scoping)*, complete **[Survey 1](https://berkeley.qualtrics.com/jfe/form/SV_2bO83uJvU9ZiTXv)**, where you will declare your paper of choice and the specific display item(s) and specifications on which you will focus for the remainder of the exercise. This step may also involve writing a brief 1-2 page summary of the paper (confirm this with your instructor). 

In *Stage 2: [Assessment](#assessment)*, you will inspect the paper's reproduction package (raw data, analysis data, and code), connect the display item to be reproduced with its inputs, and assign a reproducibility score to each output.

In *Stage 3: [Improvement](#improvements)*, you will try to improve the reproducibility of the selected outputs by adding missing files, documentation, and report any potential changes in the level of reproducibility. Use **Survey 2** to record your work at Stages 2 and 3 (you will receive access instructions for Survey 2 when you submit Survey 1).

In *Stage 4: [Robustness Checks](#robust)*, you will assess different analytical choices and test possible variations. Use **Survey 3** to record your work at this stage.

## Reproduction Strategies {-}

Generally, a reproduction will begin with a thorough reading of the study being reproduced. However, subsequent steps may follow from a *reproduction strategy*. For example, a reproduction may closely follow the order of the steps outlined above, with the reproducer first choosing a set of results they are interested in assessing or understanding the production of, completely reproducing these results to the extent possible, and then making modifications to the reproduction package. Another potential strategy may be for the reproducer to develop potential robustness checks or extensions while reading the study, which leads to the definition of a set of results to be assessed via reproduction. Yet another reproduction strategy may be for the reproducer to seek out a paper that uses a particularly data set they have access to or are interested in using and reproduce the all of the results that use that data set as an input, then probe the robustness of the results to various data cleaning decisions.

The many potential uses of reproduction to various ends makes the number of potential reproduction strategies very large. In choosing or designing a reproduction strategy, it is helpful to clearly identify the goal of the reproduction. In all of the examples in the above paragraph, the order in which the steps of the reproduction exercise are taken is at least partially determined by what the reproducer hopes to get from the exercise. The structure provided in these guidelines, together with a clear reproduction goal, can facilitate the implementation of an efficient reproduction strategy.

