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

All analyses were conducted in `R` version 4.5.2. The computational workflow was managed using the `targets` and `tarchetypes` packages to ensure full reproducibility and traceability of all analytical steps. Parallel processing was implemented with the `crew` package to optimize execution of iterative subgroup and meta regression models.

# Results



::: {.cell}

:::



## Overall Prevalence of Inappropriate Use

This meta-analysis included 141 studies comprising 1,501,367 participants. Across these studies, 964,364 instances of inappropriate use of acid suppressing agents were identified. Using a random effects model, the pooled prevalence of inappropriate use was 53.19% [49.5-56.87%].

## Heterogeneity



::: {.cell}

:::



Substantial between study heterogeneity was observed. The $I^2$ statistic was 99.87%, $\tau^2$ was 0.047, H was 27.27, and Wald's Q was 104,098.4. The extremely high $I^2$ value indicates that nearly all observed variability in prevalence estimates was attributable to true differences across studies rather than sampling error. Reported prevalence estimates varied widely, confirming marked heterogeneity and suggesting that inappropriate use is strongly influenced by contextual and study level factors.

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



**Random effects model: 0.532 [0.495, 0.569]**  
Number of studies: 141  
Number of observations: 1,501,367  
Number of events: 964,364  

Heterogeneity measures:

- $\tau^2$: 0.047
- $I^2$: 99.87%
- $H$: 27.27
- Wald's $Q$: 104,098.4

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
|               p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb   N
|               1.0000 0.8171 [0.7809; 0.8534] 0.0467 0.2162        0 0.5586   0
|               0.9633 0.8202 [0.7747; 0.8657] 0.0467 0.2161 < 0.0001 0.6092   5
|               0.9398 0.8220 [0.7699; 0.8741] 0.0467 0.2161 < 0.0001 0.6405   9
|               0.9132 0.8240 [0.7656; 0.8823] 0.0467 0.2161 < 0.0001 0.6730  13
|               0.8864 0.8260 [0.7632; 0.8888] 0.0467 0.2160 < 0.0001 0.7079  17
|               0.8599 0.8280 [0.7626; 0.8934] 0.0467 0.2160 < 0.0001 0.7419  22
|               0.8341 0.8300 [0.7633; 0.8966] 0.0467 0.2160 < 0.0001 0.7741  27
|               0.8088 0.8320 [0.7650; 0.8990] 0.0467 0.2160 < 0.0001 0.8032  32
|               0.7783 0.8344 [0.7675; 0.9013] 0.0467 0.2160 < 0.0001 0.8423  38
|               0.7221 0.8360 [0.7640; 0.9080] 0.0466 0.2160 < 0.0001 0.8838  52
|               0.5418 0.8380 [0.7595; 0.9165] 0.0466 0.2160 < 0.0001 0.9577 114
|                                                                               
|    Adjusted estimate 0.8171 [0.7809; 0.8534] 0.0467 0.2162        0 0.5586   0
|  Unadjusted estimate 0.8171 [0.7804; 0.8539] 0.0471 0.2170                    
| 
| Significance level for test of residual selection bias: 0.1 
| 
|                        min    max
|  range of gamma0:  -0.2582 2.0000
|  range of gamma1:   0.0000 0.0007
| 
| Largest standard error (SE): 0.0828 
| 
| Range of probability publishing trial with largest SE:
|     min    max
|  0.3981 0.9777
| 
| Calculation of orthogonal line:
| 
|  level nobs adj.r.square      slope    se.slope
|  0.820   20    0.9999895 -355.04272 0.264244312
|  0.822   20    0.9999999 -111.65486 0.007109150
|  0.824   20    0.9999529 -120.55139 0.189896358
|  0.826   20    0.9999878 -114.00407 0.091251868
|  0.828   20    0.9999999 -112.58984 0.007740600
|  0.830   20    0.9999999 -113.89054 0.008678067
|  0.832   20    0.9999998 -116.73044 0.010833089
|  0.834   20    0.9999852  -78.66623 0.069490472
|  0.836   20    0.9999186  -40.38937 0.083606475
|  0.838   22    0.9967213  -12.91800 0.161665007
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

**Random effects model: 0.532 [0.495, 0.569]**  
Number of studies: 141  
Number of observations: 1,501,367  
Number of events: 964,364  

Heterogeneity measures:

- $\tau^2$: 0.047
- $I^2$: 99.87%
- $H$: 27.27
- Wald's $Q$: 104,098.4

![](report_files/figure-pdf/subgroup-summary-2.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8213 [0.7559; 0.8867] 0.0443 0.2105 < 0.0001 0.0701  0
              0.9076 0.8150 [0.7548; 0.8753] 0.0438 0.2093 < 0.0001 0.0879  3
              0.8337 0.8100 [0.7537; 0.8663] 0.0435 0.2086 < 0.0001 0.1033  6
              0.7646 0.8050 [0.7531; 0.8570] 0.0432 0.2079 < 0.0001 0.1205 10
              0.7008 0.8000 [0.7534; 0.8467] 0.0430 0.2073 < 0.0001 0.1384 14
              0.6419 0.7950 [0.7553; 0.8347] 0.0428 0.2068        0 0.1591 18
              0.5881 0.7900 [0.7605; 0.8195] 0.0425 0.2062        0 0.1817 23
              0.5387 0.7850 [0.7797; 0.7903] 0.0423 0.2058        0 0.2065 28
              0.4935 0.7800 [0.7747; 0.7853] 0.0422 0.2053        0 0.2335 34
              0.4523 0.7750 [0.7697; 0.7803] 0.0420 0.2049        0 0.2627 40
              0.4146 0.7700 [0.7647; 0.7753] 0.0418 0.2045        0 0.2942 46
                                                                             
   Adjusted estimate 0.8100 [0.7537; 0.8663] 0.0435 0.2086 < 0.0001 0.1033  6
 Unadjusted estimate 0.8213 [0.7528; 0.8898] 0.0455 0.2132                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.3583 2.0000
 range of gamma1:   0.0000 0.0072

Largest standard error (SE): 0.0665 

Range of probability publishing trial with largest SE:
    min    max
 0.3601 0.9825

Calculation of orthogonal line:

 level nobs adj.r.square     slope   se.slope
 0.760    7    0.9999854 -10.86106 0.01692337
 0.765   16    0.9999460 -11.25890 0.02137118
 0.770   21    0.9998470 -11.36541 0.03143233
 0.775   22    0.9998729 -11.35226 0.02793095
 0.780   22    0.9998750 -11.36734 0.02773160
 0.785   22    0.9998661 -11.39480 0.02877865
 0.790   22    0.9998541 -11.41390 0.03008704
 0.795   22    0.9998313 -11.42482 0.03238575
 0.800   21    0.9997397 -11.49213 0.04146711
 0.805   22    0.9997911 -11.50174 0.03628197
 0.810   22    0.9997471 -11.55051 0.04008882
 0.815   22    0.9996923 -11.66160 0.04464456

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8050 [0.7343; 0.8757] 0.0529 0.2300 < 0.0001 0.1959  0
              0.9409 0.8100 [0.6595; 0.9605] 0.0527 0.2296 < 0.0001 0.2214  2
              0.8774 0.8150 [0.6645; 0.9655] 0.0525 0.2291 < 0.0001 0.2497  5
              0.8162 0.8200 [0.6695; 0.9704] 0.0523 0.2287 < 0.0001 0.2809  9
              0.7574 0.8250 [0.6745; 0.9755] 0.0521 0.2283 < 0.0001 0.3154 13
              0.7033 0.8299 [0.6795; 0.9804] 0.0519 0.2279 < 0.0001 0.3519 17
              0.6521 0.8349 [0.6845; 0.9854] 0.0518 0.2275 < 0.0001 0.3915 21
              0.6044 0.8399 [0.6895; 0.9904] 0.0516 0.2272 < 0.0001 0.4338 26
              0.5602 0.8449 [0.6945; 0.9954] 0.0515 0.2269 < 0.0001 0.4786 31
              0.5191 0.8499 [0.6995; 1.0004] 0.0514 0.2267 < 0.0001 0.5258 36
              0.4809 0.8549 [0.7045; 1.0054] 0.0513 0.2264 < 0.0001 0.5754 42
              0.4452 0.8600 [0.7095; 1.0105] 0.0512 0.2262 < 0.0001 0.6274 49
              0.4128 0.8649 [0.5428; 1.1871] 0.0511 0.2260 < 0.0001 0.6798 56
                                                                             
   Adjusted estimate 0.8050 [0.7343; 0.8757] 0.0529 0.2300 < 0.0001 0.1959  0
 Unadjusted estimate 0.8050 [0.7314; 0.8785] 0.0542 0.2329                   

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
 0.810   20    0.9999881 -120.9222 0.09570389
 0.815   21    0.9994975 -131.5600 0.65958020
 0.820   20    0.9999858 -128.7688 0.11138569
 0.825   21    0.9997666 -118.4758 0.40476039
 0.830   20    0.9999889 -126.5259 0.09671366
 0.835   20    0.9999896 -123.5443 0.09155483
 0.840   20    0.9999900 -122.6990 0.08900550
 0.845   20    0.9999902 -123.2350 0.08829130
 0.850   20    0.9999904 -124.7161 0.08862592
 0.855   20    0.9999905 -126.8616 0.08968445
 0.860   21    0.9993924 -121.6858 0.67089079
 0.865   20    0.9999914 -121.7483 0.08181831

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[3]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8489 [0.7867; 0.9110] 0.0420 0.2050 < 0.0001 0.6454  0
              0.9587 0.8460 [0.7720; 0.9200] 0.0420 0.2050 < 0.0001 0.6788  2
              0.9272 0.8440 [0.7515; 0.9366] 0.0420 0.2049 < 0.0001 0.7040  3
              0.8960 0.8420 [0.7243; 0.9598] 0.0420 0.2048 < 0.0001 0.7294  4
              0.8650 0.8400 [0.6980; 0.9821] 0.0419 0.2048 < 0.0001 0.7552  6
              0.8346 0.8380 [0.6826; 0.9934] 0.0419 0.2048 < 0.0001 0.7812  7
              0.8052 0.8360 [0.6797; 0.9924] 0.0419 0.2047 < 0.0001 0.8037  9
              0.7766 0.8340 [0.6832; 0.9849] 0.0419 0.2047 < 0.0001 0.8325 11
              0.7485 0.8320 [0.6885; 0.9756] 0.0419 0.2046 < 0.0001 0.8580 12
              0.7213 0.8300 [0.6934; 0.9666] 0.0419 0.2046 < 0.0001 0.8825 14
              0.6958 0.8280 [0.6973; 0.9588] 0.0419 0.2046 < 0.0001 0.9044 16
              0.6680 0.8258 [0.7006; 0.9511] 0.0419 0.2046 < 0.0001 0.9252 18
              0.6340 0.8240 [0.7014; 0.9467] 0.0419 0.2046 < 0.0001 0.9297 21
                                                                             
   Adjusted estimate 0.8489 [0.7867; 0.9110] 0.0420 0.2050 < 0.0001 0.6454  0
 Unadjusted estimate 0.8489 [0.7843; 0.9134] 0.0431 0.2075                   

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
 0.822   18    0.9693420  -2.043981 0.088080937
 0.824   21    0.9775192 -22.128532 0.749948668
 0.826   21    0.9987181 -27.051088 0.216697865
 0.828   20    0.9999997 -30.807534 0.004020321
 0.830   21    0.9999493 -29.589367 0.047128826
 0.832   21    0.9989755 -30.693899 0.219785009
 0.834   20    0.9999991 -31.185293 0.006773268
 0.836   20    0.9999985 -30.535595 0.008525512
 0.838   20    0.9999977 -30.291676 0.010610785
 0.840   20    0.9999964 -30.704845 0.013453031
 0.842   21    0.9994280 -31.629199 0.169200140
 0.844   20    0.9999920 -30.462113 0.019726528
 0.846   21    0.9996088 -32.328016 0.143004945

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[4]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.7470 [0.6411; 0.8529] 0.0417 0.2043 < 0.0001 0.1641  0
              0.9562 0.7500 [0.6470; 0.8531] 0.0412 0.2030 < 0.0001 0.1770  0
              0.8163 0.7600 [0.6635; 0.8565] 0.0401 0.2003 < 0.0001 0.2199  2
              0.6971 0.7700 [0.6804; 0.8596] 0.0393 0.1981 < 0.0001 0.2665  4
              0.5965 0.7800 [0.6993; 0.8606] 0.0386 0.1964 < 0.0001 0.3177  6
              0.5114 0.7900 [0.7226; 0.8573] 0.0380 0.1949 < 0.0001 0.3735  9
              0.4392 0.7999 [0.7576; 0.8423] 0.0375 0.1936 < 0.0001 0.4339 13
              0.3769 0.8101 [0.7677; 0.8524] 0.0371 0.1926 < 0.0001 0.4999 16
                                                                             
   Adjusted estimate 0.7470 [0.6411; 0.8529] 0.0417 0.2043 < 0.0001 0.1641  0
 Unadjusted estimate 0.7468 [0.6260; 0.8676] 0.0450 0.2120                   

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
  0.75   24    0.9992746 -4.678566 0.02628418
  0.76   24    0.9995695 -4.548400 0.01968258
  0.77   24    0.9996598 -4.496669 0.01729675
  0.78   24    0.9997209 -4.463530 0.01555144
  0.79   25    0.9997993 -4.437775 0.01283396
  0.80   24    0.9997892 -4.420704 0.01338491
  0.81   20    0.9998793 -4.366909 0.01100559
  0.82   14    0.9999145 -4.305403 0.01104448
  0.83    9    0.9998900 -4.251434 0.01576286
  0.84    4    0.9999647 -4.150703 0.01424632

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```

\pagebreak
## Model: `mod_subgroup_JBI_Classification`

**Random effects model: 0.532 [0.495, 0.569]**  
Number of studies: 141  
Number of observations: 1,501,367  
Number of events: 964,364  

Heterogeneity measures:

- $\tau^2$: 0.047
- $I^2$: 99.87%
- $H$: 27.27
- Wald's $Q$: 104,098.4

![](report_files/figure-pdf/subgroup-summary-3.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8268 [0.7860; 0.8676] 0.0485 0.2203        0 0.6633  0
              0.9703 0.8279 [0.7871; 0.8687] 0.0485 0.2203        0 0.6843  3
              0.9590 0.8300 [0.7520; 0.9079] 0.0485 0.2202 < 0.0001 0.7218  5
              0.9306 0.8320 [0.7354; 0.9285] 0.0485 0.2202 < 0.0001 0.7594  8
              0.9014 0.8340 [0.7363; 0.9317] 0.0485 0.2202 < 0.0001 0.7977 12
              0.8732 0.8360 [0.7432; 0.9287] 0.0485 0.2201 < 0.0001 0.8349 16
              0.8452 0.8380 [0.7504; 0.9255] 0.0485 0.2201 < 0.0001 0.8716 20
              0.8175 0.8400 [0.7567; 0.9232] 0.0485 0.2201 < 0.0001 0.9061 24
              0.7874 0.8422 [0.7627; 0.9217] 0.0485 0.2201 < 0.0001 0.9363 29
              0.5782 0.8440 [0.7571; 0.9309] 0.0485 0.2201 < 0.0001 0.9851 80
                                                                             
   Adjusted estimate 0.8268 [0.7860; 0.8676] 0.0485 0.2203        0 0.6633  0
 Unadjusted estimate 0.8268 [0.7853; 0.8683] 0.0490 0.2213                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2588 2.0000
 range of gamma1:   0.0000 0.0007

Largest standard error (SE): 0.0767 

Range of probability publishing trial with largest SE:
    min    max
 0.3979 0.9777

Calculation of orthogonal line:

 level nobs adj.r.square       slope   se.slope
 0.828   20    0.9999803 -761.032707 0.77398925
 0.830   20    0.9999866 -115.554031 0.09699810
 0.832   20    0.9999994 -111.418440 0.01944124
 0.834   21    0.9990527 -104.059647 0.71646733
 0.836   20    0.9999993 -113.398137 0.02139486
 0.838   20    0.9999993 -112.108977 0.02120660
 0.840   20    0.9999993 -113.028492 0.02224835
 0.842   21    0.9859926  -67.110040 1.78796725
 0.844   23    0.9801289   -5.971769 0.18120100

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

**Random effects model: 0.532 [0.495, 0.569]**  
Number of studies: 141  
Number of observations: 1,501,367  
Number of events: 964,364  

Heterogeneity measures:

- $\tau^2$: 0.047
- $I^2$: 99.87%
- $H$: 27.27
- Wald's $Q$: 104,098.4

![](report_files/figure-pdf/subgroup-summary-4.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau p.trt  p.rsb N
              1.0000 0.8353 [0.7963; 0.8744] 0.0450 0.2121     0 0.9979 0
                                                                         
   Adjusted estimate 0.8353 [0.7963; 0.8744] 0.0450 0.2121     0 0.9979 0
 Unadjusted estimate 0.8353 [0.7956; 0.8751] 0.0454 0.2131               

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2588 2.0000
 range of gamma1:   0.0000 0.0007

Largest standard error (SE): 0.0767 

Range of probability publishing trial with largest SE:
    min    max
 0.3979 0.9777

Calculation of orthogonal line:

  level nobs adj.r.square      slope     se.slope
 0.8340   21    0.7507744   91.68487  11.71519808
 0.8345   20    0.9017514 1931.89195 145.87607093
 0.8350   20    0.9445081 1714.39302  95.18643679
 0.8355   20    0.9693438 1527.10295  62.25157571
 0.8360   20    0.9838051 1369.48008  40.29265465
 0.8365   20    0.9921274 1237.29740  25.28024364
 0.8365   20    0.9999966 -115.65954   0.04913420
 0.8370   20    0.9967339 1125.97686  14.78574877
 0.8370   20    0.9999995 -124.79870   0.02105374
 0.8375   20    0.9990468 1031.53455   7.30969033
 0.8375   20    0.9999990 -120.19476   0.02706717
 0.8380   20    0.9999236  950.73796   1.90636615
 0.8380   20    0.9999994 -119.47886   0.02209306

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

[[2]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.7288 [0.6418; 0.8159] 0.0460 0.2146 < 0.0001 0.0669  0
              0.9018 0.7350 [0.6730; 0.7970] 0.0454 0.2130 < 0.0001 0.0836  2
              0.8220 0.7400 [0.6673; 0.8127] 0.0449 0.2118 < 0.0001 0.0999  4
              0.7478 0.7450 [0.6737; 0.8162] 0.0444 0.2106 < 0.0001 0.1189  7
              0.6787 0.7500 [0.6817; 0.8183] 0.0439 0.2095 < 0.0001 0.1411 10
              0.6166 0.7550 [0.6905; 0.8194] 0.0434 0.2084 < 0.0001 0.1661 13
              0.5595 0.7600 [0.7006; 0.8193] 0.0430 0.2074 < 0.0001 0.1949 16
              0.5076 0.7650 [0.7126; 0.8173] 0.0426 0.2064 < 0.0001 0.2276 20
              0.4606 0.7700 [0.7279; 0.8120] 0.0422 0.2055 < 0.0001 0.2642 24
              0.4180 0.7749 [0.7525; 0.7974] 0.0419 0.2047        0 0.3050 29
                                                                             
   Adjusted estimate 0.7450 [0.6737; 0.8162] 0.0444 0.2106 < 0.0001 0.1189  7
 Unadjusted estimate 0.7287 [0.6354; 0.8221] 0.0481 0.2192                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2632 2.0000
 range of gamma1:   0.0000 0.0011

Largest standard error (SE): 0.0828 

Range of probability publishing trial with largest SE:
    min    max
 0.3962 0.9780

Calculation of orthogonal line:

 level nobs adj.r.square     slope   se.slope
 0.735   21    0.9993338 -60.04964 0.34667785
 0.740   21    0.9978912 -62.89455 0.64647610
 0.745   20    0.9999405 -65.39865 0.11576223
 0.750   21    0.9999398 -60.10100 0.10431262
 0.755   20    0.9999491 -63.92006 0.10465888
 0.760   20    0.9999541 -62.25969 0.09679843
 0.765   20    0.9999570 -61.58834 0.09265041
 0.770   20    0.9999588 -61.58202 0.09067721
 0.775   20    0.9999627 -62.00815 0.08692792

 Legend:
 p.publ - Probability of publishing study with largest SE
 p.trt  - P-value for test of overall treatment effect
 p.rsb  - P-value for test of residual selection bias
 N      - Estimated number of unpublished studies

```

\pagebreak
## Model: `mod_subgroup_use_guideline`

**Random effects model: 0.532 [0.495, 0.569]**  
Number of studies: 141  
Number of observations: 1,501,367  
Number of events: 964,364  

Heterogeneity measures:

- $\tau^2$: 0.047
- $I^2$: 99.87%
- $H$: 27.27
- Wald's $Q$: 104,098.4

![](report_files/figure-pdf/subgroup-summary-5.pdf){width=100%}

```

[[1]]
Copas selection model analysis

              p.publ    PFT           95%-CI  tau^2    tau    p.trt  p.rsb  N
              1.0000 0.8147 [0.7773; 0.8520] 0.0468 0.2164        0 0.7091  0
              0.9757 0.8156 [0.7649; 0.8663] 0.0468 0.2164 < 0.0001 0.7292  3
              0.9593 0.8180 [0.7718; 0.8642] 0.0468 0.2164 < 0.0001 0.7609  5
              0.9460 0.8190 [0.7701; 0.8678] 0.0468 0.2164 < 0.0001 0.7744  7
              0.9324 0.8200 [0.7687; 0.8713] 0.0468 0.2164 < 0.0001 0.7928  9
              0.9186 0.8210 [0.7675; 0.8745] 0.0468 0.2164 < 0.0001 0.8083 11
              0.9044 0.8220 [0.7665; 0.8775] 0.0468 0.2163 < 0.0001 0.8233 13
              0.8869 0.8230 [0.7644; 0.8816] 0.0468 0.2163 < 0.0001 0.8406 16
              0.8662 0.8240 [0.7619; 0.8861] 0.0468 0.2163 < 0.0001 0.8592 19
              0.8412 0.8250 [0.7591; 0.8909] 0.0468 0.2163 < 0.0001 0.8791 24
              0.8086 0.8260 [0.7559; 0.8961] 0.0468 0.2163 < 0.0001 0.9013 30
              0.7617 0.8270 [0.7525; 0.9015] 0.0468 0.2163 < 0.0001 0.9266 40
              0.6679 0.8280 [0.7488; 0.9072] 0.0468 0.2163 < 0.0001 0.9421 63
                                                                             
   Adjusted estimate 0.8147 [0.7773; 0.8520] 0.0468 0.2164        0 0.7091  0
 Unadjusted estimate 0.8147 [0.7768; 0.8525] 0.0472 0.2172                   

Significance level for test of residual selection bias: 0.1 

                       min    max
 range of gamma0:  -0.2582 2.0000
 range of gamma1:   0.0000 0.0007

Largest standard error (SE): 0.0828 

Range of probability publishing trial with largest SE:
    min    max
 0.3981 0.9777

Calculation of orthogonal line:

 level nobs adj.r.square       slope    se.slope
 0.816   22    0.2255855    7.632267 2.860863563
 0.817   22    0.3166689   10.937900 3.338854847
 0.818   20    0.9999362 -122.753095 0.225019928
 0.819   20    0.9999997 -119.412554 0.014280117
 0.820   20    0.9999999 -120.231097 0.009525075
 0.821   21    0.9999770 -118.425888 0.126880562
 0.822   20    0.9999646 -104.134371 0.142063074
 0.823   20    0.9998965  -84.995776 0.198387070
 0.824   20    0.9998807  -75.122855 0.188270077
 0.825   20    0.9999559  -62.344341 0.094967835
 0.826   20    0.9999551  -49.777102 0.076485723
 0.827   20    0.9999630  -38.909135 0.054285532
 0.828   21    0.9956726  -20.548879 0.302887979

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
-195.8914   391.7828   401.7828   416.3827   402.2408   

tau^2 (estimated amount of residual heterogeneity): 1.0196 (SE = 0.1245)
tau (square root of estimated tau^2 value):         1.0097
R^2 (amount of heterogeneity accounted for):        0.00%

Test of Moderators (coefficients 2:4):
QM(df = 3) = 2.8996, p-val = 0.4074

Model Results:

                 estimate      se     zval    pval    ci.lb   ci.ub    
intrcpt            0.0819  0.1568   0.5221  0.6016  -0.2255  0.3893    
ContinentAsia      0.0926  0.2232   0.4150  0.6781  -0.3448  0.5300    
ContinentEurope    0.1984  0.2202   0.9007  0.3677  -0.2333  0.6300    
ContinentOther    -0.3015  0.3048  -0.9892  0.3226  -0.8988  0.2959    

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-2.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_JBI_Classification`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-198.6285   397.2570   403.2570   412.0604   403.4348   

tau^2 (estimated amount of residual heterogeneity): 1.0178 (SE = 0.1234)
tau (square root of estimated tau^2 value):         1.0088
R^2 (amount of heterogeneity accounted for):        0.13%

Test of Moderators (coefficient 2):
QM(df = 1) = 1.1519, p-val = 0.2831

Model Results:

                                  estimate      se     zval    pval    ci.lb 
intrcpt                             0.1804  0.0945   1.9098  0.0562  -0.0047 
JBI_ClassificationMedium Quality   -0.2373  0.2211  -1.0733  0.2831  -0.6707 
                                   ci.ub    
intrcpt                           0.3656  . 
JBI_ClassificationMedium Quality  0.1961    

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-3.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_Setting`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-196.8258   393.6516   399.6516   408.4550   399.8294   

tau^2 (estimated amount of residual heterogeneity): 0.9918 (SE = 0.1203)
tau (square root of estimated tau^2 value):         0.9959
R^2 (amount of heterogeneity accounted for):        2.68%

Test of Moderators (coefficient 2):
QM(df = 1) = 4.8493, p-val = 0.0277

Model Results:

              estimate      se     zval    pval    ci.lb    ci.ub    
intrcpt         0.2216  0.0927   2.3917  0.0168   0.0400   0.4032  * 
SettingOther   -0.4925  0.2236  -2.2021  0.0277  -0.9308  -0.0542  * 

---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```

![](report_files/figure-pdf/metareg-uni-summary-4.pdf){width=100%}

\pagebreak
### Model: `mod_metareg_use_guideline`

```


Mixed-Effects Model (k = 141; tau^2 estimator: REML)

   logLik   deviance        AIC        BIC       AICc   
-199.0708   398.1415   404.1415   412.9449   404.3193   

tau^2 (estimated amount of residual heterogeneity): 1.0244 (SE = 0.1242)
tau (square root of estimated tau^2 value):         1.0121
R^2 (amount of heterogeneity accounted for):        0.00%

Test of Moderators (coefficient 2):
QM(df = 1) = 0.2752, p-val = 0.5999

Model Results:

                           estimate      se    zval    pval    ci.lb   ci.ub    
intrcpt                      0.1261  0.0883  1.4285  0.1531  -0.0469  0.2990    
use_guidelineNo Guideline    0.1939  0.3696  0.5246  0.5999  -0.5304  0.9182    

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
| -185.6881   371.3761   391.3761   420.2041   393.1943   
| 
| tau^2 (estimated amount of residual heterogeneity): 0.9731 (SE = 0.1211)
| tau (square root of estimated tau^2 value):         0.9865
| R^2 (amount of heterogeneity accounted for):        4.51%
| 
| Test of Moderators (coefficients 2:9):
| QM(df = 8) = 14.5010, p-val = 0.0696
| 
| Model Results:
| 
|                                   estimate       se     zval    pval     ci.lb 
| intrcpt                            57.1259  35.6760   1.6012  0.1093  -12.7978 
| Year                               -0.0282   0.0177  -1.5951  0.1107   -0.0629 
| JBI_ClassificationMedium Quality   -0.2414   0.2181  -1.1064  0.2686   -0.6689 
| use_guidelineNo Guideline           0.2321   0.3852   0.6024  0.5469   -0.5230 
| SettingOther                       -0.5521   0.2296  -2.4046  0.0162   -1.0022 
| ContinentAsia                       0.1494   0.2374   0.6294  0.5291   -0.3159 
| ContinentEurope                     0.2736   0.2213   1.2367  0.2162   -0.1600 
| ContinentOther                     -0.3315   0.3096  -1.0709  0.2842   -0.9382 
| Sample_size                         0.0000   0.0000   0.7786  0.4362   -0.0000 
|                                      ci.ub    
| intrcpt                           127.0496    
| Year                                0.0065    
| JBI_ClassificationMedium Quality    0.1862    
| use_guidelineNo Guideline           0.9871    
| SettingOther                       -0.1021  * 
| ContinentAsia                       0.6147    
| ContinentEurope                     0.7073    
| ContinentOther                      0.2752    
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
