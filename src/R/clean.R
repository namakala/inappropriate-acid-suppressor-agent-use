# Functions to clean the dataset

clean <- function(tbl, ...) {
  #' Clean the Data Frame
  #'
  #' Clean the data frame by standardizing the variables.
  #'
  #' @param tbl A data frame object
  #'
  #' @return A data frame object

  res <- tbl |>
    dplyr::mutate(
      "Age" = `Patient's age`,
      "Year" = as.integer(`Year of Publication`),
      "Prevalence" = gsub(x = Prevalence, ",", ".") |> as.numeric(),
      "Sample_size" = as.integer(`Sample size`),
      "Inappropriate_indication" = as.integer(`Inappropriate indication`),
      "Continent" = dplyr::case_when(
        grepl(x = Continent, "Asia") ~ "Asia",
        grepl(x = Continent, "Europe") ~ "Europe",
        grepl(x = Continent, "North America") ~ "North America",
        .default =  "Other"
      ) |> factor(levels = c("Asia", "Europe", "North America", "Other")),
      "Setting" = dplyr::case_when(
        grepl(x = Setting, "Hospital") ~ "Hospital Setting",
        .default = "Other"
      ) |> factor(levels = c("Hospital Setting", "Other")),
      "use_guideline" = ifelse(
        `Stated Guideline` == "Yes", "Followed Guideline(s)", "No Guideline"
      ),
      "logit_prevalence" = log(Prevalence / (1 - Prevalence)),
      "var_logit_prevalence" = 1 / (Sample_size * logit_prevalence)
    ) %>%
    set_names(names(.) |> make.names())

  return(res)
}
