if(!require(tidyverse)) install.packages("tidyverse");library(tidyverse)
if(!require(reclin)) install.packages("reclin");library(reclin)
if(!require(digest)) install.packages("digest");library(digest)
if(!require(knitr)) install.packages("knitr");library(knitr)
if(!require(DT)) install.packages("DT");library(DT)
if(!require(foreign)) install.packages("foreign");library(foreign)
if(!require(lubridate)) install.packages("lubridate");library(lubridate)
if(!require(writexl)) install.packages("writexl");library(writexl)

intoxicacao <- read.dbf("Dados/INTOXNET2019-2021.dbf")

intoxicacao <- subset(intoxicacao, year(intoxicacao$DT_NOTIFIC) == 2019)

violencia <- read.dbf("Dados/VIOLENET2019.dbf")

#violencia <- subset(violencia, year(violencia$DT_NOTIFIC) == 2020)

p5 <- intoxicacao %>%
  
  pair_blocking(violencia, blocking_var = "CS_SEXO") %>%
  
  #filter_pairs_for_deduplication() %>%
  
  compare_pairs(
    by = c("NM_PACIENT", "DT_NASC", "NM_MAE_PAC"),
    default_comparator = jaro_winkler(0.9)
  ) %>%
  
  score_simsum() %>%
  
  select_threshold(2.7) %>%
  
  add_from_x(nu_not_vio = "NU_NOTIFIC") %>%
  
  add_from_y(nu_not_int = "NU_NOTIFIC")


ident <- p5 %>%
  
  as_tibble() %>%
  
  filter(select)

nrow(ident)

kable(ident)

loc_vio <- intoxicacao %>%
  
  filter(NU_NOTIFIC %in% ident$nu_not_vio)

nrow(loc_vio)

nao_loc <- intoxicacao %>%
  
  filter(!(NU_NOTIFIC %in% ident$nu_not_vio))

nrow(nao_loc)

write_xlsx(intoxicacao, "2019/intoxicacao_2019.xlsx")
write_xlsx(violencia, "2019/violencia_2019.xlsx")
write_xlsx(loc_vio, "2019/loc_vio_2019.xlsx")
write_xlsx(nao_loc, "2019/nao_loc_2019.xlsx")

#######################################################################################

intoxicacao1 <- read.dbf("Dados/INTOXNET2019-2021.dbf")

intoxicacao1 <- subset(intoxicacao1, year(intoxicacao1$DT_NOTIFIC) == 2021)

violencia1 <- read.dbf("Dados/VIOLENET2021.dbf")

#violencia <- subset(violencia, year(violencia$DT_NOTIFIC) == 2020)

p5 <- intoxicacao1 %>%
  
  pair_blocking(violencia1, blocking_var = "CS_SEXO") %>%
  
  #filter_pairs_for_deduplication() %>%
  
  compare_pairs(
    by = c("NM_PACIENT", "DT_NASC", "NM_MAE_PAC"),
    default_comparator = jaro_winkler(0.9)
  ) %>%
  
  score_simsum() %>%
  
  select_threshold(2.7) %>%
  
  add_from_x(nu_not_vio = "NU_NOTIFIC") %>%
  
  add_from_y(nu_not_int = "NU_NOTIFIC")


ident <- p5 %>%
  
  as_tibble() %>%
  
  filter(select)

nrow(ident)

kable(ident)

loc_vio1 <- intoxicacao1 %>%
  
  filter(NU_NOTIFIC %in% ident$nu_not_vio)

nrow(loc_vio1)

nao_loc1 <- intoxicacao1 %>%
  
  filter(!(NU_NOTIFIC %in% ident$nu_not_vio))

nrow(nao_loc1)

write_xlsx(intoxicacao1, "2021/intoxicacao_2021.xlsx")
write_xlsx(violencia1, "2021/violencia_2021.xlsx")
write_xlsx(loc_vio1, "2021/loc_vio_2021.xlsx")
write_xlsx(nao_loc1, "2021/nao_loc_2021.xlsx")

