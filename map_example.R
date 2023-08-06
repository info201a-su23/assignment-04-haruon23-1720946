library(usmap)
library(ggplot2)

plot_usmap(data = countypop, values = "pop_2015", include=c("AL"), color="blue") +
  scale_fill_continuous(low = "white", high = "blue", name = "Population Estimates", label = scales::comma) + 
  labs(title = "Alabama", subtitle = "Population Estimates for Alabama Counties in 2015") +
  theme_void()

