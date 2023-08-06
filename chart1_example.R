library(readxl)
library(ggplot2)
data <- read_excel("data.xlsx")

trends_plot <- ggplot(data, aes(x = year, y = total_jail_pop_rate, color = county_name)) +
  geom_line() + geom_point() +
  scale_x_continuous(breaks = data$year, labels = data$year) +
  labs(title = "Total Jail population in first 5 counties of Alabama",
       x = "Year",
       y = "Total jail population",
       color = "County Names") + plot(x = data$year, y=data$total_jail_pop_rate) +
  theme_classic()

print(trends_plot)
