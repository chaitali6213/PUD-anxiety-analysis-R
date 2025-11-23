# descriptive_stats.R
# Basic descriptive statistics and frequency tables

# Load packages (install first if needed)
if (!requireNamespace("tidyverse", quietly = TRUE)) install.packages("tidyverse")
library(tidyverse)

# Load data - update path if using sample data
# data <- readr::read_csv("data/sample_data.csv")
# If Rmd uses a different name, adjust accordingly
# Replace the next line with the real data loading line you used
# Example:
# data <- readxl::read_excel("data/clinical_data.xlsx")

# Basic summaries
summary_stats <- data %>%
  summarize(
    n = n(),
    age_mean = mean(age, na.rm = TRUE),
    age_sd = sd(age, na.rm = TRUE)
  )

# Frequency tables for key categorical variables
table_sex <- data %>% count(sex) %>% mutate(pct = n / sum(n) * 100)
table_ulcer_type <- data %>% count(ulcer_type) %>% mutate(pct = n / sum(n) * 100)

# Output to console and optionally to csv in docs/
print(summary_stats)
print(table_sex)
print(table_ulcer_type)

# Save tables for README/docs
readr::write_csv(table_sex, "docs/table_sex.csv")
readr::write_csv(table_ulcer_type, "docs/table_ulcer_type.csv")

