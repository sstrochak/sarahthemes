library(tidyverse)
library(sarahthemes)

set_sarah_defaults()


ggplot(data = mtcars, mapping = aes(factor(cyl))) +
  geom_bar() +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  labs(x = "Number of Cylinders",
       y = "Count") +
  remove_ticks() +
  labs(title = "Most Cars Have 8 Cylinders",
       subtitle = "1974 Motor Trend US magazine")


mtcars %>%
  mutate(cyl = paste(cyl, "cylinders")) %>%
  ggplot(aes(x = wt, y = mpg, color = cyl)) +
  geom_point() +
  scale_x_continuous(expand = expansion(mult = c(0.002, 0)),
                     limits = c(0, 6),
                     breaks = 0:6) +
  scale_y_continuous(expand = expansion(mult = c(0, 0.002)),
                     limits = c(0, 40),
                     breaks = 0:8 * 5) +
  labs(x = "Weight (thousands of pounds)",
       y = "City MPG") +
  scatter_grid()
