# Functions to visualize data and model

vizForest <- function(mod, ...) {
  #' Forest Plot
  #'
  #' Visualize meta-analysis model using forest plot
  #'
  #' @param mod Meta-analysis model from the `meta` package
  require("meta")
  pdf.options(encoding = "ISOLatin2.enc")

  plt <- meta::forest(
    mod,
    leftcols = c(
      "studlab", "Sample_size", "Inappropriate_indication", "w.random",
      "effect", "ci"
    ),
    leftlabs = c(
      "Study", "Sample Size", "Events", "Weight (%)", "Proportion", "95% CI"
    ),
    sortvar     = TE,
    rightcols   = FALSE,
    xlim        = c(0, 1),
    digits      = 2,
    width       = 9,
    colgap.left = "0.15cm",
    fontsize    = 10,
    prediction  = TRUE,
    ...
  )

  return(plt)
}

vizFunnel <- function(mod, ...) {
  #' Funnel Plot
  #'
  #' Visualize meta-analysis model using funnel plot
  #'
  #' @param mod Meta-analysis model from the `meta` package
  require("meta")

  plt <- meta::funnel(
    mod,
    type = "contour",
    common = TRUE,
    random = TRUE
  )

  return(plt)
}
