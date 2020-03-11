--- 
title: "Guidelines for Computational Reproducibility in Economics"
author: "ACRE Team"
date: "2020-03-11"
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
github-repo: BITSS/ACRE
site: bookdown::bookdown_site
description: "Materials to support the reproduction of published research in economics."
output:
  bookdown::html_document2: default
  bookdown::word_document2:
    toc: true
---
 
 
#  {-}

                    (1)       (2)         (3)        (4)        (5)
                  scope --> assess --> improve --> robust --> extend
                   ▲         |  |                   ▲
                   |         |  |                   |
                   |_________|  |___________________|

<table>
   <thead>
      <tr>
         <th>[Scoping](#scoping) </th>
         <th>[Assessment](#assessment)</th>
         <th colspan=2>[Improvement](#improvements)</th>
         <th>[Robustness](#robust)</th>
         <th>Extensions</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td></td>
         <td></td>
         <td>[Outcome-level](#improvements)</td>
         <td>[Paper-level](#paper-level)</td>
      </tr>
      <tr>
         <td>&#9744; Select paper</td>
         <td>[&#9744; Describe inputs](#describe-inputs)</td>
         <td>[&#9744; + Raw data](#rd)</td>
         <td>[&#9744; + Version control](#paper-level)</td>
         <td>[&#9744; Analytical choices](#id-analy)</td>
         <td>&#9744; New method</td>
      </tr>
      <tr>
         <td>[&#9744; Check ACRE](#check-acre)</td>
         <td>[&#9744; Reproduction diagrams](#diagram)</td>
         <td>[&#9744; + Analysis data](#ad)</td>
         <td>[&#9744; + Documentation](#paper-level)</td>
         <td>[&#9744; Type of choice](#id-type)</td>
         <td>&#9744; New data</td>
      </tr>
      <tr>
         <td>&#9744; [Search for rep. mat.](#verify-rep-mat)</td>
         <td>[&#9744; Reproduction score](#score)</td>
         <td>[&#9744; + Analysis code](#ac)</td>
         <td>[&#9744; + Dynamic document](#paper-level)</td>
         <td>[&#9744; Choice value](#id-val)</td>
         <td>&#9744; New data</td>
      </tr>
      <tr>
         <td>[&#9744;  Read and summ.](#read-summ)</td>
         <td></td>
         <td>[&#9744; Debug analysis code](#dac)</td>
         <td>[&#9744; + File structure](#paper-level)</td>
         <td>[&#9744; Justify and test alternatives](#test-rob)</td>
         <td></td>
      </tr>
      <tr>
         <td>[&#9744; Output(s)](#outputs)</td>
         <td></td>
         <td>[&#9744; Debug cleaning code](#dcc)</td>
         <td></td>
         <td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>[&#9744; Depth](#intensive)</td>
         <td></td>
         <td>[&#9744; Debug cleaning code](#dcc)</td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>[Record results is Survey 1](https://berkeley.qualtrics.com/jfe/form/SV_3UWe5xu3qjeh0c5)</td>
         <th colspan=3>[Record results is Survey 2](https://berkeley.qualtrics.com/jfe/form/SV_2gd9Y3XVtjLpZL7)</th>
         <td>[Record results is Survey 3](ADD LINK)</td>
         <td></td>
      </tr>
   </tbody>
</table>
