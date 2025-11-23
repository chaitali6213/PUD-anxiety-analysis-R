# visualizations.R
library(ggplot2)
library(dplyr)

# Example: HMA score distribution
p_hma <- data %>%
  ggplot(aes(x = HMA_score)) +
  geom_histogram(binwidth = 1, color = "white", fill = "steelblue") +
  labs(title = "HMA Score Distribution", x = "HMA Score", y = "Count") +
  theme_minimal()

ggsave("docs/figure_hma_score.png", p_hma, width = 7, height = 4)

# Example: Ulcer type bar chart
p_ulcer <- data %>%
  count(ulcer_type) %>%
  ggplot(aes(x = fct_reorder(ulcer_type, n), y = n)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(title = "Ulcer Type Distribution", x = "", y = "Count") +
  theme_minimal()

ggsave("docs/figure_ulcer_type.png", p_ulcer, width = 7, height = 4)
