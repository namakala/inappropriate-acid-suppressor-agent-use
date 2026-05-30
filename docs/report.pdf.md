---
title: "Meta-Analysis Interim Report"
format:
  pdf:
    keep-md: true
metadata-files:
  - _knitr-bib.yml
---


::: {.cell}

:::

::: {.cell}

:::



# Executive Summary

Inappropriate use of acid suppressing agents was highly prevalent, affecting approximately seven in ten prescriptions globally. Extremely high heterogeneity was observed across all analyses, indicating considerable variation by population, setting, geography, and definitional criteria. Pooled prevalence estimates were robust to adjustment for potential publication bias. Variation in guideline definitions emerged as a key driver of heterogeneity across studies.

**Call to Actions:**

- Clinical Practice: There is a substantial and persistent overuse or misuse of acid suppressing agents across settings and regions.
- Policy: Standardized definitions of appropriateness are needed to improve comparability across studies and to guide deprescribing initiatives.
- Research: Future studies should clearly define guideline criteria and report context-specific drivers of inappropriate prescribing.
- Quality Improvement: Interventions targeting prescribing behavior are warranted, particularly in high-prevalence settings.

\pagebreak

# Methods

## Data Processing and Variable Standardization

Raw data were cleaned by harmonizing of study level variables and standardizing the outcome measures across all included studies. The prevalence of inappropriate use of acid suppressing agents was calculated as the proportion of participants within each study who met criteria for inappropriate use relative to the total study specific sample size.  To support statistical modeling, prevalence estimates were logit transformed, and corresponding sampling variances were computed for each study.  Geographic region was classified as North America, Asia, Europe, or Other. Clinical setting was dichotomized as hospital setting versus other settings. Guideline adherence was categorized as studies that explicitly followed defined clinical guidelines versus those that did not specify guideline use.

## Pooled Prevalence Estimation

A generalized linear mixed model (GLMM) with a logit link was used to pool prevalence estimates. This one-step approach models the number of inappropriate prescriptions directly using the binomial likelihood, fully accounting for the binomial data structure and between-study heterogeneity. Between-study variance $\tau^2$ was estimated via restricted maximum likelihood. A 95% prediction interval was calculated to estimate the expected range of prevalence in future studies with similar characteristics.

## Assessment of Heterogeneity

Statistical heterogeneity was evaluated using $I^2$, $\tau^2$, H statistics, and Wald's Q test. Given the high heterogeneity observed, potential sources of variability were explored through subgroup analyses and meta regression.  Subgroup analyses were conducted for categorical variables, including age group, continent, clinical setting, methodological quality according to JBI classification, and guideline use. Separate random effects models were fitted within each subgroup.  Univariable and multivariable meta regression analyses were also performed to further explore the potential source of heterogeneity. These models examined the association between study level covariates, including publication year and sample size, and the logit transformed prevalence of inappropriate use.

## Publication Bias and Sensitivity Analysis

Contour enhanced funnel plots were generated to assess potential small study effects and publication bias. To further evaluate and adjust for potential selection bias, the Copas selection model was applied. This approach models the probability of study inclusion as a function of effect size and statistical significance, allowing adjustment of pooled estimates under varying selection assumptions. Copas modeling was conducted for the overall dataset and within predefined subgroups.

To assess the robustness of the pooled prevalence to modeling choices, the primary GLMM result was compared against two alternative approaches: an inverse-variance logit model with REML and Hartung-Knapp adjustment, and a Freeman-Tukey double arcsine model with REML and Hartung-Knapp adjustment.


## Software and Reproducibility

All analyses were conducted in `R` version 4.5.2. The computational workflow was managed using the `targets` and `tarchetypes` packages to ensure full reproducibility and traceability of all analytical steps. Parallel processing was implemented with the `crew` package to optimize execution of iterative subgroup and meta regression models.

# Results



::: {.cell}

:::



## Overall Prevalence of Inappropriate Use

This meta-analysis included 141 studies comprising 1,501,367 participants. Across these studies, 964,364 instances of inappropriate use of acid suppressing agents were identified. Using a random effects model, the pooled prevalence of inappropriate use was 53.44% [49.41-57.42%].

## Heterogeneity



::: {.cell}

:::



Substantial between study heterogeneity was observed. The $I^2$ statistic was 99.85%, $\tau^2$ was 0.925, H was 26.01, and Wald's Q was 94,691.92, 102,289.2. The extremely high $I^2$ value indicates that nearly all observed variability in prevalence estimates was attributable to true differences across studies rather than sampling error. Reported prevalence estimates varied widely, confirming marked heterogeneity and suggesting that inappropriate use is strongly influenced by contextual and study level factors.

## Publication Bias and Small Study Effects

Visual inspection of Doi plots suggested asymmetry in some models. Copas selection modeling was conducted to evaluate and adjust for potential publication bias. The Copas adjusted estimate for the overall dataset was essentially identical to the unadjusted pooled estimate, and no meaningful change in prevalence was observed after adjustment. Tests for residual selection bias were generally non significant. These findings indicate that although small study effects may be present, publication bias is unlikely to materially influence the overall pooled prevalence.

## Subgroup Analyses

## Age

Across age strata, the pooled prevalence of inappropriate use remained high, with estimates exceeding 80% in several subgroups. Heterogeneity remained substantial within these strata, with $I^2$ values exceeding 99%. In some age groups, Copas modeling suggested possible small study effects; however, adjusted and unadjusted estimates were not significantly different.

## Continent

Pooled prevalence estimates varied across continents, suggesting geographic variation in prescribing practices and implementation of guidelines. Nevertheless, heterogeneity persisted within continental subgroups, indicating that geographic location alone did not fully account for the observed variability.

## Study Quality

When stratified according to methodological quality using JBI classification, pooled prevalence estimates differed modestly between quality strata. However, inappropriate use remained consistently high across all levels of study quality. Adjustment for potential selection bias did not substantially alter subgroup specific estimates.

## Clinical Setting

Differences in pooled prevalence were observed between inpatient and outpatient settings, with some settings demonstrating higher rates of inappropriate use. Even in the subgroup with the lowest prevalence, inappropriate prescribing remained common.

## Meta Regression

Although certain moderators were associated with differences in pooled prevalence, substantial residual heterogeneity remained. No single factor adequately accounted for the extreme variability observed across studies.

\pagebreak

# Appendix

## Interpretation Notes

- When funnel plot seemed asymmetrical, doi plot was preferred to avoid subjective selection.
- Copas model selection was performed as a sensitivity analysis to detect and adjust for publication bias.
- Further reading list:
  - [Empirical evaluation suggests Copas selection model preferable to trim-and-fill method for selection bias in meta-analysis](https://www.sciencedirect.com/science/article/abs/pii/S0895435609002236)
  - [Empirical evaluation showed that the Copas selection model provided a useful summary in 80% of meta-analyses](https://www.jclinepi.com/article/S0895-4356(08)00348-X/abstract)
  - [Detecting small-study effects and funnel plot asymmetry in meta-analysis of survival data: A comparison of new and existing tests](https://onlinelibrary.wiley.com/doi/full/10.1002/jrsm.1266)
  - [A sensitivity analysis for publication bias in systematic reviews](https://www.researchgate.net/profile/Jian-Shi-41/publication/11852731_A_sensitivity_analysis_for_publication_bias_in_systematic_reviews/links/00b7d53aa9d6b6ba26000000/A-sensitivity-analysis-for-publication-bias-in-systematic-reviews.pdf)
  - [Examining and Interpreting Doi Plot Asymmetry in Meta‐Analyses of Randomized Controlled Trials](https://www.researchgate.net/publication/395029107_Examining_and_Interpreting_Doi_Plot_Asymmetry_in_Meta-Analyses_of_Randomized_Controlled_Trials)

\pagebreak

## Meta-analysis on the whole dataset



**Random effects model: 0.534 [0.494, 0.574]**  
Number of studies: 141  
Number of observations: 1,501,367  
Number of events: 964,364  

Heterogeneity measures:

- $\tau^2$: 0.925
- $I^2$: 99.85%
- $H$: 26.01
- Wald's $Q$: 94,691.92

![](report_files/figure-pdf/meta-summary-1.pdf){width=100%}

::: {.cell}
::: {.cell-output-display}
![](report_files/figure-pdf/meta-summary-doi-1.pdf){width=100%}
:::
:::

::: {.cell}
::: {.cell-output-display}
![](report_files/figure-pdf/meta-summary-copas-1.pdf){width=100%}
:::

::: {.cell-output .cell-output-stdout}

```
| Copas selection model analysis
| 
|               p.publ PLOGIT            95%-CI  tau^2    tau  p.trt  p.rsb  N
|               1.0000 0.1359 [-0.0229; 0.2947] 0.8931 0.9450 0.0935 0.6896  0
|               0.9726 0.1250 [-0.0412; 0.2913] 0.8936 0.9453 0.1405 0.7607  4
|               0.9572 0.1201 [-0.0498; 0.2899] 0.8935 0.9452 0.1660 0.7946  6
|               0.9402 0.1150 [-0.0592; 0.2893] 0.8934 0.9452 0.1957 0.8313  8
|               0.9213 0.1100 [-0.0697; 0.2897] 0.8932 0.9451 0.2302 0.8643 11
|               0.9002 0.1050 [-0.0816; 0.2916] 0.8931 0.9450 0.2701 0.9040 15
|               0.8760 0.1000 [-0.0958; 0.2957] 0.8929 0.9449 0.3168 0.9478 19
|               0.8464 0.0949 [-0.1135; 0.3034] 0.8927 0.9449 0.3721 1.0000 24
|               0.8068 0.0899 [-0.1373; 0.3171] 0.8926 0.9448 0.4380 1.0000 32
|               0.7385 0.0849 [-0.1730; 0.3428] 0.8926 0.9448 0.5188 1.0000 47
|                                                                             
|    Adjusted estimate 0.1359 [-0.0229; 0.2947] 0.8931 0.9450 0.0935 0.6896  0
|  Unadjusted estimate 0.1378 [-0.0236; 0.2992] 0.9254 0.9620                 
| 
| Significance level for test of residual selection bias: 0.1 
| 
|                        min   max
|  range of gamma0:  -0.2542 2.000
|  range of gamma1:   0.0000 0.003
| 
| Largest standard error (SE): 0.7201 
| 
| Range of probability publishing trial with largest SE:
|     min    max
|  0.3997 0.9775
| 
| Calculation of orthogonal line:
| 
|  level nobs adj.r.square      slope  se.slope
|  0.085   21    0.9989336  -34.25802 0.2502814
|  0.090   20    0.9993179  -63.69890 0.3817928
|  0.095   20    0.9996433  -77.92256 0.3376972
|  0.100   21    0.9998986  -91.65278 0.2063942
|  0.105   21    0.9997526 -101.79364 0.3580700
|  0.110   20    0.9995896 -107.03563 0.4975371
|  0.115   20    0.9998083 -114.72499 0.3644516
|  0.120   20    0.9999791 -126.07525 0.1323843
|  0.125   20    0.9998748 -125.87033 0.3231132
| 
|  Legend:
|  p.publ - Probability of publishing study with largest SE
|  p.trt  - P-value for test of overall treatment effect
|  p.rsb  - P-value for test of residual selection bias
|  N      - Estimated number of unpublished studies
```


:::
:::



## Sensitivity analysis on the whole dataset




|Model                     |   k|       N| Prevalence (95% CI)| $\tau^2$| $I^2$|       95% PI| $\Delta$ Prev (pp)|
|:-------------------------|---:|-------:|-------------------:|--------:|-----:|------------:|------------------:|
|GLMM + logit (primary)    | 141| 1501367|   53.4 [49.4, 57.4]|    0.925| 99.9%| [14.5, 88.6]|                  —|
|Inverse logit (REML + HK) | 141| 1501367|   53.4 [49.3, 57.4]|    0.900| 99.9%| [14.8, 88.3]|               -0.0|
|Freeman-Tukey (REML + HK) | 141| 1501367|   53.2 [49.5, 56.9]|    0.047| 99.9%| [14.0, 90.2]|               -0.2|



\pagebreak

## Subgroup meta-analysis




## Model: `mod_subgroup_Age`

**Subgroup-specific results:**

- **<65**: 54.8% [47.7%, 61.6%]  (k = 42, τ² = 0.846, I² = 96.6%)
- **>=65**: 52.0% [42.6%, 61.3%]  (k = 29, τ² = 1.041, I² = 99.2%)


![](report_files/figure-pdf/subgroup-summary-1.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ PLOGIT            95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.1968 [-0.0804; 0.4740] 0.8054 0.8974   0.1640 0.0271  0
              0.8570 0.2500 [ 0.0169; 0.4831] 0.7819 0.8843   0.0356 0.0509  6
              0.7232 0.2999 [ 0.1628; 0.4370] 0.7694 0.8771 < 0.0001 0.0810 14
              0.6068 0.3497 [ 0.2127; 0.4868] 0.7614 0.8726 < 0.0001 0.1205 23
              0.5075 0.3997 [ 0.2626; 0.5368] 0.7564 0.8697 < 0.0001 0.1700 35
              0.4238 0.4498 [-0.1967; 1.0962] 0.7535 0.8681   0.1727 0.2289 49
                                                                              
   Adjusted estimate 0.3497 [ 0.2127; 0.4868] 0.7614 0.8726 < 0.0001 0.1205 23
 Unadjusted estimate 0.1912 [-0.0922; 0.4747] 0.8464 0.9200                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2791 2.0000
 range of gamma1:   0.0000 0.0173

Largest standard error (SE): 0.5948 

Range of probability publishing trial with largest SE:
    min    max
 0.3901 0.9788

Calculation of orthogonal line:

 level nobs adj.r.square     slope   se.slope
  0.25   21    0.9999169 -22.54180 0.04594589
  0.30   20    0.9999265 -22.11192 0.04349664
  0.35   21    0.9998822 -22.24043 0.05397409
  0.40   21    0.9999627 -21.95926 0.02997235
  0.45   21    0.9997503 -21.69233 0.07665670

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ  PLOGIT             95%-CI  tau^2    tau  p.trt  p.rsb  N
              1.0000  0.0683 [-0.2985;  0.4351] 0.9747 0.9873 0.7152 0.0887  0
              0.9585  0.0501 [-0.3080;  0.4081] 0.9558 0.9776 0.7841 0.1132  1
              0.8238 -0.0000 [-0.3333;  0.3333] 0.9297 0.9642 0.9999 0.1803  5
              0.6974 -0.0498 [-0.3377;  0.2382] 0.9173 0.9578 0.7347 0.2581 10
              0.5855 -0.1000 [-0.2174;  0.0174] 0.9119 0.9550 0.0950 0.3474 17
              0.4903 -0.1500 [-0.2674; -0.0326] 0.9111 0.9545 0.0123 0.4441 25
              0.4103 -0.1998 [-1.0472;  0.6476] 0.9134 0.9557 0.6441 0.5428 35
                                                                              
   Adjusted estimate  0.0501 [-0.3080;  0.4081] 0.9558 0.9776 0.7841 0.1132  1
 Unadjusted estimate  0.0810 [-0.2965;  0.4586] 1.0406 1.0201                 

Significance level for test of residual selection bias: 0.1 

                       min   max
 range of gamma0:  -0.2709 2.000
 range of gamma1:   0.0000 0.015

Largest standard error (SE): 0.7201 

Range of probability publishing trial with largest SE:
    min    max
 0.3933 0.9784

Calculation of orthogonal line:

 level nobs adj.r.square     slope   se.slope
 -0.20   20    0.9999936 -25.03424 0.01454090
 -0.15   21    0.9999199 -24.80643 0.04964491
 -0.10   21    0.9999232 -25.13022 0.04925849
 -0.05   21    0.9998718 -26.63756 0.06744382
  0.00   21    0.9997800 -26.45604 0.08774692
  0.05   21    0.9982986 -29.96244 0.27657858

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```


**Sensitivity Analysis**



|Model                     |  k|     N| Prevalence (95% CI)| $\tau^2$| $I^2$|       95% PI| $\Delta$ Prev (pp)|
|:-------------------------|--:|-----:|-------------------:|--------:|-----:|------------:|------------------:|
|GLMM + logit (primary)    | 71| 81391|   53.6 [47.9, 59.2]|    0.930| 98.7%| [14.3, 88.9]|                  —|
|Inverse logit (REML + HK) | 71| 81391|   53.6 [47.7, 59.3]|    0.896| 98.7%| [14.7, 88.5]|               -0.1|
|Freeman-Tukey (REML + HK) | 71| 81391|   53.2 [48.0, 58.5]|    0.047| 99.0%| [13.6, 90.6]|               -0.4|


\pagebreak
## Model: `mod_subgroup_Continent`

**Subgroup-specific results:**

- **North America**: 52.2% [44.4%, 59.9%]  (k = 42, τ² = 1.040, I² = 99.9%)
- **Asia**: 53.9% [46.6%, 61.0%]  (k = 41, τ² = 0.872, I² = 99.1%)
- **Europe**: 56.9% [50.0%, 63.6%]  (k = 43, τ² = 0.850, I² = 99.5%)
- **Other**: 45.5% [34.4%, 57.2%]  (k = 15, τ² = 0.806, I² = 94.7%)


![](report_files/figure-pdf/subgroup-summary-2.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ  PLOGIT            95%-CI  tau^2    tau  p.trt  p.rsb  N
              1.0000  0.1433 [-0.1393; 0.4260] 0.8191 0.9050 0.3203 0.0038  0
              0.9334  0.1200 [-0.1526; 0.3926] 0.7966 0.8925 0.3882 0.0062  2
              0.8700  0.1000 [-0.1644; 0.3644] 0.7839 0.8854 0.4583 0.0086  4
              0.8079  0.0801 [-0.1751; 0.3352] 0.7739 0.8797 0.5386 0.0117  7
              0.7485  0.0600 [-0.1839; 0.3040] 0.7657 0.8751 0.6295 0.0155 10
              0.6926  0.0401 [-0.1897; 0.2698] 0.7588 0.8711 0.7325 0.0201 13
              0.6401  0.0200 [-0.1906; 0.2307] 0.7529 0.8677 0.8521 0.0256 17
              0.5913  0.0000 [-0.1833; 0.1834] 0.7479 0.8648 0.9997 0.0323 21
              0.5460 -0.0200 [-0.1588; 0.1189] 0.7435 0.8623 0.7782 0.0402 25
              0.5041 -0.0399 [-0.1788; 0.0990] 0.7397 0.8601 0.5731 0.0496 30
              0.4653 -0.0599 [-0.1988; 0.0790] 0.7364 0.8581 0.3979 0.0605 35
              0.4293 -0.0799 [-0.2188; 0.0590] 0.7335 0.8565 0.2595 0.0731 41
                                                                             
   Adjusted estimate                                                         
 Unadjusted estimate  0.1548 [-0.1358; 0.4454] 0.8718 0.9337                 

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2904 2.0000
 range of gamma1:   0.0000 0.0291

Largest standard error (SE): 0.7201 

Range of probability publishing trial with largest SE:
    min    max
 0.3857 0.9793

Calculation of orthogonal line:

 level nobs adj.r.square     slope   se.slope
 -0.14    2 -100.0000000 -11.41804        NaN
 -0.12   10    0.9999761 -11.84017 0.01929765
 -0.10   19    0.9999137 -12.17936 0.02667540
 -0.08   22    0.9999001 -12.28905 0.02680784
 -0.06   21    0.9998197 -12.33418 0.03703429
 -0.04   21    0.9998303 -12.39245 0.03610414
 -0.02   22    0.9998746 -12.46593 0.03046116
  0.00   22    0.9998761 -12.56153 0.03051107
  0.02   22    0.9998379 -12.68033 0.03523133
  0.04   21    0.9996977 -12.83804 0.04991527
  0.06   22    0.9998251 -13.03186 0.03760696
  0.08   21    0.9995457 -13.25419 0.06318095
  0.10   21    0.9994325 -13.58047 0.07236118
  0.12   21    0.9993144 -14.10460 0.08261059

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ PLOGIT            95%-CI  tau^2    tau  p.trt  p.rsb  N
              1.0000 0.0880 [-0.2229; 0.3988] 1.0211 1.0105 0.5791 0.3553  0
              0.9716 0.1000 [-0.3369; 0.5368] 1.0195 1.0097 0.6538 0.3746  1
              0.9175 0.1199 [-1.2380; 1.4778] 1.0170 1.0085 0.8626 0.4092  4
              0.8628 0.1399 [-1.2180; 1.4977] 1.0147 1.0073 0.8400 0.4458  6
              0.8099 0.1598 [-1.1981; 1.5177] 1.0126 1.0063 0.8176 0.4841  9
              0.7587 0.1800 [-1.9957; 2.3557] 1.0108 1.0054 0.8712 0.5243 12
              0.7110 0.1998 [-0.9349; 1.3346] 1.0092 1.0046 0.7300 0.5649 16
              0.6658 0.2198 [-0.6670; 1.1066] 1.0078 1.0039 0.6272 0.6063 20
              0.6231 0.2398 [-0.5294; 1.0089] 1.0066 1.0033 0.5412 0.6477 24
              0.5828 0.2599 [-0.4398; 0.9595] 1.0057 1.0028 0.4666 0.6885 28
              0.5451 0.2799 [-0.3738; 0.9337] 1.0050 1.0025 0.4013 0.7270 33
              0.5102 0.2997 [-0.3219; 0.9214] 1.0045 1.0023 0.3447 0.7610 38
              0.4711 0.3236 [-0.2697; 0.9169] 1.0043 1.0021 0.2851 0.7929 44
                                                                            
   Adjusted estimate 0.0880 [-0.2229; 0.3988] 1.0211 1.0105 0.5791 0.3553  0
 Unadjusted estimate 0.0875 [-0.2260; 0.4010] 1.0400 1.0198                 

Significance level for test of residual selection bias: 0.1 

                       min   max
 range of gamma0:  -0.2586 2.000
 range of gamma1:   0.0000 0.003

Largest standard error (SE): 0.3536 

Range of probability publishing trial with largest SE:
    min    max
 0.3980 0.9777

Calculation of orthogonal line:

 level nobs adj.r.square      slope   se.slope
  0.10   20    0.9999887 -120.47228 0.09307744
  0.12   20    0.9999847 -134.56987 0.12067724
  0.14   20    0.9999866 -124.22716 0.10427308
  0.16   20    0.9999863 -127.18167 0.10799215
  0.18   20    0.9999867 -119.66275 0.10001687
  0.20   20    0.9999818 -131.15802 0.12834725
  0.22   20    0.9999887 -129.63928 0.09995668
  0.24   20    0.9999877 -129.74839 0.10429659
  0.26   21    0.9999662 -130.84157 0.17010846
  0.28   20    0.9999894 -120.90026 0.09011321
  0.30   20    0.9999895 -123.98727 0.09237366
  0.32   20    0.9999935  -95.18974 0.05577930
  0.34   12    0.9999971  -29.66569 0.01521384

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[3]]
Copas selection model analysis

              p.publ PLOGIT            95%-CI  tau^2    tau  p.trt  p.rsb  N
              1.0000 0.2756 [-0.0019; 0.5532] 0.8381 0.9155 0.0516 0.1984  0
              0.9513 0.2600 [ 0.0060; 0.5139] 0.8339 0.9132 0.0448 0.2222  2
              0.8833 0.2400 [ 0.0094; 0.4706] 0.8295 0.9108 0.0413 0.2545  5
              0.8175 0.2201 [ 0.0168; 0.4235] 0.8257 0.9087 0.0339 0.2893  8
              0.7546 0.2000 [ 0.0349; 0.3651] 0.8223 0.9068 0.0176 0.3274 12
              0.6968 0.1802 [ 0.0810; 0.2794] 0.8193 0.9052 0.0004 0.3679 16
              0.6422 0.1601 [ 0.0609; 0.2593] 0.8166 0.9037 0.0016 0.4119 21
              0.5917 0.1400 [ 0.0408; 0.2392] 0.8142 0.9023 0.0057 0.4587 26
              0.5453 0.1200 [ 0.0208; 0.2193] 0.8121 0.9012 0.0177 0.5081 31
              0.5026 0.1001 [ 0.0009; 0.1994] 0.8103 0.9002 0.0480 0.5598 37
              0.4633 0.0802 [-0.0190; 0.1795] 0.8088 0.8993 0.1130 0.6140 43
              0.4269 0.0603 [-0.0390; 0.1595] 0.8076 0.8987 0.2340 0.6705 50
                                                                            
   Adjusted estimate 0.2756 [-0.0019; 0.5532] 0.8381 0.9155 0.0516 0.1984  0
 Unadjusted estimate 0.2781 [-0.0014; 0.5575] 0.8503 0.9221                 

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2856 2.0000
 range of gamma1:   0.0000 0.0098

Largest standard error (SE): 0.275 

Range of probability publishing trial with largest SE:
    min    max
 0.3876 0.9791

Calculation of orthogonal line:

 level nobs adj.r.square     slope    se.slope
  0.04   14    0.9999995 -31.83873 0.006181450
  0.06   21    0.9998436 -33.67649 0.094187322
  0.08   20    0.9999992 -33.32630 0.006806289
  0.10   20    0.9999994 -32.82723 0.005655556
  0.12   20    0.9999996 -32.51894 0.004697994
  0.14   21    0.9999998 -32.49048 0.002984127
  0.16   20    0.9999997 -32.86713 0.004200397
  0.18   20    0.9999992 -33.87417 0.006748963
  0.20   21    0.9991283 -32.87777 0.217144690
  0.22   21    0.9991909 -34.40426 0.218909690
  0.24   21    0.9999914 -32.61753 0.021447278
  0.26   21    0.9989742 -32.85491 0.235416362

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[4]]
Copas selection model analysis

              p.publ  PLOGIT            95%-CI  tau^2    tau  p.trt  p.rsb  N
              1.0000 -0.1604 [-0.6093; 0.2885] 0.7331 0.8562 0.4836 0.0116  0
              0.9776 -0.1500 [-0.5894; 0.2893] 0.7124 0.8441 0.5034 0.0133  0
              0.8425 -0.0999 [-0.5085; 0.3087] 0.6524 0.8077 0.6319 0.0229  1
              0.7139 -0.0499 [-0.4313; 0.3314] 0.6154 0.7845 0.7975 0.0364  3
              0.6010  0.0000 [-0.3490; 0.3490] 0.5899 0.7680 0.9999 0.0550  6
              0.5044  0.0499 [-0.2514; 0.3513] 0.5716 0.7560 0.7452 0.0801  9
              0.4227  0.0999 [-0.1077; 0.3075] 0.5584 0.7472 0.3455 0.1128 12
                                                                             
   Adjusted estimate  0.0999 [-0.1077; 0.3075] 0.5584 0.7472 0.3455 0.1128 12
 Unadjusted estimate -0.1792 [-0.6465; 0.2880] 0.8062 0.8979                 

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.4039 2.0000
 range of gamma1:   0.0000 0.0916

Largest standard error (SE): 0.5948 

Range of probability publishing trial with largest SE:
    min    max
 0.3431 0.9844

Calculation of orthogonal line:

 level nobs adj.r.square     slope   se.slope
 -0.15   11    0.9996618 -7.634024 0.04440205
 -0.10   23    0.9994351 -6.103796 0.03093679
 -0.05   23    0.9996176 -5.731090 0.02389679
  0.00   24    0.9997897 -5.499901 0.01663083
  0.05   24    0.9998352 -5.337818 0.01428872
  0.10   23    0.9998462 -5.216485 0.01379528
  0.15   15    0.9999414 -5.053058 0.01033545
  0.20    8    0.9999359 -4.928528 0.01491195

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```


**Sensitivity Analysis**



|Model                     |   k|       N| Prevalence (95% CI)| $\tau^2$| $I^2$|       95% PI| $\Delta$ Prev (pp)|
|:-------------------------|---:|-------:|-------------------:|--------:|-----:|------------:|------------------:|
|GLMM + logit (primary)    | 141| 1501367|   53.4 [49.4, 57.4]|    0.925| 99.9%| [14.5, 88.6]|                  —|
|Inverse logit (REML + HK) | 141| 1501367|   53.4 [49.3, 57.4]|    0.900| 99.9%| [14.8, 88.3]|               -0.0|
|Freeman-Tukey (REML + HK) | 141| 1501367|   53.2 [49.5, 56.9]|    0.047| 99.9%| [14.0, 90.2]|               -0.2|


\pagebreak
## Model: `mod_subgroup_JBI_Classification`

**Subgroup-specific results:**

- **High Quality**: 54.5% [50.0%, 59.0%]  (k = 115, τ² = 0.969, I² = 99.9%)
- **Medium Quality**: 48.6% [40.5%, 56.8%]  (k = 26, τ² = 0.684, I² = 95.4%)


![](report_files/figure-pdf/subgroup-summary-3.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ PLOGIT            95%-CI  tau^2    tau  p.trt  p.rsb  N
              1.0000 0.1786 [-0.0009; 0.3581] 0.9342 0.9665 0.0511 0.5956  0
              0.9759 0.1700 [-0.0162; 0.3563] 0.9346 0.9668 0.0736 0.6190  3
              0.9594 0.1650 [-0.0249; 0.3549] 0.9346 0.9667 0.0885 0.6332  4
              0.9414 0.1600 [-0.0339; 0.3540] 0.9344 0.9667 0.1058 0.6452  7
              0.9216 0.1550 [-0.0436; 0.3536] 0.9343 0.9666 0.1261 0.6551  9
              0.8999 0.1500 [-0.0541; 0.3541] 0.9341 0.9665 0.1497 0.6625 12
              0.8761 0.1450 [-0.0655; 0.3555] 0.9339 0.9664 0.1770 0.6674 15
              0.8495 0.1400 [-0.0781; 0.3581] 0.9336 0.9663 0.2084 0.6697 19
              0.8193 0.1350 [-0.0920; 0.3620] 0.9335 0.9662 0.2439 0.6693 24
              0.7843 0.1300 [-0.1075; 0.3674] 0.9333 0.9661 0.2834 0.6658 30
              0.7430 0.1249 [-0.1246; 0.3745] 0.9331 0.9660 0.3264 0.8311 37
              0.6925 0.1199 [-0.1435; 0.3833] 0.9330 0.9659 0.3722 0.8548 48
              0.6283 0.1150 [-0.1641; 0.3941] 0.9329 0.9659 0.4194 0.8799 64
              0.5375 0.1100 [-0.1876; 0.4075] 0.9328 0.9658 0.4689 0.9082 93
                                                                            
   Adjusted estimate 0.1786 [-0.0009; 0.3581] 0.9342 0.9665 0.0511 0.5956  0
 Unadjusted estimate 0.1807 [-0.0018; 0.3632] 0.9690 0.9844                 

Significance level for test of residual selection bias: 0.1 

                       min   max
 range of gamma0:  -0.2542 2.000
 range of gamma1:   0.0000 0.003

Largest standard error (SE): 0.7201 

Range of probability publishing trial with largest SE:
    min    max
 0.3997 0.9775

Calculation of orthogonal line:

 level nobs adj.r.square      slope  se.slope
 0.105   11    0.9994635  -21.23622 0.1555829
 0.110   21    0.9995864  -37.19779 0.1691894
 0.115   21    0.9996961  -49.28959 0.1921475
 0.120   20    0.9994867  -58.87212 0.3060594
 0.125   20    0.9996141  -66.64184 0.3004011
 0.130   20    0.9984007  -74.76278 0.6864314
 0.135   21    0.9998264  -83.30125 0.2454066
 0.140   21    0.9998783  -91.50930 0.2257507
 0.145   21    0.9997272  -98.88227 0.3652508
 0.150   21    0.9995354 -104.15090 0.5020723
 0.155   20    0.9995201 -108.02339 0.5430214
 0.160   20    0.9999777 -115.68561 0.1253898
 0.165   20    0.9999803 -130.98371 0.1334518
 0.170   20    0.9997468 -140.35813 0.5124108

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ  PLOGIT             95%-CI  tau^2    tau    p.trt  p.rsb
              1.0000 -0.0569 [-0.3804;  0.2667] 0.6642 0.8150   0.7305 0.6076
              0.9340 -0.0800 [-0.3879;  0.2278] 0.6576 0.8109   0.6104 0.7419
              0.8773 -0.1000 [-0.3884;  0.1884] 0.6549 0.8092   0.4968 0.8579
              0.8233 -0.1200 [-0.3789;  0.1390] 0.6531 0.8082   0.3639 1.0000
              0.7725 -0.1399 [-0.3473;  0.0674] 0.6520 0.8075   0.1860 1.0000
              0.7247 -0.1599 [-0.2193; -0.1005] 0.6514 0.8071 < 0.0001 1.0000
              0.6801 -0.1799 [-0.2393; -0.1205] 0.6512 0.8070 < 0.0001 1.0000
              0.6383 -0.1998 [-0.2592; -0.1405] 0.6513 0.8070 < 0.0001 1.0000
              0.5991 -0.2198 [-0.2792; -0.1604] 0.6517 0.8073 < 0.0001 1.0000
              0.5624 -0.2399 [-1.2096;  0.7298] 0.6524 0.8077   0.6278 1.0000
              0.5209 -0.2642 [-0.9517;  0.4233] 0.6535 0.8084   0.4513 1.0000
              0.4204 -0.2589 [-0.9735;  0.4557] 0.6561 0.8100   0.4776 1.0000
                                                                             
   Adjusted estimate -0.0569 [-0.3804;  0.2667] 0.6642 0.8150   0.7305 0.6076
 Unadjusted estimate -0.0559 [-0.3837;  0.2719] 0.6838 0.8269                
  N
  0
  1
  2
  4
  5
  7
  9
 10
 12
 14
 17
 26
   
  0
   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.5312 2.0000
 range of gamma1:   0.0000 0.0995

Largest standard error (SE): 0.3538 

Range of probability publishing trial with largest SE:
    min    max
 0.2976 0.9887

Calculation of orthogonal line:

 level nobs adj.r.square       slope   se.slope
 -0.32    4  -0.49425004  0.01593565 0.18164937
 -0.30   14  -0.04142243  0.17213702 0.24770434
 -0.28   24   0.23390089 -1.18429988 0.41813283
 -0.26    9   0.91120014  3.14039689 0.34451612
 -0.26   23   0.99409364 -4.86156883 0.07988272
 -0.24   24   0.99992626 -5.21400047 0.00933621
 -0.22   24   0.99989545 -5.23309790 0.01115766
 -0.20   23   0.99986737 -5.24589342 0.01288097
 -0.18   23   0.99985110 -5.25693906 0.01367745
 -0.16   23   0.99983458 -5.27187919 0.01445715
 -0.14   23   0.99982048 -5.29325926 0.01512196
 -0.12   24   0.99984128 -5.31531256 0.01396434
 -0.10   24   0.99979812 -5.35038790 0.01585293
 -0.08   23   0.99967134 -5.40408281 0.02089055

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```


**Sensitivity Analysis**



|Model                     |   k|       N| Prevalence (95% CI)| $\tau^2$| $I^2$|       95% PI| $\Delta$ Prev (pp)|
|:-------------------------|---:|-------:|-------------------:|--------:|-----:|------------:|------------------:|
|GLMM + logit (primary)    | 141| 1501367|   53.4 [49.4, 57.4]|    0.925| 99.9%| [14.5, 88.6]|                  —|
|Inverse logit (REML + HK) | 141| 1501367|   53.4 [49.3, 57.4]|    0.900| 99.9%| [14.8, 88.3]|               -0.0|
|Freeman-Tukey (REML + HK) | 141| 1501367|   53.2 [49.5, 56.9]|    0.047| 99.9%| [14.0, 90.2]|               -0.2|


\pagebreak
## Model: `mod_subgroup_Setting`

**Subgroup-specific results:**

- **Hospital Setting**: 55.5% [51.2%, 59.7%]  (k = 117, τ² = 0.886, I² = 99.5%)
- **Other**: 43.5% [34.3%, 53.3%]  (k = 24, τ² = 0.928, I² = 99.7%)


![](report_files/figure-pdf/subgroup-summary-4.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ PLOGIT            95%-CI  tau^2    tau  p.trt  p.rsb   N
              1.0000 0.2168 [ 0.0466; 0.3871] 0.8489 0.9213 0.0126 0.2120   0
              0.9545 0.2001 [ 0.0214; 0.3788] 0.8489 0.9213 0.0282 0.2016   5
              0.8929 0.1801 [-0.0077; 0.3679] 0.8478 0.9208 0.0601 0.2082  13
              0.8242 0.1600 [-0.0385; 0.3585] 0.8465 0.9200 0.1142 0.3346  24
              0.7497 0.1400 [-0.0714; 0.3514] 0.8451 0.9193 0.1942 0.3871  37
              0.6681 0.1200 [-0.1067; 0.3466] 0.8439 0.9186 0.2994 0.4452  56
              0.5785 0.1000 [-0.1444; 0.3443] 0.8427 0.9180 0.4226 0.5099  82
              0.4788 0.0799 [-0.1849; 0.3447] 0.8416 0.9174 0.5542 0.5830 122
                                                                             
   Adjusted estimate 0.2168 [ 0.0466; 0.3871] 0.8489 0.9213 0.0126 0.2120   0
 Unadjusted estimate 0.2198 [ 0.0463; 0.3934] 0.8857 0.9411                  

Significance level for test of residual selection bias: 0.1 

                       min   max
 range of gamma0:  -0.2542 2.000
 range of gamma1:   0.0000 0.003

Largest standard error (SE): 0.7201 

Range of probability publishing trial with largest SE:
    min    max
 0.3997 0.9775

Calculation of orthogonal line:

 level nobs adj.r.square      slope   se.slope
  0.08   20    0.9998579  -76.93933 0.21039228
  0.10   20    0.9998449  -89.47173 0.25567798
  0.12   20    0.9996276 -100.66236 0.44570406
  0.14   20    0.9999284 -112.34720 0.21808142
  0.16   21    0.9987923 -118.22200 0.91920345
  0.18   20    0.9999928 -133.32200 0.08208911
  0.20   20    0.9999202 -142.96921 0.29309251

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ  PLOGIT            95%-CI  tau^2    tau  p.trt  p.rsb  N
              1.0000 -0.2565 [-0.6455; 0.1325] 0.9191 0.9587 0.1963 0.0199  0
              0.9450 -0.2401 [-0.6291; 0.1490] 0.9092 0.9535 0.2265 0.0231  1
              0.8736 -0.2201 [-0.5654; 0.1252] 0.8972 0.9472 0.2116 0.0278  3
              0.8050 -0.2001 [-0.5422; 0.1420] 0.8856 0.9410 0.2515 0.0334  5
              0.7406 -0.1802 [-0.5149; 0.1545] 0.8743 0.9350 0.2914 0.0399  7
              0.6802 -0.1600 [-0.4856; 0.1656] 0.8633 0.9291 0.3355 0.0477 10
              0.6251 -0.1401 [-0.4555; 0.1753] 0.8528 0.9235 0.3839 0.0567 13
              0.5742 -0.1202 [-0.4241; 0.1837] 0.8427 0.9180 0.4382 0.0672 15
              0.5272 -0.1002 [-0.3909; 0.1905] 0.8330 0.9127 0.4993 0.0795 19
              0.4839 -0.0802 [-0.3556; 0.1953] 0.8237 0.9076 0.5684 0.0936 22
              0.4439 -0.0600 [-0.3172; 0.1973] 0.8147 0.9026 0.6477 0.1101 26
              0.4078 -0.0401 [-0.2755; 0.1952] 0.8063 0.8979 0.7383 0.1285 30
                                                                             
   Adjusted estimate -0.0600 [-0.3172; 0.1973] 0.8147 0.9026 0.6477 0.1101 26
 Unadjusted estimate -0.2605 [-0.6514; 0.1304] 0.9282 0.9634                 

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2624 2.0000
 range of gamma1:   0.0000 0.0044

Largest standard error (SE): 0.3536 

Range of probability publishing trial with largest SE:
    min    max
 0.3965 0.9779

Calculation of orthogonal line:

 level nobs adj.r.square     slope  se.slope
 -0.24   20    0.9999058 -73.92123 0.1645926
 -0.22   20    0.9999229 -75.21894 0.1515675
 -0.20   20    0.9999329 -70.77992 0.1329856
 -0.18   20    0.9999367 -72.33291 0.1320362
 -0.16   20    0.9999439 -68.23733 0.1172281
 -0.14   21    0.9997272 -73.34956 0.2709455
 -0.12   20    0.9999471 -72.75491 0.1214316
 -0.10   20    0.9999495 -72.56068 0.1182751
 -0.08   21    0.9998888 -72.73951 0.1714955
 -0.06   21    0.9993398 -68.90758 0.3960376
 -0.04   20    0.9999587 -68.83595 0.1014433

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```


**Sensitivity Analysis**



|Model                     |   k|       N| Prevalence (95% CI)| $\tau^2$| $I^2$|       95% PI| $\Delta$ Prev (pp)|
|:-------------------------|---:|-------:|-------------------:|--------:|-----:|------------:|------------------:|
|GLMM + logit (primary)    | 141| 1501367|   53.4 [49.4, 57.4]|    0.925| 99.9%| [14.5, 88.6]|                  —|
|Inverse logit (REML + HK) | 141| 1501367|   53.4 [49.3, 57.4]|    0.900| 99.9%| [14.8, 88.3]|               -0.0|
|Freeman-Tukey (REML + HK) | 141| 1501367|   53.2 [49.5, 56.9]|    0.047| 99.9%| [14.0, 90.2]|               -0.2|


\pagebreak
## Model: `mod_subgroup_use_guideline`

**Subgroup-specific results:**

- **Followed Guideline(s)**: 53.2% [49.0%, 57.3%]  (k = 133, τ² = 0.929, I² = 99.9%)
- **No Guideline**: 58.3% [42.3%, 72.7%]  (k = 8, τ² = 0.825, I² = 99.1%)


![](report_files/figure-pdf/subgroup-summary-5.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ PLOGIT            95%-CI  tau^2    tau  p.trt  p.rsb   N
              1.0000 0.1243 [-0.0394; 0.2879] 0.8953 0.9462 0.1368 0.5689   0
              0.9654 0.1101 [-0.0615; 0.2816] 0.8957 0.9464 0.2086 0.6445   4
              0.9502 0.1050 [-0.0695; 0.2794] 0.8956 0.9464 0.2381 0.6723   6
              0.9341 0.1000 [-0.0777; 0.2777] 0.8954 0.9463 0.2699 0.6991   9
              0.9167 0.0950 [-0.0865; 0.2766] 0.8952 0.9462 0.3049 0.7211  11
              0.8977 0.0900 [-0.0961; 0.2761] 0.8950 0.9460 0.3431 0.7442  14
              0.8770 0.0850 [-0.1065; 0.2765] 0.8948 0.9459 0.3845 0.7653  17
              0.8543 0.0800 [-0.1181; 0.2781] 0.8946 0.9458 0.4287 0.7837  21
              0.8287 0.0750 [-0.1312; 0.2812] 0.8944 0.9457 0.4760 0.8276  26
              0.7991 0.0700 [-0.1462; 0.2861] 0.8942 0.9456 0.5258 0.8516  31
              0.7636 0.0649 [-0.1635; 0.2934] 0.8941 0.9455 0.5773 0.8749  39
              0.7188 0.0600 [-0.1836; 0.3036] 0.8940 0.9455 0.6293 0.8975  49
              0.6546 0.0549 [-0.2079; 0.3177] 0.8939 0.9455 0.6823 0.9208  66
              0.5507 0.0499 [-0.2363; 0.3362] 0.8939 0.9455 0.7324 0.9452 103
                                                                             
   Adjusted estimate 0.1243 [-0.0394; 0.2879] 0.8953 0.9462 0.1368 0.5689   0
 Unadjusted estimate 0.1262 [-0.0402; 0.2927] 0.9290 0.9638                  

Significance level for test of residual selection bias: 0.1 

                       min   max
 range of gamma0:  -0.2542 2.000
 range of gamma1:   0.0000 0.003

Largest standard error (SE): 0.7201 

Range of probability publishing trial with largest SE:
    min    max
 0.3997 0.9775

Calculation of orthogonal line:

 level nobs adj.r.square      slope  se.slope
 0.050   20    0.9986318  -27.15670 0.2305964
 0.055   20    0.9990202  -41.56822 0.2986500
 0.060   21    0.9994504  -60.45596 0.3170111
 0.065   20    0.9995544  -70.52980 0.3416517
 0.070   20    0.9996114  -80.22987 0.3628891
 0.075   20    0.9998025  -87.78533 0.2830287
 0.080   20    0.9998700  -93.95655 0.2458014
 0.085   21    0.9997736 -100.40625 0.3378644
 0.090   20    0.9999168 -108.42137 0.2268519
 0.095   20    0.9999525 -114.51250 0.1810844
 0.100   20    0.9998896 -121.02694 0.2917574
 0.105   21    0.9999131 -114.45693 0.2385982
 0.110   20    0.9998891 -125.70604 0.3036882

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ PLOGIT            95%-CI  tau^2    tau  p.trt  p.rsb N
              1.0000 0.3324 [-0.3087; 0.9734] 0.8145 0.9025 0.3095 0.2959 0
              0.9549 0.3501 [-0.2084; 0.9086] 0.8067 0.8982 0.2192 0.3102 0
              0.8215 0.4001 [-0.1136; 0.9139] 0.7884 0.8879 0.1269 0.3527 1
              0.7025 0.4501 [ 0.0127; 0.8876] 0.7726 0.8790 0.0437 0.3980 3
              0.6000 0.5001 [ 0.1842; 0.8160] 0.7589 0.8712 0.0019 0.4464 4
              0.5124 0.5501 [ 0.2342; 0.8660] 0.7470 0.8643 0.0006 0.4979 6
              0.4378 0.6000 [ 0.2841; 0.9159] 0.7367 0.8583 0.0002 0.5522 8
                                                                           
   Adjusted estimate 0.3324 [-0.3087; 0.9734] 0.8145 0.9025 0.3095 0.2959 0
 Unadjusted estimate 0.3332 [-0.3117; 0.9782] 0.8252 0.9084                

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.5586 2.0000
 range of gamma1:   0.0000 0.0788

Largest standard error (SE): 0.2553 

Range of probability publishing trial with largest SE:
    min    max
 0.2882 0.9895

Calculation of orthogonal line:

 level nobs adj.r.square     slope    se.slope
  0.35   23    0.9990912 -6.846251 0.044020614
  0.40   23    0.9993298 -6.686150 0.036916048
  0.45   23    0.9994436 -6.614355 0.033272019
  0.50   23    0.9995066 -6.562651 0.031086203
  0.55   22    0.9995669 -6.526408 0.029645114
  0.60   23    0.9995998 -6.494708 0.027704328
  0.65   18    0.9997598 -6.379130 0.023983234
  0.70   10    0.9999104 -6.211346 0.019595219
  0.75    3    0.9999998 -5.886310 0.002006772

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```


**Sensitivity Analysis**



|Model                     |   k|       N| Prevalence (95% CI)| $\tau^2$| $I^2$|       95% PI| $\Delta$ Prev (pp)|
|:-------------------------|---:|-------:|-------------------:|--------:|-----:|------------:|------------------:|
|GLMM + logit (primary)    | 141| 1501367|   53.4 [49.4, 57.4]|    0.925| 99.9%| [14.5, 88.6]|                  —|
|Inverse logit (REML + HK) | 141| 1501367|   53.4 [49.3, 57.4]|    0.900| 99.9%| [14.8, 88.3]|               -0.0|
|Freeman-Tukey (REML + HK) | 141| 1501367|   53.2 [49.5, 56.9]|    0.047| 99.9%| [14.0, 90.2]|               -0.2|


\pagebreak



## Meta-regression

### Univariate models




### Model: `mod_metareg_Age`

```


Mixed-Effects Model (k = 71; tau^2 estimator: REML)

  logLik  deviance       AIC       BIC      AICc   
-97.9083  195.8166  201.8166  208.5189  202.1858   

tau^2 (estimated amount of residual heterogeneity):     0.9031 (SE = 0.1597)
tau (square root of estimated tau^2 value):             0.9503
I^2 (residual heterogeneity / unaccounted variability): 99.15%
H^2 (unaccounted variability / sampling variability):   117.37
R^2 (amount of heterogeneity accounted for):            0.00%

Test for Residual Heterogeneity:
QE(df = 69) = 4513.1210, p-val < .0001

Test of Moderators (coefficient 2):
QM(df = 1) = 0.3009, p-val = 0.5833

Model Results:

         estimate      se     zval    pval    ci.lb   ci.ub    
intrcpt    0.1950  0.1494   1.3051  0.1919  -0.0978  0.4878    
Age>=65   -0.1284  0.2341  -0.5485  0.5833  -0.5873  0.3305    

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-1.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_Continent`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-192.4387   384.8774   394.8774   409.4773   395.3354   

tau^2 (estimated amount of residual heterogeneity):     0.9072 (SE = 0.1134)
tau (square root of estimated tau^2 value):             0.9524
I^2 (residual heterogeneity / unaccounted variability): 99.91%
H^2 (unaccounted variability / sampling variability):   1060.90
R^2 (amount of heterogeneity accounted for):            0.00%

Test for Residual Heterogeneity:
QE(df = 137) = 81886.9733, p-val < .0001

Test of Moderators (coefficients 2:4):
QM(df = 3) = 2.4615, p-val = 0.4823

Model Results:

                 estimate      se     zval    pval    ci.lb   ci.ub    
intrcpt            0.0885  0.1498   0.5906  0.5548  -0.2051  0.3820    
ContinentAsia      0.0570  0.2130   0.2676  0.7890  -0.3604  0.4744    
ContinentEurope    0.1875  0.2100   0.8932  0.3718  -0.2240  0.5991    
ContinentOther    -0.2569  0.2937  -0.8746  0.3818  -0.8326  0.3188    

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-2.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_JBI_Classification`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-194.8311   389.6623   395.6623   404.4657   395.8401   

tau^2 (estimated amount of residual heterogeneity):     0.8983 (SE = 0.1116)
tau (square root of estimated tau^2 value):             0.9478
I^2 (residual heterogeneity / unaccounted variability): 99.92%
H^2 (unaccounted variability / sampling variability):   1241.63
R^2 (amount of heterogeneity accounted for):            0.20%

Test for Residual Heterogeneity:
QE(df = 139) = 94411.6445, p-val < .0001

Test of Moderators (coefficient 2):
QM(df = 1) = 1.2367, p-val = 0.2661

Model Results:

                                  estimate      se     zval    pval    ci.lb 
intrcpt                             0.1785  0.0898   1.9872  0.0469   0.0025 
JBI_ClassificationMedium Quality   -0.2342  0.2106  -1.1121  0.2661  -0.6469 
                                   ci.ub    
intrcpt                           0.3546  * 
JBI_ClassificationMedium Quality  0.1785    

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-3.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_Setting`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-193.0280   386.0559   392.0559   400.8594   392.2337   

tau^2 (estimated amount of residual heterogeneity):     0.8754 (SE = 0.1088)
tau (square root of estimated tau^2 value):             0.9357
I^2 (residual heterogeneity / unaccounted variability): 99.82%
H^2 (unaccounted variability / sampling variability):   549.65
R^2 (amount of heterogeneity accounted for):            2.74%

Test for Residual Heterogeneity:
QE(df = 139) = 33786.9952, p-val < .0001

Test of Moderators (coefficient 2):
QM(df = 1) = 4.9314, p-val = 0.0264

Model Results:

              estimate      se     zval    pval    ci.lb    ci.ub    
intrcpt         0.2169  0.0882   2.4607  0.0139   0.0441   0.3897  * 
SettingOther   -0.4728  0.2129  -2.2207  0.0264  -0.8902  -0.0555  * 

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-4.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_use_guideline`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-195.2763   390.5526   396.5526   405.3560   396.7304   

tau^2 (estimated amount of residual heterogeneity):     0.9044 (SE = 0.1123)
tau (square root of estimated tau^2 value):             0.9510
I^2 (residual heterogeneity / unaccounted variability): 99.92%
H^2 (unaccounted variability / sampling variability):   1249.27
R^2 (amount of heterogeneity accounted for):            0.00%

Test for Residual Heterogeneity:
QE(df = 139) = 94691.8915, p-val < .0001

Test of Moderators (coefficient 2):
QM(df = 1) = 0.3425, p-val = 0.5584

Model Results:

                           estimate      se    zval    pval    ci.lb   ci.ub    
intrcpt                      0.1243  0.0839  1.4809  0.1386  -0.0402  0.2888    
use_guidelineNo Guideline    0.2071  0.3539  0.5853  0.5584  -0.4865  0.9007    

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-5.pdf){width=100%}

\pagebreak



### Multivariate model



::: {.cell}
::: {.cell-output .cell-output-stdout}

```
| 
| Mixed-Effects Model (k = 141; tau^2 estimator: REML)
| 
|    logLik   deviance        AIC        BIC       AICc   
| -182.3690   364.7379   384.7379   413.5659   386.5561   
| 
| tau^2 (estimated amount of residual heterogeneity):     0.8655 (SE = 0.1105)
| tau (square root of estimated tau^2 value):             0.9303
| I^2 (residual heterogeneity / unaccounted variability): 99.56%
| H^2 (unaccounted variability / sampling variability):   225.67
| R^2 (amount of heterogeneity accounted for):            3.85%
| 
| Test for Residual Heterogeneity:
| QE(df = 132) = 16621.2676, p-val < .0001
| 
| Test of Moderators (coefficients 2:9):
| QM(df = 8) = 14.2015, p-val = 0.0767
| 
| Model Results:
| 
|                                   estimate       se     zval    pval     ci.lb 
| intrcpt                            52.5749  34.0591   1.5436  0.1227  -14.1796 
| Year                               -0.0260   0.0169  -1.5372  0.1243   -0.0591 
| JBI_ClassificationMedium Quality   -0.2402   0.2087  -1.1510  0.2497   -0.6491 
| use_guidelineNo Guideline           0.2375   0.3700   0.6418  0.5210   -0.4876 
| SettingOther                       -0.5394   0.2193  -2.4599  0.0139   -0.9691 
| ContinentAsia                       0.1081   0.2267   0.4766  0.6337   -0.3363 
| ContinentEurope                     0.2608   0.2110   1.2358  0.2165   -0.1528 
| ContinentOther                     -0.2833   0.2983  -0.9496  0.3423   -0.8680 
| Sample_size                         0.0000   0.0000   0.8220  0.4111   -0.0000 
|                                      ci.ub    
| intrcpt                           119.3294    
| Year                                0.0071    
| JBI_ClassificationMedium Quality    0.1688    
| use_guidelineNo Guideline           0.9626    
| SettingOther                       -0.1096  * 
| ContinentAsia                       0.5524    
| ContinentEurope                     0.6744    
| ContinentOther                      0.3014    
| Sample_size                         0.0000    
| 
| ---
| Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```


:::

::: {.cell-output-display}
![](report_files/figure-pdf/metareg-mv-summary-1.pdf){width=100%}
:::
:::
