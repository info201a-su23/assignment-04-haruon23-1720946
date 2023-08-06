library(readxl)
library(ggplot2)
data <- read_excel("var_comparison_data.xlsx")

ggplot(data, aes(x = year, y = total_jail_pop_rate, fill = county_name)) +
  geom_bar(stat='identity',  position = "dodge") +
  scale_x_continuous(breaks = data$year, labels = data$year) +
  labs(title = "Total Jail population comparison of first 2 counties of Alabama",
       x = "Year",
       y = "Total jail population",
       color = "County Names") +
  theme_classic()
