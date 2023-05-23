if(!require(tidyverse)) install.packages("tidyverse");library(tidyverse)
if(!require(reclin)) install.packages("reclin");library(reclin)
if(!require(digest)) install.packages("digest");library(digest)
if(!require(knitr)) install.packages("knitr");library(knitr)
if(!require(DT)) install.packages("DT");library(DT)
if(!require(foreign)) install.packages("foreign");library(foreign)
if(!require(lubridate)) install.packages("lubridate");library(lubridate)
if(!require(writexl)) install.packages("writexl");library(writexl)

intoxicacao <- read.dbf("Dados/Banco de Intoxicação Exógena 16022022.dbf")

intoxicacao <- subset(intoxicacao, intoxicacao$ID_MN_RESI == "310620" & year(intoxicacao$DT_NOTIFIC) == 2021)

violencia <- read.dbf("Dados/Banco de Violência 16022022.dbf")

violencia <- subset(violencia, violencia$ID_MN_RESI == "310620" & year(violencia$DT_NOTIFIC) == 2021)

pares_blocagem <- pair_blocking(x = intoxicacao, y = intoxicacao, blocking_var = c("CS_SEXO")) %>%
  
  filter_pairs_for_deduplication()

pares_blocagem

p_deter <- pares_blocagem %>%
  
  compare_pairs(by = c("NM_PACIENT", "DT_NASC", "NM_MAE_PAC"))


pares_iguais <- p_deter %>%
  
  as_tibble() %>%
  
  filter(NM_PACIENT & DT_NASC & NM_MAE_PAC)

pares_iguais

intoxicacao %>%
  
  slice(pares_iguais$x[1], pares_iguais$y[1]) %>%
  
  kable()

intoxicacao %>%
  
  slice(pares_iguais$x[9], pares_iguais$y[9]) %>%
  
  kable()


pares_link_prob <- pares_blocagem %>%
  
  compare_pairs( by = c("NM_PACIENT", "DT_NASC", "NM_MAE_PAC"),
                 default_comparator = jaro_winkler(threshold = 0.9))

pares_link_prob

p3 <- pares_link_prob %>%
  
  score_simsum() %>%
  
  select_threshold(threshold = 3.5)

p3

p3 %>%
  
  as_tibble() %>%
  
  count(select)

p3 <- p3 %>%
  
  add_from_x(nu_not_x = "NU_NOTIFIC") %>%
  add_from_y(nu_not_y = "NU_NOTIFIC") 

reg_dup <- p3 %>%
  
  as_tibble() %>%
  
  filter(select) %>%
  
  select(x, y, simsum, select, nu_not_x, nu_not_y) %>%
  
  arrange(simsum)

reg_dup


########################################################################################################################

pares_blocagem_vio <- pair_blocking(x = violencia, y = violencia, blocking_var = c("CS_SEXO")) %>%
  
  filter_pairs_for_deduplication()

pares_blocagem_vio

p_deter_vio <- pares_blocagem_vio %>%
  
  compare_pairs(by = c("NM_PACIENT", "DT_NASC", "NM_MAE_PAC"))


pares_iguais_vio <- p_deter_vio %>%
  
  as_tibble() %>%
  
  filter(NM_PACIENT & DT_NASC & NM_MAE_PAC)

pares_iguais_vio

violencia %>%
  
  slice(pares_iguais_vio$x[1], pares_iguais_vio$y[1]) %>%
  
  kable()

violencia %>%
  
  slice(pares_iguais_vio$x[9], pares_iguais_vio$y[9]) %>%
  
  kable()


pares_link_prob_vio <- pares_blocagem_vio %>%
  
  compare_pairs( by = c("NM_PACIENT", "DT_NASC", "NM_MAE_PAC"),
                 default_comparator = jaro_winkler(threshold = 0.9))

pares_link_prob_vio

p3_vio <- pares_link_prob_vio %>%
  
  score_simsum() %>%
  
  select_threshold(threshold = 3.5)

p3_vio

p3_vio %>%
  
  as_tibble() %>%
  
  count(select)

p3_vio <- p3_vio %>%
  
  add_from_x(nu_not_x = "NU_NOTIFIC") %>%
  add_from_y(nu_not_y = "NU_NOTIFIC") 

reg_dup_vio <- p3_vio %>%
  
  as_tibble() %>%
  
  filter(select) %>%
  
  select(x, y, simsum, select, nu_not_x, nu_not_y) %>%
  
  arrange(simsum)

reg_dup_vio

############################################################################################################################


p5 <- violencia %>%
  
  pair_blocking(intoxicacao, blocking_var = "CS_SEXO") %>%
  
  filter_pairs_for_deduplication() %>%
  
  compare_pairs(
    by = c("NM_PACIENT", "DT_NASC", "NM_MAE_PAC"),
    default_comparator = jaro_winkler(0.9)
  ) %>%
  
  score_simsum()  %>%
  
  select_threshold(2.7) %>%
  
  add_from_x(nu_not_vio = "NU_NOTIFIC") %>%
  
  add_from_y(nu_not_int = "NU_NOTIFIC")


ident <- p5 %>%
  
  as_tibble() %>%
  
  filter(select)

nrow(ident)

loc_vio <- violencia %>%
  
  filter(NU_NOTIFIC %in% ident$nu_not_vio)

nrow(loc_vio)

loc_int <- intoxicacao %>%
  
  filter(NU_NOTIFIC %in% ident$nu_not_int)

nrow(loc_int)


nao_loc_int <- intoxicacao  %>%
  
  filter(!(NU_NOTIFIC %in% ident$nu_not_vio))

kable(nao_loc_int)

nao_loc_vio <- violencia  %>%
  
  filter(!(NU_NOTIFIC %in% ident$nu_not_vio))

kable(nao_loc_vio)



write_xlsx(loc_vio, "Escrita/localizados.xlsx")
write_xlsx(nao_loc, "Escrita/nao_localizados.xlsx")

write_xlsx(intoxicacao, "Escrita/intoxicacao.xlsx")
write_xlsx(violencia, "Escrita/violencia.xlsx")











