library(tidyverse)

D_diamonds <- readRDS("clean_data.rds")

# Assign plot to an object
D_plot <- ggplot(D_diamonds, aes(x = carat, y = price)) +
  geom_point(alpha = 0.6) +
  labs(
    title = "Diamond Size vs. Price (Color D)",
    x = "Carat (Size)",
    y = "Price (USD)"
  ) +
  theme_minimal()

# Save the plot to a PNG file
ggsave("size_v_weight.png", D_plot)
