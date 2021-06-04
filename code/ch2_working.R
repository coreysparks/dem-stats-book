library(tidycensus)
library(tidyverse)
library(srvyr)
library(survey)

pums_vars_18<- pums_variables%>%
  filter(year== 2018, survey == "acs1")%>%
  distinct(var_code, var_label, data_type, level)%>%
  filter(level == "person")


TX_pums <- get_pums(
  variables = c("PUMA", "SEX", "AGEP", "CIT", "JWTR", "HISP"),
  state = "TX",
  survey = "acs1",
  year = 2018
)

names(TX_pums)
head(TX_pums)
