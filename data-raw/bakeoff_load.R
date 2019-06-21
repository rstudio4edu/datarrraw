bakeoff_ratings <- readr::read_csv(here::here("data-raw/bakeoff-ratings.csv"))

usethis::use_data(bakeoff_ratings, overwrite = TRUE)
