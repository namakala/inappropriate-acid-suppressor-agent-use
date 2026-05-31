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
      "author_year" = sprintf("%s (%d)", Author, Year),
      "Prevalence" = gsub(x = Prevalence, ",", ".") |> as.numeric(),
      "Sample_size" = as.integer(`Sample size`),
      "Year_ordinal" = dplyr::case_when(
        Year <= 2015 ~ "<2015",
        Year <= 2020 ~ "2016-2020",
        TRUE         ~ "2021-2025"
      ) |> factor(levels = c("<2015", "2016-2020", "2021-2025")),
      "Sample_scaled_100" = Sample_size / 100,
      "Inappropriate_indication" = as.integer(`Inappropriate indication`),
      "Continent" = dplyr::case_when(
        grepl(x = Continent, "Asia") ~ "Asia",
        grepl(x = Continent, "Europe") ~ "Europe",
        grepl(x = Continent, "North America") ~ "North America",
        .default =  "Other"
      ) |> factor(levels = c("North America", "Asia", "Europe", "Other")),
      "Setting" = dplyr::case_when(
        grepl(x = Setting, "Hospital") ~ "Hospital Setting",
        .default = "Other"
      ) |> factor(levels = c("Hospital Setting", "Other")),
      "use_guideline" = ifelse(
        `Guideline` == "Yes", "Followed Guideline(s)", "No Guideline"
      ),
      "logit_prevalence" = log(Prevalence / (1 - Prevalence)),
      "var_logit_prevalence" = 1 / (Sample_size * Prevalence * (1 - Prevalence))
    ) %>%
    set_names(names(.) |> make.names())

  return(res)
}
