library(dplyr)


average_value <- data %>%
  summarise(avg_variable = mean(data$total_jail_pop_rate))

highest_value <- data %>%
  filter(data$total_jail_pop_rate == max(total_jail_pop_rate))

lowest_value <- data %>%
  filter(data$total_jail_pop_rate == min(total_jail_pop_rate))

N <- 5

changes_last_N_years <- data %>%
  group_by(year) %>%
  summarise(avg_variable = mean(total_jail_pop_rate)) %>%
  arrange(year) %>%
  mutate(change = avg_variable - lag(avg_variable, N))

changes_last_N_years <- changes_last_N_years %>%
  filter(!is.na(change))

changes_last_N_years <- changes_last_N_years %>%
  filter(!is.na(change))
