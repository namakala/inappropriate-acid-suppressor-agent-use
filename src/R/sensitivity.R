# Functions to perform sensitivity analysis

backTransformMetric <- function(mod, metric) {
  #' Back Transformation Wrapper
  #'
  #' Back transform metrics from a `metaprop` model based on the selected
  #' summary measure approach
  #'
  #' @param mod A `metaprop` object model
  #' @param metric A character string representing the metric available in a
  #' summary of a `metaprop` object model, e.g., `"TE.random"`
  #' @return A back transformed metric

  mod_summary   <- summary(mod)
  harmonic_mean <- 1 / mean(1 / mod$n)

  n_val <- if (identical(mod$sm, "PFT")) harmonic_mean else NULL

  res <- meta::backtransf(mod_summary[[metric]], sm = mod$sm, n = n_val)

  return(res)
}

extractResults <- function(mod, label) {
  #' Extract Results From The Model
  #'
  #' Extract key metrics from a `metaprop` model as numeric values
  #'
  #' @param mod A `metaprop` object model
  #' @param label Character label for this model
  #' @return A tibble with one row containing all numeric values

  require("meta")

  mod_summary <- summary(mod)

  res <- tibble::tibble(
    model      = label,
    k          = mod_summary$k,
    n_total    = sum(mod$n, na.rm = TRUE),
    prevalence = backTransformMetric(mod, "TE.random"),
    ci_lower   = backTransformMetric(mod, "lower.random"),
    ci_upper   = backTransformMetric(mod, "upper.random"),
    tau2       = mod_summary$tau2,
    I2         = mod_summary$I2,
    pred_lower = backTransformMetric(mod, "lower.predict"),
    pred_upper = backTransformMetric(mod, "upper.predict")
  )

  return(res)
}

compareModels <- function(mod1, mod2, mod3) {
  #' Compare Models
  #'
  #' Compare three meta-analysis models numerically. Computes differences
  #' and ratios relative to the primary (GLMM + logit) model.
  #'
  #' @param mod1 The GLMM + logit model (primary reference)
  #' @param mod2 The inverse logit model with REML and HK
  #' @param mod3 The PFT model with REML and HK
  #' @return A tibble of comparison metrics with difference columns

  results <- dplyr::bind_rows(
    extractResults(mod1, "GLMM + logit (primary)"),
    extractResults(mod2, "Inverse logit (REML + HK)"),
    extractResults(mod3, "Freeman-Tukey (REML + HK)")
  )

  ref <- results[1, ]

  res <- results |>
    dplyr::mutate(
      prev_diff_pp = (prevalence - ref$prevalence) * 100,
      tau2_ratio   = tau2 / ref$tau2,
      I2_diff_pp   = (I2 - ref$I2) * 100
    )

  return(res)
}

reportSensitivity <- function(tbl) {
  #' Report Sensitivity Analysis
  #'
  #' Format sensitivity comparison as a display-ready tibble for table rendering.
  #' Returns formatted string columns only; raw numeric values are kept in the
  #' output of `compareModels()` for further computation.
  #'
  #' @param tbl Tibble output from `compareModels()`
  #' @return A tibble with formatted display columns

  res <- tbl |>
    dplyr::mutate(
      prevalence_ci = sprintf(
        "%.1f [%.1f, %.1f]",
        prevalence * 100, ci_lower * 100, ci_upper * 100
      ),
      pi_str        = sprintf(
        "[%.1f, %.1f]",
        pred_lower * 100, pred_upper * 100
      ),
      tau2_str      = sprintf("%.3f", tau2),
      I2_str        = sprintf("%.1f%%", I2 * 100),
      prev_diff_str = ifelse(
        dplyr::row_number() == 1, "\u2014",
        sprintf("%+.1f", prev_diff_pp)
      )
    ) |>
    dplyr::select(
      model, k, n_total,
      prevalence_ci, tau2_str, I2_str, pi_str, prev_diff_str
    )

  return(res)
}
