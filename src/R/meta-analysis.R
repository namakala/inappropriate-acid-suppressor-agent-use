# Functions to peform meta-analysis

fitMetaprop <- function(tbl, ...) {
  #' Meta-Analysis for Proportion
  #'
  #' Fit meta-analyis model for proportion data with REML estimator,
  #' Freeman-Tukey summary measure, and Hartung-Knapp CI calculation.
  #'
  #' @param tbl A data frame object containing extracted information from the
  #' selected articles
  #' @return Metaprop object
  require("meta")

  mod <- meta::metaprop(
    data             = tbl,
    event            = Inappropriate_indication,
    n                = Sample_size,
    studlab          = Author,
    sm               = "PLOGIT",
    method.tau       = "ML",
    method.random.ci = "HK",
    common           = FALSE,
    random           = TRUE,
    ...
  )

  return(mod)
}

fitSubMetaprop <- function(tbl, varname, ...) {
  #' Subgroup Meta-Analysis
  #'
  #' Perform a subgroup meta-analysis grouped by the given `varname`.
  #'
  #' @param tbl A data frame object
  #' @param varname Variable name to group the analysis
  #'
  #' @return Metaprop object

  idx     <- !is.na(tbl[[rlang::as_name(varname)]])
  sub_tbl <- tbl |> dplyr::filter(idx)
  mod     <- sub_tbl %>% fitMetaprop(subgroup = dplyr::pull(., {{ varname }}))

  return(mod)
}

fitMetareg <- function(tbl, varname, ...) {
  #' Meta-Regression
  #'
  #' Fit a meta-regression model to a given data frame and set of variable
  #' names. Variable names could be singular, which then will be fitted as a
  #' univariate meta-regression model.
  #'
  #' @param tbl A data frame object
  #' @param varname One or multiple column names
  #' 
  #' @return A `rma` object
  require("metafor")
  require("meta")

  sub_tbl <- tbl |>
    subset(select = c("logit_prevalence", "var_logit_prevalence", varname)) |>
    na.omit()

  is_single <- length(varname) == 1

  if (is_single) {
    form <- paste("~", varname)
  } else {
    form <- paste("~", paste(varname, collapse = " + "))
  }

  form %<>% as.formula()

  mod <- metafor::rma(
    yi     = logit_prevalence,
    vi     = var_logit_prevalence,
    mods   = form,
    data   = sub_tbl,
    method = "REML",
    ...
  )

  return(mod)
}
