if(!require(RPostgreSQL)) install.packages("RPostgreSQL");library(RPostgreSQL)
if(!require(writexl)) install.packages("writexl");library(writexl)
if(!require(dplyr)) install.packages("dplyr");library(dplyr)
library(xlsx)

drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv,
                 dbname = "pop31",
                 host = "10.14.8.155",
                 port = "5432",
                 user = "bi_die",
                 password = "S@ude_2022")

dbListTables(con)

dbquery <- dbGetQuery(con, "SELECT * 
                            FROM view_bi.view_tb_do")

dbquery <- dbGetQuery(con, "SELECT * 
                            FROM view_bi.view_tb_do 
                            WHERE (co_cid_causa_basica LIKE 'C%' or 
                            co_cid_causa_basica LIKE 'D46%') and 
                            co_municipio_ibge_residencia LIKE '31%'")

regional <- dbGetQuery(con, "SELECT *
                             FROM view_bi.view_tb_regiao"
                             )

dbquery_colunas_retiradas <- dbquery %>%
  
  select(co_municipio_ibge, nu_micro, co_seq_do, tp_nivel, nu_do, nu_registro, dt_registro, tp_obito, dt_obito,
         hr_obito, dt_nascimento, sg_sexo, tp_raca_cor, tp_estado_civil, tp_escolaridade, co_ocupacao_falecido,
         co_municipio_ibge_residencia, co_cid_causa_basica)

write.csv2(dbquery, "Dados/Banco_dados_do.csv", na="")
write.csv2(dbquery_colunas_retiradas, "Dados/Banco_dados_do_trab.csv", na="")


write_xlsx(dbquery, "Dados/Banco_dados_do.xlsx")
write_xlsx(dbquery_colunas_retiradas, "Dados/Banco_dados_do_trab.xlsx")

dbDisconnect(con)

