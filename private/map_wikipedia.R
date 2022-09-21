library(tidyverse)

# List of entities (states and territories) comes from "https://en.wikipedia.org/wiki/Europe"
# in natural earth some country names differ
# some countries fall into different continent
# sovereignty of some entities Wikipedia describes differently
# our reference is wikipedia 

sovereignties <- "https://en.wikipedia.org/wiki/Europe" %>%
  polite::bow() %>% 
  polite::scrape() %>%  # scrape web page
  rvest::html_nodes("table.wikitable") %>% # pull out specific table
  rvest::html_table(fill = TRUE) %>%
  .[[2]] %>% 
  janitor::clean_names() %>% 
  filter(name !=50) %>%
  select(name) %>% pull() %>%
  gsub(pattern = "\\s\\[.*\\]", replacement = "") %>% 
  gsub(replacement = "Republic of Serbia", pattern = "Serbia") %>% 
  gsub(replacement = "Macedonia", pattern = "North Macedonia") %>% 
  gsub(replacement = "Vatican", pattern = "Vatican City") %>%
  c("Kosovo") 


sovereignties <- c(
  "Albania", "Andorra", "Armenia", "Austria", "Azerbaijan", "Belarus", "Belgium",
  "Bosnia and Herzegovina", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", 
  "Denmark", "Estonia", "Finland", "France", "Georgia", "Germany", "Greece", 
  "Hungary", "Iceland", "Ireland", "Italy", "Kazakhstan", "Kosovo", "Latvia", 
  "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Malta", "Moldova",
  "Monaco", "Montenegro", "Netherlands", "Norway", "Poland", "Portugal",
  "Republic of Serbia", "Romania", "Russia", "San Marino", "Slovakia", "Slovenia",
  "Spain", "Sweden", "Switzerland", "Turkey", "Ukraine", "United Kingdom", "Vatican")

# neighbors
sovereignties <- c(
  "Albania", "Andorra", "Armenia", "Austria", "Azerbaijan", "Belarus", "Belgium",
  "Bosnia and Herzegovina", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", 
  "Denmark", "Estonia", "Finland", "France", "Georgia", "Germany", "Greece", 
  "Hungary", "Iceland", "Ireland", "Italy", "Kazakhstan", "Latvia", 
  "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Malta", "Moldova",
  "Monaco", "Montenegro", "Netherlands", "Norway", "Poland", "Portugal",
  "Republic of Serbia", "Romania", "Russia", "San Marino", "Slovakia", "Slovenia",
  "Spain", "Sweden", "Switzerland", "Turkey", "Ukraine", "United Kingdom", "Vatican")


neighbors <- "https://en.wikipedia.org/wiki/List_of_countries_and_territories_by_land_and_maritime_borders" %>%
  polite::bow() %>% 
  polite::scrape() %>%  # scrape web page
  rvest::html_nodes("table.wikitable") %>%
  rvest::html_table(fill = TRUE) %>%
  .[[1]] %>% 
  janitor::clean_names() %>%
  select(c('country_or_territory_territories_without_full_sovereignty_1_in_italics', 'neighbouring_countries_and_territories_territories_without_full_sovereignty_1_in_italics_with_both_land_and_maritime_boundaries_unless_marked_l_land_only_or_m_maritime_only')) %>%
  rename(country = country_or_territory_territories_without_full_sovereignty_1_in_italics) %>%
  rename(neighbors = neighbouring_countries_and_territories_territories_without_full_sovereignty_1_in_italics_with_both_land_and_maritime_boundaries_unless_marked_l_land_only_or_m_maritime_only)

neighbors %>% filter(country == sovereignties[6])
