if(!require(tidyverse)) install.packages("tidyverse");library(tidyverse)
if(!require(reclin)) install.packages("reclin");library(reclin)
if(!require(digest)) install.packages("digest");library(digest)
if(!require(knitr)) install.packages("knitr");library(knitr)
if(!require(DT)) install.packages("DT");library(DT)
if(!require(foreign)) install.packages("foreign");library(foreign)
if(!require(lubridate)) install.packages("lubridate");library(lubridate)
if(!require(writexl)) install.packages("writexl");library(writexl)
if(!require(readxl)) install.packages("readxl");library(readxl)
if(!require(openxlsx)) install.packages("openxlsx");library(openxlsx)


base_dados <- read_xlsx("2021/nao_loc_2021.xlsx")

base_dados <- subset(base_dados, base_dados$SG_UF == 31)

write.xlsx(base_dados, "2021/nao_loc_2021.xlsx")

base_dados_alfenas <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310160 | ID_MN_RESI == 310200 | ID_MN_RESI == 310430 | ID_MN_RESI == 310530 | ID_MN_RESI == 310840 |
    ID_MN_RESI == 311100 | ID_MN_RESI == 311130 | ID_MN_RESI == 311160 | ID_MN_RESI == 311470 | ID_MN_RESI == 311710 |
    ID_MN_RESI == 312240 | ID_MN_RESI == 312520 | ID_MN_RESI == 313900 | ID_MN_RESI == 314720 | ID_MN_RESI == 315170 |
    ID_MN_RESI == 316690 | ID_MN_RESI == 310410 | ID_MN_RESI == 310950 | ID_MN_RESI == 312830 | ID_MN_RESI == 312870 |
    ID_MN_RESI == 313690 | ID_MN_RESI == 314300 | ID_MN_RESI == 314410 | ID_MN_RESI == 316390
  )

write.xlsx(base_dados_alfenas, "2021/dados_alfenas_2021.xlsx", sheetName = "Alfenas")


base_dados_barbacena <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310163 | ID_MN_RESI == 310210 | ID_MN_RESI == 310290 | ID_MN_RESI == 310560 | ID_MN_RESI == 311220 |
    ID_MN_RESI == 311320 | ID_MN_RESI == 311630 | ID_MN_RESI == 312150 | ID_MN_RESI == 312940 | ID_MN_RESI == 314660 |
    ID_MN_RESI == 315440 | ID_MN_RESI == 315730 | ID_MN_RESI == 315940 | ID_MN_RESI == 315870 | ID_MN_RESI == 316620 |
    ID_MN_RESI == 313540 | ID_MN_RESI == 314590 | ID_MN_RESI == 311800 | ID_MN_RESI == 316090 | ID_MN_RESI == 311310 |
    ID_MN_RESI == 311490 | ID_MN_RESI == 311540 | ID_MN_RESI == 311830 | ID_MN_RESI == 312040 | ID_MN_RESI == 313390 |
    ID_MN_RESI == 313790 | ID_MN_RESI == 315080 | ID_MN_RESI == 315380 | ID_MN_RESI == 315520 | ID_MN_RESI == 315910 |
    ID_MN_RESI == 316600
  )

write.xlsx(base_dados_barbacena, "2021/dados_barbacena_2021.xlsx", sheetName = "Barbacena")


base_dados_belo_horizonte <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310620 | ID_MN_RESI == 310640 | ID_MN_RESI == 311000 | ID_MN_RESI == 313460 | ID_MN_RESI == 314230 |
    ID_MN_RESI == 314480 | ID_MN_RESI == 313660 | ID_MN_RESI == 315390 | ID_MN_RESI == 315460 | ID_MN_RESI == 315480 |
    ID_MN_RESI == 315670 | ID_MN_RESI == 315780 | ID_MN_RESI == 316830 | ID_MN_RESI == 310670 | ID_MN_RESI == 310810 |
    ID_MN_RESI == 310900 | ID_MN_RESI == 312060 | ID_MN_RESI == 312410 | ID_MN_RESI == 312600 | ID_MN_RESI == 313010 |
    ID_MN_RESI == 313665 | ID_MN_RESI == 314015 | ID_MN_RESI == 314070 | ID_MN_RESI == 315040 | ID_MN_RESI == 315530 |
    ID_MN_RESI == 316292 | ID_MN_RESI == 311860 | ID_MN_RESI == 312980 | ID_MN_RESI == 316553 | ID_MN_RESI == 313190 |
    ID_MN_RESI == 314000 | ID_MN_RESI == 314610 | ID_MN_RESI == 311787 | ID_MN_RESI == 313760 | ID_MN_RESI == 314110 |
    ID_MN_RESI == 314930 | ID_MN_RESI == 315900 | ID_MN_RESI == 316295 | ID_MN_RESI == 317120
  )

write.xlsx(base_dados_belo_horizonte, "2021/dados_belo_horizonte_2021.xlsx", sheetName = "Belo Horizonte")


base_dados_cel_fabriciano <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310780 | ID_MN_RESI == 311340 | ID_MN_RESI == 312385 | ID_MN_RESI == 313055 | ID_MN_RESI == 313090 |
    ID_MN_RESI == 315015 | ID_MN_RESI == 315725 | ID_MN_RESI == 315935 | ID_MN_RESI == 316095 | ID_MN_RESI == 316447 |
    ID_MN_RESI == 317005 | ID_MN_RESI == 317057 | ID_MN_RESI == 317115 | ID_MN_RESI == 310300 | ID_MN_RESI == 311940 |
    ID_MN_RESI == 312000 | ID_MN_RESI == 312180 | ID_MN_RESI == 313500 | ID_MN_RESI == 314030 | ID_MN_RESI == 315053 |
    ID_MN_RESI == 316870 | ID_MN_RESI == 310050 | ID_MN_RESI == 310630 | ID_MN_RESI == 310880 | ID_MN_RESI == 310925 |
    ID_MN_RESI == 312250 | ID_MN_RESI == 312930 | ID_MN_RESI == 313115 | ID_MN_RESI == 313130 | ID_MN_RESI == 313610 |
    ID_MN_RESI == 314170 | ID_MN_RESI == 314435 | ID_MN_RESI == 314995 | ID_MN_RESI == 315895 | ID_MN_RESI == 316260
  )

write.xlsx(base_dados_cel_fabriciano, "2021/dados_cel_fabriciano_2021.xlsx", sheetName = "Cel Fabriciano")


base_dados_diamantina <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310340 | ID_MN_RESI == 310650 | ID_MN_RESI == 311950 | ID_MN_RESI == 312650 | ID_MN_RESI == 313545 |
    ID_MN_RESI == 317160 | ID_MN_RESI == 311350 | ID_MN_RESI == 311680 | ID_MN_RESI == 311810 | ID_MN_RESI == 312010 |
    ID_MN_RESI == 312100 | ID_MN_RESI == 312160 | ID_MN_RESI == 312540 | ID_MN_RESI == 312760 | ID_MN_RESI == 313250 |
    ID_MN_RESI == 315330 | ID_MN_RESI == 312550 | ID_MN_RESI == 316590 | ID_MN_RESI == 314060 | ID_MN_RESI == 315600 |
    ID_MN_RESI == 315680 | ID_MN_RESI == 310445 | ID_MN_RESI == 311230 | ID_MN_RESI == 311610 | ID_MN_RESI == 313652 |
    ID_MN_RESI == 313835 | ID_MN_RESI == 314180 | ID_MN_RESI == 316970 | ID_MN_RESI == 317107 | ID_MN_RESI == 310240 |
    ID_MN_RESI == 311750 | ID_MN_RESI == 316020 | ID_MN_RESI == 316650 | ID_MN_RESI == 316710
  )

write.xlsx(base_dados_diamantina, "2021/dados_diamantina_2021.xlsx", sheetName = "Diamantina")

base_dados_divinopolis <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310740 | ID_MN_RESI == 312320 | ID_MN_RESI == 312470 | ID_MN_RESI == 313880 | ID_MN_RESI == 314050 |
    ID_MN_RESI == 314240 | ID_MN_RESI == 316660 | ID_MN_RESI == 310080 | ID_MN_RESI == 311040 | ID_MN_RESI == 311120 |
    ID_MN_RESI == 311190 | ID_MN_RESI == 311200 | ID_MN_RESI == 312021 | ID_MN_RESI == 315880 | ID_MN_RESI == 310390 |
    ID_MN_RESI == 311420 | ID_MN_RESI == 311660 | ID_MN_RESI == 312230 | ID_MN_RESI == 313350 | ID_MN_RESI == 314970 |
    ID_MN_RESI == 316180 | ID_MN_RESI == 316460 | ID_MN_RESI == 310510 | ID_MN_RESI == 311980 | ID_MN_RESI == 311995 |
    ID_MN_RESI == 312610 | ID_MN_RESI == 313030 | ID_MN_RESI == 314130 | ID_MN_RESI == 314650 | ID_MN_RESI == 316820 |
    ID_MN_RESI == 313220 | ID_MN_RESI == 313370 | ID_MN_RESI == 313380 | ID_MN_RESI == 315060 | ID_MN_RESI == 310420 |
    ID_MN_RESI == 313530 | ID_MN_RESI == 313720 | ID_MN_RESI == 314890 | ID_MN_RESI == 316040 | ID_MN_RESI == 311400 |
    ID_MN_RESI == 311450 | ID_MN_RESI == 314560 | ID_MN_RESI == 314770 | ID_MN_RESI == 315990 | ID_MN_RESI == 316120 |
    ID_MN_RESI == 311760 | ID_MN_RESI == 313020 | ID_MN_RESI == 313830 | ID_MN_RESI == 314520 | ID_MN_RESI == 314580 |
    ID_MN_RESI == 314710 | ID_MN_RESI == 315140 | ID_MN_RESI == 316310
  )

write.xlsx(base_dados_divinopolis, "2021/dados_divinopolis_2021.xlsx", sheetName = "Divinópolis")

base_dados_gov_galadares <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310180 | ID_MN_RESI == 311265 | ID_MN_RESI == 311920 | ID_MN_RESI == 312220 | ID_MN_RESI == 312370 |
    ID_MN_RESI == 312580 | ID_MN_RESI == 312690 | ID_MN_RESI == 312730 | ID_MN_RESI == 312750 | ID_MN_RESI == 312770 |
    ID_MN_RESI == 313320 | ID_MN_RESI == 313507 | ID_MN_RESI == 314010 | ID_MN_RESI == 317150 | ID_MN_RESI == 314420 |
    ID_MN_RESI == 315750 | ID_MN_RESI == 316160 | ID_MN_RESI == 316165 | ID_MN_RESI == 316300 | ID_MN_RESI == 316550 |
    ID_MN_RESI == 316770 | ID_MN_RESI == 316840 | ID_MN_RESI == 316950 | ID_MN_RESI == 317190 | ID_MN_RESI == 311570 |
    ID_MN_RESI == 312210 | ID_MN_RESI == 313180 | ID_MN_RESI == 313960 | ID_MN_RESI == 314150 | ID_MN_RESI == 314467 |
    ID_MN_RESI == 316105 | ID_MN_RESI == 316257 | ID_MN_RESI == 311205 | ID_MN_RESI == 312695 | ID_MN_RESI == 314840 |
    ID_MN_RESI == 314860 | ID_MN_RESI == 316280 | ID_MN_RESI == 316350 | ID_MN_RESI == 316410 | ID_MN_RESI == 310110 |
    ID_MN_RESI == 310220 | ID_MN_RESI == 311840 | ID_MN_RESI == 312083 | ID_MN_RESI == 312737 | ID_MN_RESI == 313410 |
    ID_MN_RESI == 315430 | ID_MN_RESI == 315950 | ID_MN_RESI == 310060 | ID_MN_RESI == 313655 | ID_MN_RESI == 315820 |
    ID_MN_RESI == 316450
  )

write.xlsx(base_dados_gov_galadares, "2021/dados_gov_valadares_2021.xlsx", sheetName = "Gov Valadares")


base_dados_itabira <- base_dados %>%
  
  filter(
    ID_MN_RESI == 311380 | ID_MN_RESI == 312260 | ID_MN_RESI == 312310 | ID_MN_RESI == 312800 | ID_MN_RESI == 316610 |
    ID_MN_RESI == 317180 | ID_MN_RESI == 310540 | ID_MN_RESI == 310770 | ID_MN_RESI == 311535 | ID_MN_RESI == 312590 |
    ID_MN_RESI == 313170 | ID_MN_RESI == 313280 | ID_MN_RESI == 314370 | ID_MN_RESI == 314750 | ID_MN_RESI == 315720 |
    ID_MN_RESI == 315800 | ID_MN_RESI == 316050 | ID_MN_RESI == 316190 | ID_MN_RESI == 316480 | ID_MN_RESI == 310600 |
    ID_MN_RESI == 313620 | ID_MN_RESI == 314470 | ID_MN_RESI == 315570 | ID_MN_RESI == 316100
    
  )

write.xlsx(base_dados_itabira, "2021/dados_itabira_2021.xlsx", sheetName = "Itabira")

base_dados_ituiutaba <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310980 | ID_MN_RESI == 311110 | ID_MN_RESI == 311180 | ID_MN_RESI == 311260 | ID_MN_RESI == 311580 |
    ID_MN_RESI == 312910 | ID_MN_RESI == 313140 | ID_MN_RESI == 313420 | ID_MN_RESI == 315980
  )

write.xlsx(base_dados_ituiutaba, "2021/dados_ituiutaba_2021.xlsx", sheetName = "Ituiutaba")

base_dados_januaria <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310860 | ID_MN_RESI == 311115 | ID_MN_RESI == 312965 | ID_MN_RESI == 313005 | ID_MN_RESI == 313535 |
    ID_MN_RESI == 313865 | ID_MN_RESI == 313868 | ID_MN_RESI == 314795 | ID_MN_RESI == 315057 | ID_MN_RESI == 316110 |
    ID_MN_RESI == 316240 | ID_MN_RESI == 316420 | ID_MN_RESI == 317000 | ID_MN_RESI == 317052 | ID_MN_RESI == 317090 |
    ID_MN_RESI == 310825 | ID_MN_RESI == 311783 | ID_MN_RESI == 313210 | ID_MN_RESI == 313520 | ID_MN_RESI == 314915 |
    ID_MN_RESI == 313695 | ID_MN_RESI == 313930 | ID_MN_RESI == 314225 | ID_MN_RESI == 314270 | ID_MN_RESI == 316245
  )

write.xlsx(base_dados_januaria, "2021/dados_januaria_2021.xlsx", sheetName = "Januária")

base_dados_juiz_de_fora <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310610 | ID_MN_RESI == 311590 | ID_MN_RESI == 311620 | ID_MN_RESI == 311960 | ID_MN_RESI == 312500 |
    ID_MN_RESI == 312738 | ID_MN_RESI == 313670 | ID_MN_RESI == 314080 | ID_MN_RESI == 315010 | ID_MN_RESI == 315540 |
    ID_MN_RESI == 315860 | ID_MN_RESI == 316750 | ID_MN_RESI == 310280 | ID_MN_RESI == 310360 | ID_MN_RESI == 310680 |
    ID_MN_RESI == 310720 | ID_MN_RESI == 310750 | ID_MN_RESI == 313850 | ID_MN_RESI == 313860 | ID_MN_RESI == 314540 |
    ID_MN_RESI == 314780 | ID_MN_RESI == 314940 | ID_MN_RESI == 315590 | ID_MN_RESI == 315727 | ID_MN_RESI == 315930 |
    ID_MN_RESI == 310330 | ID_MN_RESI == 314570 | ID_MN_RESI == 316070 | ID_MN_RESI == 310690 | ID_MN_RESI == 312130 |
    ID_MN_RESI == 312850 | ID_MN_RESI == 313980 | ID_MN_RESI == 314020 | ID_MN_RESI == 314950 | ID_MN_RESI == 315620 |
    ID_MN_RESI == 316290 | ID_MN_RESI == 316560
  )

write.xlsx(base_dados_juiz_de_fora, "2021/dados_juiz_de_fora_2021.xlsx", sheetName = "Juiz de Fora")

base_dados_leopoldina <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310150 | ID_MN_RESI == 312460 | ID_MN_RESI == 315110 | ID_MN_RESI == 316000 | ID_MN_RESI == 317210 |
    ID_MN_RESI == 310440 | ID_MN_RESI == 310460 | ID_MN_RESI == 311530 | ID_MN_RESI == 312290 | ID_MN_RESI == 313260 |
    ID_MN_RESI == 313800 | ID_MN_RESI == 313840 | ID_MN_RESI == 314670 | ID_MN_RESI == 315410 | ID_MN_RESI == 315840
  )

write.xlsx(base_dados_leopoldina, "2021/dados_leopoldina_2021.xlsx", sheetName = "Leopoldina")


base_dados_manhuacu <- base_dados %>%
  
  filter(
    ID_MN_RESI == 311010 | ID_MN_RESI == 311210 | ID_MN_RESI == 311330 | ID_MN_RESI == 312200 | ID_MN_RESI == 312420 |
    ID_MN_RESI == 312530 | ID_MN_RESI == 312595 | ID_MN_RESI == 314587 | ID_MN_RESI == 314875 | ID_MN_RESI == 314900 |
    ID_MN_RESI == 316920 | ID_MN_RESI == 310030 | ID_MN_RESI == 310205 | ID_MN_RESI == 315350 | ID_MN_RESI == 311290 |
    ID_MN_RESI == 311600 | ID_MN_RESI == 311740 | ID_MN_RESI == 312352 | ID_MN_RESI == 313120 | ID_MN_RESI == 313770 |
    ID_MN_RESI == 313867 | ID_MN_RESI == 313940 | ID_MN_RESI == 313950 | ID_MN_RESI == 314053 | ID_MN_RESI == 314090 |
    ID_MN_RESI == 314400 | ID_MN_RESI == 315190 | ID_MN_RESI == 315415 | ID_MN_RESI == 315790 | ID_MN_RESI == 315890 |
    ID_MN_RESI == 316255 | ID_MN_RESI == 316360 | ID_MN_RESI == 316760 | ID_MN_RESI == 316805
  )

write.xlsx(base_dados_manhuacu, "2021/dados_manhuacu_2021.xlsx", sheetName = "Manhuaçu")

base_dados_montes_claros <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310730 | ID_MN_RESI == 312380 | ID_MN_RESI == 312660 | ID_MN_RESI == 312825 | ID_MN_RESI == 313640 |
    ID_MN_RESI == 314545 | ID_MN_RESI == 311880 | ID_MN_RESI == 313560 | ID_MN_RESI == 313730 | ID_MN_RESI == 316225 |
    ID_MN_RESI == 316265 | ID_MN_RESI == 310850 | ID_MN_RESI == 311270 | ID_MN_RESI == 312030 | ID_MN_RESI == 312670 |
    ID_MN_RESI == 312780 | ID_MN_RESI == 313657 | ID_MN_RESI == 311547 | ID_MN_RESI == 312430 | ID_MN_RESI == 312733 |
    ID_MN_RESI == 313505 | ID_MN_RESI == 313510 | ID_MN_RESI == 313925 | ID_MN_RESI == 314085 | ID_MN_RESI == 314100 |
    ID_MN_RESI == 314290 | ID_MN_RESI == 314505 | ID_MN_RESI == 314655 | ID_MN_RESI == 315220 | ID_MN_RESI == 315450 |
    ID_MN_RESI == 316695 | ID_MN_RESI == 317103 | ID_MN_RESI == 311650 | ID_MN_RESI == 312735 | ID_MN_RESI == 313200 |
    ID_MN_RESI == 313680 | ID_MN_RESI == 314200 | ID_MN_RESI == 314330 | ID_MN_RESI == 312707 | ID_MN_RESI == 314537 |
    ID_MN_RESI == 314625 | ID_MN_RESI == 315650 | ID_MN_RESI == 315700 | ID_MN_RESI == 315737 | ID_MN_RESI == 310665 |
    ID_MN_RESI == 312087 | ID_MN_RESI == 313065 | ID_MN_RESI == 314345 | ID_MN_RESI == 314465 | ID_MN_RESI == 315560 |
    ID_MN_RESI == 316045 | ID_MN_RESI == 316270 | ID_MN_RESI == 316800 | ID_MN_RESI == 317065
  )

write.xlsx(base_dados_montes_claros, "2021/dados_montes_claros_2021.xlsx", sheetName = "Montes Claros")

base_dados_passos <- base_dados %>%
  
  filter(
    ID_MN_RESI == 311240 | ID_MN_RESI == 311510 | ID_MN_RESI == 311640 | ID_MN_RESI == 312120 | ID_MN_RESI == 312970 |
    ID_MN_RESI == 311440 | ID_MN_RESI == 314510 | ID_MN_RESI == 310190 | ID_MN_RESI == 310760 | ID_MN_RESI == 312630 |
    ID_MN_RESI == 313375 | ID_MN_RESI == 314790 | ID_MN_RESI == 316220 | ID_MN_RESI == 316294 | ID_MN_RESI == 311280 |
    ID_MN_RESI == 312340 | ID_MN_RESI == 312810 | ID_MN_RESI == 315050 | ID_MN_RESI == 315150 | ID_MN_RESI == 316430 |
    ID_MN_RESI == 317060 | ID_MN_RESI == 313290 | ID_MN_RESI == 313480 | ID_MN_RESI == 314320 | ID_MN_RESI == 315290 |
    ID_MN_RESI == 316470 | ID_MN_RESI == 316510
  )

write.xlsx(base_dados_passos, "2021/dados_passos_2021.xlsx", sheetName = "Passos")

base_dados_patos_de_minas <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310855 | ID_MN_RESI == 313630 | ID_MN_RESI == 313753 | ID_MN_RESI == 312070 | ID_MN_RESI == 312860 |
    ID_MN_RESI == 312890 | ID_MN_RESI == 313710 | ID_MN_RESI == 313750 | ID_MN_RESI == 314800 | ID_MN_RESI == 315340 |
    ID_MN_RESI == 316170 | ID_MN_RESI == 316680 | ID_MN_RESI == 317075 | ID_MN_RESI == 317100 | ID_MN_RESI == 310380 |
    ID_MN_RESI == 311430 | ID_MN_RESI == 314120 | ID_MN_RESI == 315550 | ID_MN_RESI == 315970 | ID_MN_RESI == 316210 |
    ID_MN_RESI == 316890
  )

write.xlsx(base_dados_patos_de_minas, "2021/dados_patos_de_minas_2021.xlsx", sheetName = "Patos")


base_dados_pedra_azul <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310170 | ID_MN_RESI == 310520 | ID_MN_RESI == 312560 | ID_MN_RESI == 313470 | ID_MN_RESI == 313580 |
    ID_MN_RESI == 313600 | ID_MN_RESI == 313650 | ID_MN_RESI == 314055 | ID_MN_RESI == 314675 | ID_MN_RESI == 315510 |
    ID_MN_RESI == 315660 | ID_MN_RESI == 315710 | ID_MN_RESI == 315810 | ID_MN_RESI == 316030 | ID_MN_RESI == 311700 |
    ID_MN_RESI == 313330 | ID_MN_RESI == 313400 | ID_MN_RESI == 314140 | ID_MN_RESI == 314315 | ID_MN_RESI == 315217 |
    ID_MN_RESI == 310100 | ID_MN_RESI == 310270 | ID_MN_RESI == 312235 | ID_MN_RESI == 312245 | ID_MN_RESI == 314870
  )

write.xlsx(base_dados_pedra_azul, "2021/dados_pedra_azul_2021.xlsx", sheetName = "Pedra Azul")

base_dados_pirapora <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310940 | ID_MN_RESI == 312960 | ID_MN_RESI == 313810 | ID_MN_RESI == 315120 | ID_MN_RESI == 315213 |
    ID_MN_RESI == 315760 | ID_MN_RESI == 317080
  )

write.xlsx(base_dados_pirapora, "2021/dados_pirapora_2021.xlsx", sheetName = "Pirapora")

base_dados_ponte_nova <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310040 | ID_MN_RESI == 310230 | ID_MN_RESI == 310250 | ID_MN_RESI == 310570 | ID_MN_RESI == 312170 |
    ID_MN_RESI == 312270 | ID_MN_RESI == 312820 | ID_MN_RESI == 313550 | ID_MN_RESI == 314585 | ID_MN_RESI == 315020 |
    ID_MN_RESI == 315210 | ID_MN_RESI == 315400 | ID_MN_RESI == 315490 | ID_MN_RESI == 315500 | ID_MN_RESI == 315740 |
    ID_MN_RESI == 316010 | ID_MN_RESI == 316340 | ID_MN_RESI == 316400 | ID_MN_RESI == 316556 | ID_MN_RESI == 316630 |
    ID_MN_RESI == 317050 | ID_MN_RESI == 310370 | ID_MN_RESI == 311020 | ID_MN_RESI == 311170 | ID_MN_RESI == 314830 |
    ID_MN_RESI == 314880 | ID_MN_RESI == 315230 | ID_MN_RESI == 316380 | ID_MN_RESI == 316850 | ID_MN_RESI == 317130
  )

write.xlsx(base_dados_ponte_nova, "2021/dados_ponte_nova_2021.xlsx", sheetName = "Ponte Nova")


base_dados_pouso_alegre <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310890 | ID_MN_RESI == 311720 | ID_MN_RESI == 311850 | ID_MN_RESI == 312110 | ID_MN_RESI == 312740 |
    ID_MN_RESI == 313240 | ID_MN_RESI == 313990 | ID_MN_RESI == 314040 | ID_MN_RESI == 314730 | ID_MN_RESI == 314910 |
    ID_MN_RESI == 315090 | ID_MN_RESI == 315100 | ID_MN_RESI == 316320 | ID_MN_RESI == 316540 | ID_MN_RESI == 317220 |
    ID_MN_RESI == 310140 | ID_MN_RESI == 310260 | ID_MN_RESI == 311030 | ID_MN_RESI == 312990 | ID_MN_RESI == 315180 |
    ID_MN_RESI == 315920 | ID_MN_RESI == 310790 | ID_MN_RESI == 310830 | ID_MN_RESI == 310910 | ID_MN_RESI == 310970 |
    ID_MN_RESI == 311050 | ID_MN_RESI == 311060 | ID_MN_RESI == 311360 | ID_MN_RESI == 311780 | ID_MN_RESI == 311790 |
    ID_MN_RESI == 311990 | ID_MN_RESI == 312440 | ID_MN_RESI == 312450 | ID_MN_RESI == 312510 | ID_MN_RESI == 312920 |
    ID_MN_RESI == 313060 | ID_MN_RESI == 313150 | ID_MN_RESI == 313360 | ID_MN_RESI == 313490 | ID_MN_RESI == 314340 |
    ID_MN_RESI == 314380 | ID_MN_RESI == 314440 | ID_MN_RESI == 314600 | ID_MN_RESI == 315250 | ID_MN_RESI == 315960 |
    ID_MN_RESI == 316230 | ID_MN_RESI == 316440 | ID_MN_RESI == 316557 | ID_MN_RESI == 316580 | ID_MN_RESI == 316740 |
    ID_MN_RESI == 316905 | ID_MN_RESI == 316910 | ID_MN_RESI == 316980
  )

write.xlsx(base_dados_pouso_alegre, "2021/dados_pouso_alegre_2021.xlsx", sheetName = "Pouso Alegre")


base_dados_sao_joao_del_rei <- base_dados %>%
  
  filter(
    ID_MN_RESI == 312140 | ID_MN_RESI == 312390 | ID_MN_RESI == 310590 | ID_MN_RESI == 310800 | ID_MN_RESI == 311520 |
    ID_MN_RESI == 311970 | ID_MN_RESI == 312300 | ID_MN_RESI == 313000 | ID_MN_RESI == 313740 | ID_MN_RESI == 313910 |
    ID_MN_RESI == 314450 | ID_MN_RESI == 315030 | ID_MN_RESI == 315270 | ID_MN_RESI == 315420 | ID_MN_RESI == 315610 |
    ID_MN_RESI == 315733 | ID_MN_RESI == 316250 | ID_MN_RESI == 316500 | ID_MN_RESI == 316530 | ID_MN_RESI == 316880
  )

write.xlsx(base_dados_sao_joao_del_rei, "2021/dados_sao_joao_del_rei_2021.xlsx", sheetName = "São João")

base_dados_sete_lagoas <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310480 | ID_MN_RESI == 310920 | ID_MN_RESI == 311910 | ID_MN_RESI == 312090 | ID_MN_RESI == 312570 |
    ID_MN_RESI == 313110 | ID_MN_RESI == 314250 | ID_MN_RESI == 314360 | ID_MN_RESI == 315320 | ID_MN_RESI == 316060 |
    ID_MN_RESI == 316935 | ID_MN_RESI == 310020 | ID_MN_RESI == 310320 | ID_MN_RESI == 310500 | ID_MN_RESI == 310700 |
    ID_MN_RESI == 310960 | ID_MN_RESI == 310990 | ID_MN_RESI == 311250 | ID_MN_RESI == 311560 | ID_MN_RESI == 311890 |
    ID_MN_RESI == 312640 | ID_MN_RESI == 312720 | ID_MN_RESI == 313100 | ID_MN_RESI == 313570 | ID_MN_RESI == 313970 |
    ID_MN_RESI == 314350 | ID_MN_RESI == 314640 | ID_MN_RESI == 314690 | ID_MN_RESI == 314740 | ID_MN_RESI == 314960 |
    ID_MN_RESI == 315200 | ID_MN_RESI == 315360 | ID_MN_RESI == 315370 | ID_MN_RESI == 315850 | ID_MN_RESI == 316720
  )

write.xlsx(base_dados_sete_lagoas, "2021/dados_sao_sete_lagoas_2021.xlsx", sheetName = "Sete Lagoas")


base_dados_teofilo_otoni <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310090 | ID_MN_RESI == 310660 | ID_MN_RESI == 312015 | ID_MN_RESI == 312705 | ID_MN_RESI == 313890 |
    ID_MN_RESI == 314850 | ID_MN_RESI == 315765 | ID_MN_RESI == 317030 | ID_MN_RESI == 311080 | ID_MN_RESI == 312680 |
    ID_MN_RESI == 313270 | ID_MN_RESI == 314490 | ID_MN_RESI == 315000 | ID_MN_RESI == 316330 | ID_MN_RESI == 311370 |
    ID_MN_RESI == 314430 | ID_MN_RESI == 316670 | ID_MN_RESI == 311300 | ID_MN_RESI == 311545 | ID_MN_RESI == 313230 |
    ID_MN_RESI == 314630 | ID_MN_RESI == 310285 | ID_MN_RESI == 310470 | ID_MN_RESI == 312675 | ID_MN_RESI == 313700 |
    ID_MN_RESI == 313920 | ID_MN_RESI == 314530 | ID_MN_RESI == 314535 | ID_MN_RESI == 314620 | ID_MN_RESI == 315240 |
    ID_MN_RESI == 316555 | ID_MN_RESI == 316860
  )

write.xlsx(base_dados_teofilo_otoni, "2021/dados_teofilo_otoni_2021.xlsx", sheetName = "Teófilo Otoni")


base_dados_uba <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310310 | ID_MN_RESI == 310550 | ID_MN_RESI == 312490 | ID_MN_RESI == 314210 | ID_MN_RESI == 314220 |
    ID_MN_RESI == 314390 | ID_MN_RESI == 314820 | ID_MN_RESI == 315645 | ID_MN_RESI == 316140 | ID_MN_RESI == 316443 |
    ID_MN_RESI == 317140 | ID_MN_RESI == 310870 | ID_MN_RESI == 311670 | ID_MN_RESI == 312190 | ID_MN_RESI == 312330 |
    ID_MN_RESI == 312400 | ID_MN_RESI == 312840 | ID_MN_RESI == 312880 | ID_MN_RESI == 312900 | ID_MN_RESI == 314160 |
    ID_MN_RESI == 315130 | ID_MN_RESI == 315310 | ID_MN_RESI == 315580 | ID_MN_RESI == 315630 | ID_MN_RESI == 316150 |
    ID_MN_RESI == 316570 | ID_MN_RESI == 316730 | ID_MN_RESI == 316790 | ID_MN_RESI == 316900 | ID_MN_RESI == 316990 |
    ID_MN_RESI == 317200
  )

write.xlsx(base_dados_uba, "2021/dados_uba_2021.xlsx", sheetName = "Ubá")


base_dados_uberaba <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310400 | ID_MN_RESI == 311150 | ID_MN_RESI == 312950 | ID_MN_RESI == 314920 | ID_MN_RESI == 314980 |
    ID_MN_RESI == 315300 | ID_MN_RESI == 315770 | ID_MN_RESI == 316810 | ID_MN_RESI == 311455 | ID_MN_RESI == 311690 |
    ID_MN_RESI == 312700 | ID_MN_RESI == 312710 | ID_MN_RESI == 313340 | ID_MN_RESI == 313440 | ID_MN_RESI == 313862 |
    ID_MN_RESI == 315070 | ID_MN_RESI == 315160 | ID_MN_RESI == 316130 | ID_MN_RESI == 317043 | ID_MN_RESI == 310070 |
    ID_MN_RESI == 311140 | ID_MN_RESI == 311730 | ID_MN_RESI == 311820 | ID_MN_RESI == 312125 | ID_MN_RESI == 315690 |
    ID_MN_RESI == 317010 | ID_MN_RESI == 317110
  )

write.xlsx(base_dados_uberaba, "2021/dados_uberaba_2021.xlsx", sheetName = "Uberaba")


base_dados_unai <- base_dados %>%
  
  filter(
    ID_MN_RESI == 310450 | ID_MN_RESI == 310820 | ID_MN_RESI == 310930 | ID_MN_RESI == 310945 | ID_MN_RESI == 311615 |
    ID_MN_RESI == 312247 | ID_MN_RESI == 312620 | ID_MN_RESI == 314437 | ID_MN_RESI == 314700 | ID_MN_RESI == 315445 |
    ID_MN_RESI == 317040 | ID_MN_RESI == 317047
    
  )

write.xlsx(base_dados_unai, "2021/dados_unai_2021.xlsx", sheetName = "Unaí")


base_dados_varginha <- base_dados %>%
  
  filter(
    ID_MN_RESI == 311460 | ID_MN_RESI == 313040 | ID_MN_RESI == 313080 | ID_MN_RESI == 313430 | ID_MN_RESI == 313450 |
    ID_MN_RESI == 313820 | ID_MN_RESI == 313870 | ID_MN_RESI == 314460 | ID_MN_RESI == 314990 | ID_MN_RESI == 315470 |
    ID_MN_RESI == 310120 | ID_MN_RESI == 310130 | ID_MN_RESI == 310490 | ID_MN_RESI == 311410 | ID_MN_RESI == 311480 |
    ID_MN_RESI == 311550 | ID_MN_RESI == 311770 | ID_MN_RESI == 312050 | ID_MN_RESI == 312080 | ID_MN_RESI == 312280 |
    ID_MN_RESI == 313300 | ID_MN_RESI == 313310 | ID_MN_RESI == 313590 | ID_MN_RESI == 313780 | ID_MN_RESI == 314190 |
    ID_MN_RESI == 314550 | ID_MN_RESI == 314760 | ID_MN_RESI == 315260 | ID_MN_RESI == 316370 | ID_MN_RESI == 316490 |
    ID_MN_RESI == 316640 | ID_MN_RESI == 316700 | ID_MN_RESI == 316780 | ID_MN_RESI == 317170 | ID_MN_RESI == 311070 |
    ID_MN_RESI == 311090 | ID_MN_RESI == 311390 | ID_MN_RESI == 316080 | ID_MN_RESI == 316520 | ID_MN_RESI == 316930 |
    ID_MN_RESI == 310710 | ID_MN_RESI == 311870 | ID_MN_RESI == 313050 | ID_MN_RESI == 315830 | ID_MN_RESI == 316940 |
    ID_MN_RESI == 311900 | ID_MN_RESI == 312360 | ID_MN_RESI == 314260 | ID_MN_RESI == 316200 | ID_MN_RESI == 317070
  )

write.xlsx(base_dados_varginha, "2021/dados_varginha_2021.xlsx", sheetName = "Vargilha")







