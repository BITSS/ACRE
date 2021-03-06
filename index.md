--- 
title: |
  [![BITSS logo](BITSS_logo_horizontal.png){style="display: block; margin-left: auto;
  margin-right: auto; width: 50%"}](https://www.bitss.org/)  
  Guidelines for Verification of <br> Computational Reproducibility in Economics
author: "ACRE Team"
date: "2020-06-26"
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
always_allow_html: true
link-citations: yes
github-repo: BITSS/ACRE
heading_anchors: true
site: bookdown::bookdown_site
description: "Materials to support the reproduction of published research in economics."
output:
  bookdown::html_document2: default
  bookdown::word_document2:
    toc: true

---
#  {-}


[See a full list of contributors](#contributions)

                    (1)       (2)         (3)        (4)
                  scope --> assess --> improve --> robust
                   ▲         |  |                   ▲
                   |         |  |                   |
                   |_________|  |___________________|

<table>
   <thead>
      <tr>
         <th>[(1) <br> Scoping](#scoping) </th>
         <th>[(2) Assessment](#assessment)</th>
         <th colspan=2>[(3) <br> Improvement](#improvements)</th>
         <th>[(4) Robustness](#robust)</th>
         <th>[(5) Extensions]()</th>
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
         <td>&#9744; [Check Rep. pkg exists](#verify-rep-mat)</td>
         <td>[&#9744; Reproduction score](#score)</td>
         <td>[&#9744; + Analysis code](#ac)</td>
         <td>[&#9744; + Dynamic document](#paper-level)</td>
         <td>[&#9744; Choice value](#id-val)</td>
         <td></td>
      </tr>
      <tr>
         <td>[&#9744;  Read paper](#read-summ)</td>
         <td></td>
         <td>[&#9744; + Cleaning code](#cc)</td>
         <td>[&#9744; + File structure](#paper-level)</td>
         <td>[&#9744; Justify and test alternatives](#test-rob)</td>
         <td></td>
      </tr>
      <tr>
         <td>[&#9744; Declare estimates](#declare-estimates)</td>
         <td></td>
         <td>[&#9744; Debug analysis code](#dac)</td>
         <td></td>
         <td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td></td>
         <td></td>
         <td>[&#9744; Debug cleaning code](#dcc)</td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>[Record results in Survey 1](https://berkeley.qualtrics.com/jfe/form/SV_2bO83uJvU9ZiTXv)</td>
         <th colspan=3>[Record results in Survey 2](https://berkeley.qualtrics.com/jfe/form/SV_2gd9Y3XVtjLpZL7)</th>
         <td>[Record results in Survey 3](ADD LINK)</td>
         <td></td>
      </tr>
   </tbody>
</table>
