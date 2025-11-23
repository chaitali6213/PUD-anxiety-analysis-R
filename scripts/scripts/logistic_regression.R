# logistic_regression.R
library(broom)
library(dplyr)

# Assume outcome is binary: RAIR_abnormal (0/1) or HMA_binary
# Example recode (adjust to your variables)
# data <- data %>% mutate(HMA_bin = ifelse(HMA_score >= 8, 1, 0))

# Fit logistic regression
model <- glm(HMA_bin ~ age + sex + BMI + ulcer_cause, data = data, family = binomial)

# Summary and tidy output
summary(model)
tidy_model <- broom::tidy(model)
write.csv(tidy_model, "docs/logistic_model_summary.csv", row.names = FALSE)

# Calculate and save odds ratios and 95% CI
ORs <- broom::tidy(model, exponentiate = TRUE, conf.int = TRUE)
write.csv(ORs, "docs/logistic_model_ORs.csv", row.names = FALSE)

