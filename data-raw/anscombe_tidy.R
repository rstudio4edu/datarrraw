library(tidyverse)

anscombe_tidy <- anscombe %>%
  mutate(observation = seq_len(n())) %>%
  gather(key, value, -observation) %>%
  separate(key, c("variable", "set"), 1, convert = TRUE) %>%
  mutate(set = c("I", "II", "III", "IV")[set]) %>%
  spread(variable, value)


usethis::use_data(anscombe_tidy, overwrite = TRUE)
