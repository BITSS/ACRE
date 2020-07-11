# retrieve ACRE repo contributions: adapted from Hadley Wickham's scripts to credit contributors to R for Data Science
## contributors.R (https://github.com/hadley/r4ds/blob/master/contributors.R)
## index.Rmd (https://github.com/hadley/r4ds/blob/master/index.rmd)

library(tidyverse)
library(gh)

#JSON format info on contributors to ACRE repo
acre_json <- gh::gh("/repos/:owner/:repo/contributors",
                    owner = "BITSS",
                    repo = "ACRE",
                    .limit = Inf)
acre_contribs <- tibble(
  login = acre_json %>% map_chr("login"),
  n = acre_json %>% map_int("contributions")
)

### I think this is where hadley's csv stores previous contributors, and only retrieves more info
### for new contributors (start with an empty contributors.csv file)

### for now I'm skipping the csv step and retrieving more info for all contributors

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
  arrange(login) #arranged contributors alphabetically by login, but we can change this

### r4ds stops here and writes acre_contribs_all to a csv (adds new contributor info that didn't exist
### in the last version of contributors.csv)

library(glue)

# contributors' names with links
names_with_links <- acre_contribs_all %>% 
  mutate(
    link = glue::glue("[\\@{login}](https://github.com/{login})"), #add link to github profile
    desc = ifelse(is.na(name), link, glue::glue("{name} ({link})")) #if no name is provided, show link only
  )
