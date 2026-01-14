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

# Set variables for metaregression reference
varnames <- c(
  "Year", "JBI_Classification", "use_guideline", "Setting", "Continent"
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
  tar_target(plt_forest_prop, vizForest(mod_prop, file = "docs/figures/meta-analysis-prevalence.pdf")),
  tar_target(plt_funnel_prop, vizFunnel(mod_prop)),

  # Subgroup analysis by given column name
  tar_map(
    values = list("colname" = c("Age", "Continent", "Setting", "JBI_Classification", "n_guideline", "use_guideline")),
    unlist = FALSE,
    tar_target(mod_subgroup, fitSubMetaprop(tbl_clean, varname = rlang::sym(colname))),
    tar_target(
      plt_forest_subgroup,
      vizForest(
        mod_subgroup,
        file = sprintf("docs/figures/subgroup-meta-analysis-%s.pdf", colname),
        print.subgroup.name = FALSE
      )
    ),
    tar_target(plt_funnel_subgroup, vizFunnel(mod_subgroup))
  ),

  # Univariable and multivariable meta-regression models
  tar_map(
    values = list(varname = varnames),
    unlist = FALSE,
    tar_target(mod_metareg, fitMetareg(tbl_clean, varname))
  ),
  tar_target(mod_metareg_mv, fitMetareg(tbl_clean, varnames)),

  # Generate documentation
  tar_quarto(readme, "README.qmd", priority = 0)

)
