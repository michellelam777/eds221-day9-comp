# Practicing reprex

### NOT A REPREX
library(tidyverse)
library(palmerpenguins)

penguins |>
  select(species, body_mass_g, flipper_length_mm, year) |>
  filter(species == "Chinstrap") |>
  str_to_lower(species) |>
  group_by(island) |>
  summarize(mean(body_mass_g, na.rm = TRUE),
            mean(flipper_length_mm, na.rm = TRUE))

### A REPREX
library(tidyverse)

warpbreaks |>
  str_to_lower(wool)

### A FIXING REPREX
library(tidyverse)

warpbreaks |>
  mutate(wool = str_to_lower(wool))

### A REPREX WITH A SYNTHESIZED DATA FRAME
library(tidyverse)

example_df <- tribble(
  ~type, ~color,
  "Pants", "blue",
  "Shoe", "pink"
)

example_df |>
  mutate(type = str_to_lower(type))
