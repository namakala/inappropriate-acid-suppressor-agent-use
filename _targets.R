# Load packages
pkgs <- c("magrittr", "targets", "tarchetypes", "crew")
pkgs_load <- sapply(pkgs, library, character.only = TRUE)

# Source user-defined functions
funs <- list.files("src/R", pattern = "*.R", full.name = TRUE) %>%
  lapply(source)

# Set option for targets
tar_option_set(
  packages   = pkgs,
  error      = "continue",
  memory     = "transient",
  controller = crew_controller_local(worker = 4),
  storage    = "worker",
  retrieval  = "worker",
  garbage_collection = TRUE
)

seed <- 1810

# Set paths for the raw data
raws <- lsData(pattern = "*csv")

# Set variables for subgroup meta-analysis and metaregression reference
uni_vars <- c(
  "Age", "Continent", "Setting", "JBI_Classification", "use_guideline"
)

mv_vars <- c(
  "Year", "JBI_Classification", "use_guideline", "Setting", "Continent",
  "Sample_size"
)

# Set the analysis pipeline
list(

  # List data files
  tar_target(fpath, raws[["data"]], format = "file"),

  # Read the data frame
  tar_target(tbl, readData(fpath)),
  tar_target(tbl_clean, clean(tbl)),

  # Meta-analysis of proportion data
  tar_target(mod_prop, fitMetaprop(tbl_clean)),
  tar_target(
    mod_prop_sens_logit,
    fitMetaprop(
      tbl_clean,
      method = "Inverse",
      method.tau = "REML",
      method.random.ci = "HK"
    )
  ),
  tar_target(
    mod_prop_sens_pft,
    fitMetaprop(
      tbl_clean,
      sm = "PFT",
      method = "Inverse",
      method.tau = "REML",
      method.random.ci = "HK"
    )
  ),
  tar_target(
    sens_overall,
    compareModels(
      mod_prop, mod_prop_sens_logit, mod_prop_sens_pft
    )
  ),
  tar_target(
    sens_overall_tbl,
    reportSensitivity(sens_overall)
  ),
  tar_target(mod_copas_prop, applyCopas(mod_prop)),
  tar_target(plt_forest_prop, vizForest(mod_prop, file = "docs/figures/meta-analysis-prevalence.pdf")),
  tar_target(plt_funnel_prop, vizFunnel(mod_prop)),

  # Subgroup analysis by given column name
  tar_map(
    values = list("colname" = uni_vars),
    unlist = FALSE,
    tar_target(mod_subgroup, fitSubMetaprop(tbl_clean, varname = rlang::sym(colname))),
    tar_target(mod_copas_subgroup, applyCopas(tbl_clean, varname = colname)),
    tar_target(
      plt_forest_subgroup,
      vizForest(
        mod_subgroup,
        file = sprintf("docs/figures/subgroup-meta-analysis-%s.pdf", colname),
        print.subgroup.name = FALSE
      )
    ),
    tar_target(plt_funnel_subgroup, vizFunnel(mod_subgroup)),
    tar_target(
      mod_subgroup_sens_logit,
      fitSubMetaprop(
        tbl_clean,
        varname          = rlang::sym(colname),
        method           = "Inverse",
        method.tau       = "REML",
        method.random.ci = "HK"
      )
    ),
    tar_target(
      mod_subgroup_sens_pft,
      fitSubMetaprop(
        tbl_clean,
        varname          = rlang::sym(colname),
        sm               = "PFT",
        method           = "Inverse",
        method.tau       = "REML",
        method.random.ci = "HK"
      )
    ),
    tar_target(
      sens_subgroup,
      compareModels(
        mod_subgroup, mod_subgroup_sens_logit, mod_subgroup_sens_pft
      )
    ),
    tar_target(
      sens_subgroup_tbl,
      reportSensitivity(sens_subgroup)
    )
  ),

  # Univariable and multivariable meta-regression models
  tar_map(
    values = list("varname" = uni_vars),
    unlist = FALSE,
    tar_target(mod_metareg, fitMetareg(tbl_clean, varname))
  ),
  tar_target(mod_metareg_mv, fitMetareg(tbl_clean, mv_vars)),

  # Generate documentation
  tar_quarto(report, "docs/report.qmd"),
  tar_quarto(readme, "README.qmd", priority = 0)

)
