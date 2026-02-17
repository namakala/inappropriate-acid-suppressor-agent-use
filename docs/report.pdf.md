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

The data was fitted to random effects models to account for anticipated between study heterogeneity in prevalence estimates. The Freeman-Tukey double arcsine transformation was applied to stabilize variances and ensure that resulting confidence intervals remained within the 0 to 1 range. Between study variance $\tau^2$ was estimated using the restricted maximum likelihood method. The Hartung-Knapp adjustment was applied to provide more conservative 95% confidence intervals and reduce the risk of Type I error. A 95% prediction interval was also calculated to estimate the expected range of prevalence in future studies with similar characteristics.

## Assessment of Heterogeneity

Statistical heterogeneity was evaluated using $I^2$, $\tau^2$, H statistics, and Wald's Q test. Given the high heterogeneity observed, potential sources of variability were explored through subgroup analyses and meta regression.  Subgroup analyses were conducted for categorical variables, including age group, continent, clinical setting, methodological quality according to JBI classification, and guideline use. Separate random effects models were fitted within each subgroup.  Univariable and multivariable meta regression analyses were also performed to further explore the potential source of heterogeneity. These models examined the association between study level covariates, including publication year and sample size, and the logit transformed prevalence of inappropriate use.

## Publication Bias and Sensitivity Analysis

Contour enhanced funnel plots were generated to assess potential small study effects and publication bias. To further evaluate and adjust for potential selection bias, the Copas selection model was applied. This approach models the probability of study inclusion as a function of effect size and statistical significance, allowing adjustment of pooled estimates under varying selection assumptions. Copas modeling was conducted for the overall dataset and within predefined subgroups.

## Software and Reproducibility

All analyses were conducted in `R` version 4.5.1. The computational workflow was managed using the `targets` and `tarchetypes` packages to ensure full reproducibility and traceability of all analytical steps. Parallel processing was implemented with the `crew` package to optimize execution of iterative subgroup and meta regression models.

# Results



::: {.cell}

:::



## Overall Prevalence of Inappropriate Use

This meta-analysis included 141 studies comprising 1,138,101 participants. Across these studies, 787,444 instances of inappropriate use of acid suppressing agents were identified. Using a random effects model, the pooled prevalence of inappropriate use was 52.93% [49.26-56.58%].

## Heterogeneity



::: {.cell}

:::



Substantial between study heterogeneity was observed. The $I^2$ statistic was 99.74%, $\tau^2$ was 0.046, H was 19.71, and Wald's Q was 54,384.51. The extremely high $I^2$ value indicates that nearly all observed variability in prevalence estimates was attributable to true differences across studies rather than sampling error. Reported prevalence estimates varied widely, confirming marked heterogeneity and suggesting that inappropriate use is strongly influenced by contextual and study level factors.

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



**Random effects model: 0.529 [0.493, 0.566]**  
Number of studies: 141  
Number of observations: 1,138,101  
Number of events: 787,444  

Heterogeneity measures:

- $\tau^2$: 0.046
- $I^2$: 99.74%
- $H$: 19.71
- Wald's $Q$: 54,384.51

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
|               p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
|               1.0000 0.8145 [0.7785; 0.8505] 0.0460 0.2145        0 0.5560  0
|               0.9651 0.8172 [0.7783; 0.8561] 0.0460 0.2145        0 0.5979  5
|               0.9558 0.8180 [0.7783; 0.8576] 0.0460 0.2145        0 0.6104  6
|               0.9316 0.8200 [0.7781; 0.8618] 0.0460 0.2145 < 0.0001 0.6447 10
|               0.9051 0.8220 [0.7764; 0.8676] 0.0460 0.2144 < 0.0001 0.6848 14
|               0.8787 0.8240 [0.7737; 0.8743] 0.0460 0.2144 < 0.0001 0.7267 18
|               0.8528 0.8260 [0.7702; 0.8818] 0.0460 0.2144 < 0.0001 0.7697 23
|               0.8276 0.8280 [0.7665; 0.8895] 0.0460 0.2144 < 0.0001 0.8136 28
|               0.8031 0.8300 [0.7629; 0.8970] 0.0459 0.2143 < 0.0001 0.8578 33
|               0.7789 0.8320 [0.7602; 0.9037] 0.0459 0.2143 < 0.0001 0.9027 38
|               0.7513 0.8343 [0.7587; 0.9099] 0.0459 0.2143 < 0.0001 0.9538 44
|                                                                              
|    Adjusted estimate 0.8145 [0.7785; 0.8505] 0.0460 0.2145        0 0.5560  0
|  Unadjusted estimate 0.8145 [0.7780; 0.8509] 0.0464 0.2153                   
| 
| Significance level for test of residual selection bias: 0.1 
| 
|                        min    max
|  range of gamma0:  -0.2539 2.0000
|  range of gamma1:   0.0000 0.0007
| 
| Largest standard error (SE): 0.1715 
| 
| Range of probability publishing trial with largest SE:
|     min    max
|  0.3998 0.9775
| 
| Calculation of orthogonal line:
| 
|  level nobs adj.r.square      slope    se.slope
|  0.816   21    0.7016916  -12.88920 1.859529990
|  0.818   20    0.9956210 -138.71359 2.110252642
|  0.820   20    0.9999957 -123.64832 0.058554227
|  0.822   20    0.9999996 -113.97521 0.016721491
|  0.824   21    0.9991824 -113.85844 0.728271305
|  0.826   21    0.9989693 -115.14333 0.826994968
|  0.828   20    0.9999998 -113.32156 0.011785056
|  0.830   20    0.9999999 -116.92740 0.009631409
|  0.832   20    0.9999999 -121.45156 0.006842325
|  0.834   21    0.9579448  -65.28441 3.055330477
| 
|  Legend:
|  p.publ - Probability of publishing study with largest SE
|  p.trt  - P-value for test of overall treatment effect
|  p.rsb  - P-value for test of residual selection bias
|  N      - Estimated number of unpublished studies
```


:::
:::



\pagebreak

## Subgroup meta-analysis




## Model: `mod_subgroup_Age`

**Random effects model: 0.532 [0.480, 0.585]**  
Number of studies: 71  
Number of observations: 81,391  
Number of events: 40,018  

Heterogeneity measures:

- $\tau^2$: 0.047
- $I^2$: 99.05%
- $H$: 10.25
- Wald's $Q$: 7,353.024

![](report_files/figure-pdf/subgroup-summary-1.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8290 [0.7656; 0.8925] 0.0425 0.2061 < 0.0001 0.0091  0
              0.9223 0.8350 [0.7774; 0.8926] 0.0419 0.2047 < 0.0001 0.0119  3
              0.8549 0.8400 [0.7854; 0.8946] 0.0415 0.2037 < 0.0001 0.0147  6
              0.7906 0.8450 [0.7933; 0.8967] 0.0411 0.2028 < 0.0001 0.0180  9
              0.7307 0.8500 [0.8013; 0.8986] 0.0408 0.2019 < 0.0001 0.0218 13
              0.6742 0.8550 [0.8097; 0.9003] 0.0404 0.2011 < 0.0001 0.0264 17
              0.6223 0.8600 [0.8186; 0.9014] 0.0401 0.2003        0 0.0318 22
              0.5742 0.8650 [0.8282; 0.9018] 0.0398 0.1996        0 0.0381 27
              0.5297 0.8700 [0.8389; 0.9010] 0.0396 0.1989        0 0.0455 32
              0.4887 0.8750 [0.8518; 0.8982] 0.0393 0.1982        0 0.0540 38
              0.4511 0.8800 [0.8716; 0.8883] 0.0390 0.1976        0 0.0638 44
              0.4163 0.8849 [0.8766; 0.8933] 0.0388 0.1970        0 0.0751 51
                                                                             
   Adjusted estimate                                                         
 Unadjusted estimate 0.8290 [0.7625; 0.8954] 0.0436 0.2087                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.3028 2.0000
 range of gamma1:   0.0000 0.0044

Largest standard error (SE): 0.0828 

Range of probability publishing trial with largest SE:
   min   max
 0.381 0.980

Calculation of orthogonal line:

 level nobs adj.r.square     slope   se.slope
 0.835   21    0.9996965 -19.25494 0.07501509
 0.840   21    0.9997714 -19.18521 0.06486903
 0.845   21    0.9997112 -19.16385 0.07283655
 0.850   21    0.9999040 -19.51549 0.04275093
 0.855   21    0.9998507 -19.08830 0.05216074
 0.860   21    0.9996658 -19.15595 0.07831379
 0.865   21    0.9996694 -19.15808 0.07790102
 0.870   21    0.9997630 -19.08260 0.06569164
 0.875   21    0.9999192 -19.02002 0.03822868
 0.880   21    0.9999283 -19.20989 0.03636654
 0.885   21    0.9998640 -19.30128 0.05032830
 0.890   13    0.9999760 -18.68513 0.02642610

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8017 [0.7174; 0.8861] 0.0521 0.2282 < 0.0001 0.8363  0
              0.9792 0.8000 [0.7174; 0.8826] 0.0520 0.2280 < 0.0001 0.8795  0
              0.9124 0.7950 [0.7198; 0.8702] 0.0519 0.2278 < 0.0001 0.9077  2
              0.8461 0.7900 [0.7276; 0.8525] 0.0518 0.2276 < 0.0001 0.9598  4
              0.7832 0.7850 [0.7540; 0.8161] 0.0518 0.2276        0 0.9885  7
              0.7241 0.7800 [0.7489; 0.8111] 0.0518 0.2275        0 0.9370 10
              0.6694 0.7750 [0.7440; 0.8061] 0.0518 0.2276        0 0.8865 12
              0.6166 0.7728 [0.3462; 1.1994] 0.0519 0.2277   0.0004 0.8349 16
              0.5793 0.7803 [0.5526; 1.0080] 0.0520 0.2280 < 0.0001 0.8193 18
              0.4346 0.7841 [0.5965; 0.9716] 0.0520 0.2281 < 0.0001 0.7962 33
                                                                             
   Adjusted estimate 0.8017 [0.7174; 0.8861] 0.0521 0.2282 < 0.0001 0.8363  0
 Unadjusted estimate 0.8017 [0.7120; 0.8915] 0.0540 0.2324                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2985 2.0000
 range of gamma1:   0.0000 0.0037

Largest standard error (SE): 0.0767 

Range of probability publishing trial with largest SE:
    min    max
 0.3827 0.9797

Calculation of orthogonal line:

 level nobs adj.r.square      slope   se.slope
 0.770   17  -0.03234602  -2.778567 3.93468673
 0.775   20   0.99992832  56.207984 0.10918068
 0.775   21   0.99933821 -22.745197 0.13087969
 0.780   20   0.99400192  30.708114 0.54716690
 0.780   21   0.99996697 -22.542404 0.02897175
 0.785   21   0.99921549 -23.157970 0.14509295
 0.790   21   0.99920662 -23.339082 0.14705278
 0.795   21   0.99992796 -23.644829 0.04487610
 0.800    4   0.99999875 -27.011678 0.01742672

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```

\pagebreak
## Model: `mod_subgroup_Continent`

**Random effects model: 0.529 [0.493, 0.566]**  
Number of studies: 141  
Number of observations: 1,138,101  
Number of events: 787,444  

Heterogeneity measures:

- $\tau^2$: 0.046
- $I^2$: 99.74%
- $H$: 19.71
- Wald's $Q$: 54,384.51

![](report_files/figure-pdf/subgroup-summary-2.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8112 [0.7463; 0.8761] 0.0420 0.2051 < 0.0001 0.4033  0
              0.9021 0.8050 [0.7466; 0.8634] 0.0417 0.2041 < 0.0001 0.4638  3
              0.8280 0.8000 [0.7415; 0.8585] 0.0414 0.2036 < 0.0001 0.5309  6
              0.7600 0.7950 [0.7385; 0.8515] 0.0412 0.2030 < 0.0001 0.6050  9
              0.6980 0.7900 [0.7367; 0.8434] 0.0411 0.2026 < 0.0001 0.6842 13
              0.6411 0.7850 [0.7369; 0.8331] 0.0409 0.2023 < 0.0001 0.7681 17
              0.5893 0.7800 [0.7422; 0.8178] 0.0408 0.2020        0 0.8549 21
              0.5419 0.7750 [0.7372; 0.8128] 0.0407 0.2018        0 0.9436 25
              0.4986 0.7700 [0.7323; 0.8078] 0.0407 0.2017        0 0.9668 30
              0.4591 0.7650 [0.3931; 1.1369] 0.0406 0.2016 < 0.0001 0.8779 35
                                                                             
   Adjusted estimate 0.8112 [0.7463; 0.8761] 0.0420 0.2051 < 0.0001 0.4033  0
 Unadjusted estimate 0.8112 [0.7436; 0.8788] 0.0432 0.2078                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2899 2.0000
 range of gamma1:   0.0000 0.0069

Largest standard error (SE): 0.1715 

Range of probability publishing trial with largest SE:
    min    max
 0.3859 0.9793

Calculation of orthogonal line:

 level nobs adj.r.square      slope   se.slope
 0.750    2 -100.0000000  -6.142717        NaN
 0.755   10    0.9790004  -5.870020 0.28623005
 0.760   17    0.8859977  -7.520410 0.67171152
 0.765   21    0.9997999 -12.572633 0.03976970
 0.770   22    0.9998696 -12.546928 0.03126277
 0.775   22    0.9998847 -12.535751 0.02937919
 0.780   22    0.9998716 -12.519690 0.03096040
 0.785   22    0.9998141 -12.497619 0.03718415
 0.790   21    0.9996816 -12.504272 0.04989778
 0.795   22    0.9998126 -12.448989 0.03719634
 0.800   22    0.9997735 -12.412697 0.04077196
 0.805   22    0.9997322 -12.372578 0.04418470

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8050 [0.7343; 0.8757] 0.0529 0.2301 < 0.0001 0.1676  0
              0.9418 0.8100 [0.6441; 0.9759] 0.0527 0.2296 < 0.0001 0.1891  2
              0.8791 0.8150 [0.6491; 0.9809] 0.0525 0.2291 < 0.0001 0.2130  5
              0.8190 0.8200 [0.6541; 0.9859] 0.0523 0.2287 < 0.0001 0.2393  9
              0.7613 0.8250 [0.6591; 0.9909] 0.0521 0.2283 < 0.0001 0.2683 13
              0.7076 0.8300 [0.6641; 0.9958] 0.0519 0.2279 < 0.0001 0.2994 17
              0.6571 0.8349 [0.6690; 1.0008] 0.0518 0.2275 < 0.0001 0.3331 21
              0.6099 0.8399 [0.6740; 1.0058] 0.0516 0.2271 < 0.0001 0.3693 26
              0.5660 0.8449 [0.6790; 1.0108] 0.0514 0.2268 < 0.0001 0.4079 31
              0.5252 0.8499 [0.6840; 1.0158] 0.0513 0.2265 < 0.0001 0.4490 36
              0.4870 0.8550 [0.6891; 1.0208] 0.0512 0.2262 < 0.0001 0.4925 42
              0.4517 0.8600 [0.6941; 1.0259] 0.0511 0.2260 < 0.0001 0.5382 49
              0.4194 0.8649 [0.6990; 1.0308] 0.0510 0.2258 < 0.0001 0.5852 55
                                                                             
   Adjusted estimate 0.8050 [0.7343; 0.8757] 0.0529 0.2301 < 0.0001 0.1676  0
 Unadjusted estimate 0.8050 [0.7314; 0.8785] 0.0543 0.2329                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2582 2.0000
 range of gamma1:   0.0000 0.0007

Largest standard error (SE): 0.0828 

Range of probability publishing trial with largest SE:
    min    max
 0.3981 0.9777

Calculation of orthogonal line:

 level nobs adj.r.square     slope   se.slope
 0.810   20    0.9999994 -122.9650 0.02154160
 0.815   21    0.9989433 -120.0215 0.87286311
 0.820   20    0.9999984 -131.4075 0.03787977
 0.825   20    0.9999987 -120.0690 0.03089949
 0.830   20    0.9999983 -129.2990 0.03889553
 0.835   20    0.9999984 -126.3031 0.03712106
 0.840   20    0.9999984 -125.4785 0.03693241
 0.845   20    0.9999983 -126.0491 0.03766816
 0.850   20    0.9999982 -127.5774 0.03890058
 0.855   20    0.9999981 -129.7771 0.04051556
 0.860   20    0.9999985 -121.2253 0.03414550
 0.865   20    0.9999984 -124.6124 0.03602294

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[3]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8405 [0.7800; 0.9010] 0.0398 0.1995 < 0.0001 0.6488  0
              0.9636 0.8380 [0.7694; 0.9066] 0.0398 0.1994 < 0.0001 0.6780  1
              0.9322 0.8360 [0.7545; 0.9176] 0.0397 0.1994 < 0.0001 0.7032  3
              0.9002 0.8340 [0.7352; 0.9328] 0.0397 0.1993 < 0.0001 0.7294  4
              0.8692 0.8320 [0.7168; 0.9472] 0.0397 0.1993 < 0.0001 0.7551  5
              0.8384 0.8300 [0.7037; 0.9564] 0.0397 0.1992 < 0.0001 0.7812  7
              0.8085 0.8280 [0.6974; 0.9586] 0.0397 0.1992 < 0.0001 0.8071  9
              0.7794 0.8260 [0.6961; 0.9560] 0.0397 0.1992 < 0.0001 0.8324 10
              0.7508 0.8240 [0.6971; 0.9509] 0.0397 0.1991 < 0.0001 0.8572 12
              0.7234 0.8220 [0.6989; 0.9451] 0.0396 0.1991 < 0.0001 0.8801 14
              0.6976 0.8200 [0.7006; 0.9395] 0.0396 0.1991 < 0.0001 0.8996 16
              0.6634 0.8175 [0.7019; 0.9332] 0.0396 0.1991 < 0.0001 0.9180 19
              0.5213 0.8161 [0.6952; 0.9369] 0.0396 0.1990 < 0.0001 0.9546 34
                                                                             
   Adjusted estimate 0.8405 [0.7800; 0.9010] 0.0398 0.1995 < 0.0001 0.6488  0
 Unadjusted estimate 0.8405 [0.7776; 0.9034] 0.0408 0.2019                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2887 2.0000
 range of gamma1:   0.0000 0.0024

Largest standard error (SE): 0.0618 

Range of probability publishing trial with largest SE:
    min    max
 0.3864 0.9793

Calculation of orthogonal line:

 level nobs adj.r.square      slope    se.slope
 0.816   23    0.9455529  -5.108942 0.261033620
 0.818   21    0.9691652 -20.829403 0.830115458
 0.820   20    0.9999996 -30.658876 0.004522838
 0.822   21    0.9999987 -29.388104 0.007475343
 0.824   21    0.9988602 -30.049747 0.226969880
 0.826   21    0.9998676 -30.992178 0.079750596
 0.828   20    0.9999986 -30.649011 0.008180492
 0.830   20    0.9999979 -30.541409 0.010244778
 0.832   20    0.9999970 -31.144107 0.012386529
 0.834   21    0.9982569 -30.055437 0.280820236
 0.836   21    0.9998241 -31.602293 0.093718163
 0.838   21    0.9999675 -29.256089 0.037296253

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[4]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.7756 [0.6617; 0.8895] 0.0519 0.2278 < 0.0001 0.4076  0
              0.9383 0.7800 [0.6738; 0.8862] 0.0515 0.2269 < 0.0001 0.4404  1
              0.8046 0.7900 [0.6973; 0.8827] 0.0509 0.2256 < 0.0001 0.5093  2
              0.6902 0.8000 [0.7295; 0.8705] 0.0505 0.2246 < 0.0001 0.5781  5
              0.5930 0.8100 [0.7395; 0.8804] 0.0501 0.2239 < 0.0001 0.6479  7
              0.5105 0.8200 [0.7495; 0.8904] 0.0499 0.2234 < 0.0001 0.7188 10
              0.4402 0.8299 [0.7595; 0.9004] 0.0497 0.2230 < 0.0001 0.7905 14
              0.3793 0.8401 [0.3563; 1.3239] 0.0496 0.2228   0.0007 0.8636 18
                                                                             
   Adjusted estimate 0.7756 [0.6617; 0.8895] 0.0519 0.2278 < 0.0001 0.4076  0
 Unadjusted estimate 0.7755 [0.6467; 0.9044] 0.0556 0.2358                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.5849 2.0000
 range of gamma1:   0.0000 0.0257

Largest standard error (SE): 0.0767 

Range of probability publishing trial with largest SE:
    min    max
 0.2793 0.9902

Calculation of orthogonal line:

 level nobs adj.r.square     slope   se.slope
  0.78   24    0.9994734 -4.713988 0.02256257
  0.79   25    0.9996827 -4.616743 0.01679055
  0.80   24    0.9997053 -4.571973 0.01636834
  0.81   24    0.9997475 -4.543828 0.01505759
  0.82   24    0.9998024 -4.526263 0.01326805
  0.83   24    0.9998029 -4.506953 0.01319318
  0.84   20    0.9998799 -4.457757 0.01120733
  0.85   14    0.9999150 -4.399957 0.01125127
  0.86    9    0.9998942 -4.348163 0.01581678
  0.87    4    0.9999483 -4.254022 0.01765279

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```

\pagebreak
## Model: `mod_subgroup_JBI_Classification`

**Random effects model: 0.529 [0.493, 0.566]**  
Number of studies: 141  
Number of observations: 1,138,101  
Number of events: 787,444  

Heterogeneity measures:

- $\tau^2$: 0.046
- $I^2$: 99.74%
- $H$: 19.71
- Wald's $Q$: 54,384.51

![](report_files/figure-pdf/subgroup-summary-3.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8236 [0.7831; 0.8641] 0.0477 0.2185        0 0.6233  0
              0.9677 0.8260 [0.7828; 0.8692] 0.0477 0.2184 < 0.0001 0.6605  4
              0.9422 0.8280 [0.7827; 0.8733] 0.0477 0.2184 < 0.0001 0.6946  7
              0.9142 0.8300 [0.7807; 0.8793] 0.0477 0.2184 < 0.0001 0.7348 10
              0.8861 0.8320 [0.7771; 0.8868] 0.0477 0.2183 < 0.0001 0.7783 14
              0.8583 0.8340 [0.7719; 0.8960] 0.0477 0.2183 < 0.0001 0.8249 18
              0.8311 0.8360 [0.7654; 0.9066] 0.0476 0.2183 < 0.0001 0.8760 22
              0.8161 0.8371 [0.7613; 0.9129] 0.0476 0.2183 < 0.0001 0.9091 24
              0.8047 0.8380 [0.7583; 0.9177] 0.0476 0.2183 < 0.0001 0.9401 26
              0.7789 0.8400 [0.7520; 0.9279] 0.0476 0.2182 < 0.0001 0.9492 31
              0.7517 0.8421 [0.7482; 0.9361] 0.0476 0.2182 < 0.0001 1.0000 36
              0.6194 0.8420 [0.7551; 0.9289] 0.0476 0.2182 < 0.0001 1.0000 67
                                                                             
   Adjusted estimate 0.8236 [0.7831; 0.8641] 0.0477 0.2185        0 0.6233  0
 Unadjusted estimate 0.8236 [0.7824; 0.8647] 0.0482 0.2195                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2539 2.0000
 range of gamma1:   0.0000 0.0007

Largest standard error (SE): 0.1715 

Range of probability publishing trial with largest SE:
    min    max
 0.3998 0.9775

Calculation of orthogonal line:

 level nobs adj.r.square       slope    se.slope
 0.826   20  0.999700791 -130.942248 0.519699054
 0.828   20  0.999875260 -114.371992 0.293070267
 0.830   20  0.999999939 -115.536803 0.006520391
 0.832   20  0.999996200 -109.136291 0.048804681
 0.834   20  0.999999040 -107.444905 0.024152763
 0.836   20  0.999999901 -108.198824 0.007796354
 0.838   20  0.999999982 -110.610105 0.003359366
 0.840   20  0.999999979 -114.119629 0.003786602
 0.842   21  0.995484767   19.163700 0.288561163
 0.842   21  0.998110001  -86.393499 0.840595608
 0.844   31  0.001750303    4.223081 4.116209447

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.7733 [0.6979; 0.8487] 0.0362 0.1902 < 0.0001 0.6763  0
              0.9546 0.7700 [0.6976; 0.8424] 0.0360 0.1898 < 0.0001 0.7407  1
              0.8881 0.7650 [0.7002; 0.8298] 0.0359 0.1895 < 0.0001 0.8249  2
              0.8262 0.7600 [0.7092; 0.8108] 0.0358 0.1893 < 0.0001 0.9370  4
              0.7690 0.7550 [0.7042; 0.8059] 0.0358 0.1891 < 0.0001 1.0000  5
              0.7159 0.7500 [0.6992; 0.8009] 0.0357 0.1890 < 0.0001 1.0000  7
              0.6668 0.7450 [0.6942; 0.7959] 0.0357 0.1890 < 0.0001 1.0000  9
              0.6214 0.7400 [0.1246; 1.3555] 0.0357 0.1890   0.0184 1.0000 11
              0.5762 0.7346 [0.5400; 0.9293] 0.0357 0.1890 < 0.0001 1.0000 13
                                                                             
   Adjusted estimate 0.7733 [0.6979; 0.8487] 0.0362 0.1902 < 0.0001 0.6763  0
 Unadjusted estimate 0.7733 [0.6927; 0.8539] 0.0377 0.1942                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.5372 2.0000
 range of gamma1:   0.0000 0.0238

Largest standard error (SE): 0.0828 

Range of probability publishing trial with largest SE:
    min    max
 0.2955 0.9889

Calculation of orthogonal line:

 level nobs adj.r.square      slope   se.slope
 0.715    3  -0.95654403  0.2901131 1.94664828
 0.720   10  -0.08730031  0.2884387 0.54766438
 0.725   20  -0.04945040  0.1007268 0.31127296
 0.730   25   0.41578894 -1.3961927 0.32834742
 0.735    7   0.97362568  1.1292142 0.07570371
 0.735   23   0.99924492 -4.8449917 0.02839453
 0.740   24   0.99990225 -4.9984697 0.01030501
 0.745   24   0.99987924 -5.0065917 0.01147273
 0.750   24   0.99987459 -5.0155037 0.01171209
 0.755   23   0.99984623 -5.0294642 0.01329795
 0.760   24   0.99983452 -5.0387120 0.01351634
 0.765   24   0.99978312 -5.0573945 0.01553154
 0.770   24   0.99970466 -5.1011130 0.01828200

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```

\pagebreak
## Model: `mod_subgroup_Setting`

**Random effects model: 0.529 [0.493, 0.566]**  
Number of studies: 141  
Number of observations: 1,138,101  
Number of events: 787,444  

Heterogeneity measures:

- $\tau^2$: 0.046
- $I^2$: 99.74%
- $H$: 19.71
- Wald's $Q$: 54,384.51

![](report_files/figure-pdf/subgroup-summary-4.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau p.trt  p.rsb N
              1.0000 0.8322 [0.7934; 0.8710] 0.0443 0.2104     0 0.9633 0
                                                                         
   Adjusted estimate 0.8322 [0.7934; 0.8710] 0.0443 0.2104     0 0.9633 0
 Unadjusted estimate 0.8322 [0.7928; 0.8716] 0.0447 0.2113               

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2539 2.0000
 range of gamma1:   0.0000 0.0007

Largest standard error (SE): 0.1715 

Range of probability publishing trial with largest SE:
    min    max
 0.3998 0.9775

Calculation of orthogonal line:

  level nobs adj.r.square       slope    se.slope
 0.8332   17   0.99999805 -134.332456  0.04684180
 0.8334   20   0.99998050 -116.480830  0.11800942
 0.8336   20   0.99998855 -124.370799  0.09652946
 0.8338   21   0.99861758 -127.696589  1.06235630
 0.8340   25   0.59096715    2.903433  0.48610481
 0.8340   20   0.99999871 -121.776317  0.03174188
 0.8342   20   0.98908882  310.373661  7.47653314
 0.8342   21   0.99954696 -129.767289  0.61775059
 0.8344   20   0.99161961  314.256315  6.62628465
 0.8344   20   0.99999909 -122.922696  0.02689812
 0.8346   20   0.99386498  318.131373  5.73328321
 0.8346   21   0.99999811 -115.168567  0.03544989
 0.8348   20   0.99580105  321.991293  4.79626717
 0.8348   20   0.99999944 -125.363083  0.02153406
 0.8350   20   0.99740285  325.827878  3.81412257
 0.8350   20   0.99999926 -118.768181  0.02347615
 0.8352   20   0.99864439  329.632263  2.78611669
 0.8352   21   0.99988343 -129.494522  0.31265300
 0.8354   20   0.99949864  333.394886  1.71301147
 0.8354   20   0.99999963 -124.487569  0.01735396
 0.8356   20   0.99993763  337.105474  0.61076784
 0.8356   20   0.99999950 -119.230345  0.01941555
 0.8358   11  -0.03815876  -22.847788 28.72996775

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.7287 [0.6416; 0.8158] 0.0461 0.2146 < 0.0001 0.0640  0
              0.9003 0.7350 [0.6716; 0.7984] 0.0454 0.2131 < 0.0001 0.0792  2
              0.8212 0.7400 [0.6670; 0.8130] 0.0449 0.2119 < 0.0001 0.0939  4
              0.7477 0.7450 [0.6735; 0.8165] 0.0444 0.2107 < 0.0001 0.1109  7
              0.6798 0.7500 [0.6813; 0.8187] 0.0439 0.2096 < 0.0001 0.1305  9
              0.6184 0.7550 [0.6900; 0.8200] 0.0435 0.2086 < 0.0001 0.1526 12
              0.5623 0.7600 [0.6997; 0.8202] 0.0431 0.2076 < 0.0001 0.1777 15
              0.5111 0.7650 [0.7109; 0.8190] 0.0427 0.2066 < 0.0001 0.2060 19
              0.4646 0.7699 [0.7247; 0.8152] 0.0423 0.2057 < 0.0001 0.2377 23
              0.4224 0.7749 [0.7442; 0.8057] 0.0420 0.2049        0 0.2729 27
                                                                             
   Adjusted estimate 0.7450 [0.6735; 0.8165] 0.0444 0.2107 < 0.0001 0.1109  7
 Unadjusted estimate 0.7286 [0.6353; 0.8220] 0.0481 0.2193                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2786 2.0000
 range of gamma1:   0.0000 0.0024

Largest standard error (SE): 0.0828 

Range of probability publishing trial with largest SE:
    min    max
 0.3903 0.9788

Calculation of orthogonal line:

 level nobs adj.r.square     slope   se.slope
 0.735   21    0.9982960 -30.07471 0.27782739
 0.740   21    0.9984449 -30.16024 0.26614989
 0.745   21    0.9986186 -30.66175 0.25499040
 0.750   21    0.9999697 -29.64193 0.03647384
 0.755   21    0.9991623 -30.68484 0.19866353
 0.760   21    0.9999830 -30.76380 0.02839160
 0.765   20    0.9999850 -30.47517 0.02710503
 0.770   20    0.9999851 -30.48958 0.02695952
 0.775   21    0.9999187 -30.61782 0.06174778
 0.780    8    0.9999971 -28.29850 0.01808694

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```

\pagebreak
## Model: `mod_subgroup_use_guideline`

**Random effects model: 0.529 [0.493, 0.566]**  
Number of studies: 141  
Number of observations: 1,138,101  
Number of events: 787,444  

Heterogeneity measures:

- $\tau^2$: 0.046
- $I^2$: 99.74%
- $H$: 19.71
- Wald's $Q$: 54,384.51

![](report_files/figure-pdf/subgroup-summary-5.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8118 [0.7747; 0.8489] 0.0461 0.2146        0 0.6945  0
              0.9708 0.8130 [0.7684; 0.8576] 0.0461 0.2146 < 0.0001 0.7196  4
              0.9687 0.8131 [0.7677; 0.8584] 0.0461 0.2146 < 0.0001 0.7213  4
              0.9604 0.8144 [0.7729; 0.8560] 0.0461 0.2146 < 0.0001 0.7383  5
              0.9387 0.8160 [0.7717; 0.8603] 0.0461 0.2146 < 0.0001 0.7645  8
              0.9249 0.8170 [0.7708; 0.8632] 0.0460 0.2146 < 0.0001 0.7818 10
              0.9111 0.8180 [0.7697; 0.8663] 0.0460 0.2146 < 0.0001 0.7994 12
              0.8968 0.8190 [0.7683; 0.8697] 0.0460 0.2146 < 0.0001 0.8176 14
              0.8822 0.8200 [0.7665; 0.8735] 0.0460 0.2146 < 0.0001 0.8362 17
              0.8670 0.8210 [0.7643; 0.8777] 0.0460 0.2146 < 0.0001 0.8552 19
              0.8503 0.8220 [0.7613; 0.8827] 0.0460 0.2146 < 0.0001 0.8752 22
              0.8313 0.8230 [0.7575; 0.8886] 0.0460 0.2146 < 0.0001 0.8909 26
              0.8051 0.8241 [0.7522; 0.8959] 0.0460 0.2145 < 0.0001 0.9212 31
              0.7547 0.8250 [0.7469; 0.9031] 0.0460 0.2145 < 0.0001 0.9538 41
                                                                             
   Adjusted estimate 0.8118 [0.7747; 0.8489] 0.0461 0.2146        0 0.6945  0
 Unadjusted estimate 0.8118 [0.7742; 0.8494] 0.0464 0.2155                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2539 2.0000
 range of gamma1:   0.0000 0.0007

Largest standard error (SE): 0.1715 

Range of probability publishing trial with largest SE:
    min    max
 0.3998 0.9775

Calculation of orthogonal line:

 level nobs adj.r.square      slope    se.slope
 0.813   20   0.99999925 -110.51287  0.02197695
 0.814   21   0.41204753   15.39656  3.97321031
 0.815   20  -0.03456279   14.26596 23.60523475
 0.816   20   0.99981578 -121.70148  0.37899072
 0.817   20   0.99980361 -121.73329  0.39141350
 0.818   20   0.99979560 -122.57902  0.40209186
 0.819   20   0.99978324 -121.54007  0.41056356
 0.820   20   0.99975054 -108.70665  0.39394442
 0.821   20   0.99973125 -104.04608  0.39136037
 0.822   21   0.99895510  -90.06853  0.65134605
 0.823   20   0.99965431  -82.27204  0.35098510
 0.824   20   0.99961055  -56.60480  0.25631850
 0.825   21   0.99043591  -27.13784  0.59616187

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb N
              1.0000 0.8594 [0.7118; 1.0069] 0.0432 0.2077 < 0.0001 0.2428 0
              0.8745 0.8700 [0.7440; 0.9960] 0.0421 0.2051 < 0.0001 0.2771 1
              0.7630 0.8800 [0.7649; 0.9952] 0.0412 0.2029 < 0.0001 0.3121 2
              0.6644 0.8900 [0.7896; 0.9905] 0.0404 0.2010 < 0.0001 0.3498 3
              0.5784 0.9000 [0.8211; 0.9790] 0.0397 0.1992 < 0.0001 0.3903 4
              0.5036 0.9100 [0.8742; 0.9459] 0.0390 0.1975        0 0.4335 6
              0.4386 0.9200 [0.8842; 0.9559] 0.0384 0.1961        0 0.4796 8
                                                                            
   Adjusted estimate 0.8594 [0.7118; 1.0069] 0.0432 0.2077 < 0.0001 0.2428 0
 Unadjusted estimate 0.8590 [0.6700; 1.0481] 0.0495 0.2224                  

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.5025 2.0000
 range of gamma1:   0.0000 0.0158

Largest standard error (SE): 0.0627 

Range of probability publishing trial with largest SE:
    min    max
 0.3077 0.9879

Calculation of orthogonal line:

 level nobs adj.r.square     slope    se.slope
  0.87   23    0.9992570 -7.536289 0.043813410
  0.88   22    0.9991932 -7.447918 0.046181219
  0.89   22    0.9993300 -7.376022 0.041676533
  0.90   22    0.9994165 -7.339439 0.038698837
  0.91   23    0.9995470 -7.299076 0.033128030
  0.92   23    0.9995994 -7.264031 0.031003088
  0.93   19    0.9997485 -7.150309 0.026729653
  0.94   11    0.9999428 -6.946937 0.016619400
  0.95    3    0.9999988 -6.562372 0.005144002

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```

\pagebreak



## Meta-regression

### Univariate models




### Model: `mod_metareg_Age`

```


Mixed-Effects Model (k = 71; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-100.8685   201.7370   207.7370   214.4394   208.1063   

tau^2 (estimated amount of residual heterogeneity): 1.0873 (SE = 0.1872)
tau (square root of estimated tau^2 value):         1.0427
R^2 (amount of heterogeneity accounted for):        0.00%

Test of Moderators (coefficient 2):
QM(df = 1) = 0.0798, p-val = 0.7775

Model Results:

         estimate      se     zval    pval    ci.lb   ci.ub    
intrcpt    0.1729  0.1618   1.0686  0.2853  -0.1443  0.4901    
Age>=65   -0.0715  0.2532  -0.2825  0.7775  -0.5677  0.4247    

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-1.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_Continent`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-195.9406   391.8811   401.8811   416.4811   402.3392   

tau^2 (estimated amount of residual heterogeneity): 1.0186 (SE = 0.1248)
tau (square root of estimated tau^2 value):         1.0093
R^2 (amount of heterogeneity accounted for):        0.00%

Test of Moderators (coefficients 2:4):
QM(df = 3) = 1.2951, p-val = 0.7303

Model Results:

                 estimate      se     zval    pval    ci.lb   ci.ub    
intrcpt            0.0819  0.1568   0.5223  0.6015  -0.2254  0.3891    
ContinentAsia      0.0453  0.2253   0.2009  0.8407  -0.3963  0.4868    
ContinentEurope    0.1610  0.2202   0.7315  0.4645  -0.2705  0.5925    
ContinentOther    -0.1588  0.2976  -0.5338  0.5935  -0.7420  0.4244    

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-2.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_JBI_Classification`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-197.9384   395.8768   401.8768   410.6803   402.0546   

tau^2 (estimated amount of residual heterogeneity): 1.0059 (SE = 0.1223)
tau (square root of estimated tau^2 value):         1.0030
R^2 (amount of heterogeneity accounted for):        0.05%

Test of Moderators (coefficient 2):
QM(df = 1) = 1.0342, p-val = 0.3092

Model Results:

                                  estimate      se     zval    pval    ci.lb 
intrcpt                             0.1667  0.0942   1.7706  0.0766  -0.0178 
JBI_ClassificationMedium Quality   -0.2237  0.2199  -1.0169  0.3092  -0.6548 
                                   ci.ub    
intrcpt                           0.3513  . 
JBI_ClassificationMedium Quality  0.2074    

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-3.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_Setting`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-196.1796   392.3593   398.3593   407.1627   398.5371   

tau^2 (estimated amount of residual heterogeneity): 0.9808 (SE = 0.1193)
tau (square root of estimated tau^2 value):         0.9904
R^2 (amount of heterogeneity accounted for):        2.54%

Test of Moderators (coefficient 2):
QM(df = 1) = 4.6381, p-val = 0.0313

Model Results:

              estimate      se     zval    pval    ci.lb    ci.ub    
intrcpt         0.2083  0.0924   2.2548  0.0241   0.0272   0.3894  * 
SettingOther   -0.4792  0.2225  -2.1536  0.0313  -0.9153  -0.0431  * 

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-4.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_use_guideline`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-198.3031   396.6061   402.6061   411.4095   402.7839   

tau^2 (estimated amount of residual heterogeneity): 1.0114 (SE = 0.1230)
tau (square root of estimated tau^2 value):         1.0057
R^2 (amount of heterogeneity accounted for):        0.00%

Test of Moderators (coefficient 2):
QM(df = 1) = 0.3145, p-val = 0.5749

Model Results:

                           estimate      se    zval    pval    ci.lb   ci.ub    
intrcpt                      0.1140  0.0879  1.2967  0.1947  -0.0583  0.2862    
use_guidelineNo Guideline    0.2060  0.3673  0.5608  0.5749  -0.5139  0.9258    

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
| -186.1556   372.3111   392.3111   421.1391   394.1293   
| 
| tau^2 (estimated amount of residual heterogeneity): 0.9783 (SE = 0.1221)
| tau (square root of estimated tau^2 value):         0.9891
| R^2 (amount of heterogeneity accounted for):        2.80%
| 
| Test of Moderators (coefficients 2:9):
| QM(df = 8) = 11.9064, p-val = 0.1554
| 
| Model Results:
| 
|                                   estimate       se     zval    pval     ci.lb 
| intrcpt                            56.9993  35.4601   1.6074  0.1080  -12.5013 
| Year                               -0.0282   0.0176  -1.6013  0.1093   -0.0627 
| JBI_ClassificationMedium Quality   -0.2108   0.2186  -0.9643  0.3349   -0.6394 
| use_guidelineNo Guideline           0.1963   0.3849   0.5100  0.6100   -0.5581 
| SettingOther                       -0.5211   0.2300  -2.2656  0.0235   -0.9719 
| ContinentAsia                       0.1029   0.2406   0.4275  0.6690   -0.3687 
| ContinentEurope                     0.2309   0.2210   1.0446  0.2962   -0.2023 
| ContinentOther                     -0.1813   0.3015  -0.6014  0.5476   -0.7721 
| Sample_size                         0.0000   0.0000   0.7295  0.4657   -0.0000 
|                                      ci.ub    
| intrcpt                           126.4999    
| Year                                0.0063    
| JBI_ClassificationMedium Quality    0.2177    
| use_guidelineNo Guideline           0.9507    
| SettingOther                       -0.0703  * 
| ContinentAsia                       0.5745    
| ContinentEurope                     0.6640    
| ContinentOther                      0.4095    
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
