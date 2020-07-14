# retrieve ACRE repo contributions: adapted from Hadley Wickham's scripts to credit contributors to R for Data Science
## contributors.R (https://github.com/hadley/r4ds/blob/master/contributors.R)
## index.Rmd (https://github.com/hadley/r4ds/blob/master/index.rmd)
## R for Data Science license: https://creativecommons.org/licenses/by-nc-nd/3.0/us/

library(tidyverse)
library(gh)
library(glue)

#JSON format info on contributors to ACRE repo
acre_json <- gh::gh("/repos/:owner/:repo/contributors",
                    owner = "BITSS",
                    repo = "ACRE",
                    .limit = Inf)
acre_contribs <- tibble(
  login = acre_json %>% map_chr("login"),
  n = acre_json %>% map_int("contributions")
)

#retrieve names of contributors
more_info_json <- map(
  acre_contribs$login,
  ~ gh::gh("/users/:username", username = .x)
)
more_info <- tibble(
  login = map_chr(more_info_json, "login", .default = NA),
  name = map_chr(more_info_json, "name", .default = NA)
)

# combine contributor information from both tables
acre_contribs_all <- acre_contribs%>%
  left_join(more_info) %>%
  arrange(login) #arranged contributors alphabetically by login

# contributors' names with links
names_with_links <- acre_contribs_all %>% 
  mutate(
    link = glue::glue("[\\@{login}](https://github.com/{login})"), #add link to github profile
    desc = ifelse(is.na(name), link, glue::glue("{name} ({link})")) #if no name is provided, show link only
  )

write_csv(names_with_links, "contributors.csv")
