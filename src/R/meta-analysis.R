# Functions to peform meta-analysis

fitMetaprop <- function(tbl, sm = "PLOGIT", method = "GLMM", ...) {
  #' Meta-Analysis for Proportion
  #'
  #' Fit a meta-analysis model for proportion data. By default, a generalized
  #' linear mixed model (GLMM) with a logit link is used for pooling. Alternative
  #' pooling methods, tau-squared estimators (e.g., REML), and confidence interval
  #' adjustments (e.g., Hartung-Knapp) can be specified via the `...` argument.
  #'
  #' @param tbl A data frame object containing extracted information from the
  #' selected articles
  #' @param sm Summary measure approach from `meta::metaprop`
  #' @param method Method for pooling of studies from `meta::metaprop`
  #' @return Metaprop object
  require("meta")

  mod <- meta::metaprop(
    data             = tbl,
    event            = Inappropriate_indication,
    n                = Sample_size,
    studlab          = author_year,
    sm               = sm,
    method           = method,
    common           = FALSE,
    random           = TRUE,
    prediction       = TRUE,
    backtransf       = TRUE,
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

  mod <- sub_tbl %>% fitMetaprop(
    subgroup = dplyr::pull(., {{ varname }}), keepdata = TRUE, ...
  )

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
    subset(
      subset = var_logit_prevalence != Inf,
      select = c("logit_prevalence", "var_logit_prevalence", varname)
    ) |>
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

applyCopas <- function(obj, varname = NULL, ...) {
  #' Copas Selection Model
  #'
  #' Perform a Copas selection model analysis on a given meta-analysis model.
  #' This analysis will adjust for the probability of publication bias.
  #'
  #' @param obj A meta-analysis model from the `meta` package, otherwise a data
  #' frame object.
  #' @param varname Variable name indicating which variable is used to subste
  #' the dataset.
  #'
  #' @return A Copas analysis object
  require("metasens")
  require("meta")

  tbl <- obj

  if (grepl(x = obj, "meta") |> any()) {
    mod_copas <- metasens::copas(obj, backtransf = TRUE, ...)
    return(mod_copas)
  } else if (is.null(varname)) {
    mod <- fitMetaprop(obj)
    mod_copas <- applyCopas(mod)
    return(mod_copas)
  }

  groups <- tbl[[varname]] |> unique() |> na.omit()
  sub_tbls <- lapply(groups, \(group) tbl %>% subset(.[[varname]] == group))
  sub_metas <- lapply(sub_tbls, \(sub_tbl) fitMetaprop(sub_tbl))
  mod_copas <- setNames(lapply(sub_metas, applyCopas), groups)

  return(mod_copas)
}
