library(tidyverse)

# Case count data frame, save a CSV

ues_legionnaires <- tibble(
  report_date = as.Date(c("2026-07-02", "2026-07-03", "2026-07-05",
                          "2026-07-06", "2026-07-07")),
  cumulative_cases = c(2, 10, 18, 18, 23)
) %>%
  mutate(new_cases = cumulative_cases - lag(cumulative_cases, default = 0))

write_csv(ues_legionnaires, "data/ues_legionnaires_cases.csv")

# Adding a source column, if desired

ues_legionnaires <- tibble(
  report_date = as.Date(c("2026-07-02", "2026-07-03", "2026-07-05",
                          "2026-07-06", "2026-07-07")),
  cumulative_cases = c(2, 10, 18, 18, 23),
  source_url = c(
    "https://www.nyc.gov/site/doh/about/press/pr2026/nyc-health-dept-investigating-legionnaires-cluster-ues.page",
    "https://ny1.com/nyc/all-boroughs/news/2026/07/06/legionnaires--cluster-grows-to-14-cases-on-upper-east-side",
    "https://ny1.com/nyc/all-boroughs/politics/2026/07/06/18-legionnaires-cases-upper-east-side-",
    "https://www.amny.com/news/legionnaires-disease-outbreak-upper-east-side-07062026/",
    "https://ny1.com/nyc/all-boroughs/health/2026/07/07/legionnaires--cluster-upper-east-side-new-york-city-2026"
  )
) %>%
  mutate(new_cases = cumulative_cases - lag(cumulative_cases, default = 0))
