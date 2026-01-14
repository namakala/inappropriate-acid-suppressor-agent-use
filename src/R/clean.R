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
      "Prevalence" = gsub(x = Prevalence, ",", ".") |> as.numeric(),
      "Sample_size" = as.integer(Sample_size),
      "Inappropriate_indication" = as.integer(Inappropriate_indication),
      "n_guideline" = trimws(`Number of Guideline`) |> ordered(
        labels = c("No Guideline", "1", "2", "3")
      ),
      "Continent" = dplyr::case_when(
        grepl(x = Continent, "Asia") ~ "Asia",
        grepl(x = Continent, "Europe") ~ "Europe",
        grepl(x = Continent, "North America") ~ "North America",
        .default =  "Other"
      ) |> factor(levels = c("Asia", "Europe", "North America", "Other")),
      "Setting" = dplyr::case_when(
        grepl(x = Setting, "Hospital setting") ~ "Hospital Setting",
        .default = "Other"
      ) |> factor(levels = c("Hospital Setting", "Other")),
      "use_guideline" = ifelse(
        `Stated guideline` == "Yes", "Followed Guideline(s)", "No Guideline"
      ),
      "logit_prevalence" = log(Prevalence / (1 - Prevalence)),
      "var_logit_prevalence" = 1 / (Sample_size * logit_prevalence)
    ) %>%
    set_names(names(.) |> make.names())

  return(res)
}
