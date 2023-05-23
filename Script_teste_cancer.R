if(!require(foreign)) install.packages("foreign");library(foreign)
if(!require(tcltk)) install.packages("tcltk");library(tcltk)
if(!require(writexl)) install.packages("writexl");library(writexl)
if(!require(lubridate)) install.packages("lubridate");library(lubridate)
if(!require(readxl)) install.packages("readxl");library(readxl)
if(!require(tidyverse)) install.packages("tidyverse");library(tidyverse)
if(!require(readr)) install.packages("readr");library(readr)
if(!require(openxlsx)) install.packages("openxlsx");library(openxlsx)
if(!require(stringr)) install.packages("stringr");library(stringr)


teste_cancer <- read_xlsx("Dados/Banco_dados_do_trab.xlsx")

##Neoplasia maligna do lábio, cavidade oral e faringe
cancer_ano_cid10_C00_C10 <- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C00" | co_cid_causa_basica == "C000" | co_cid_causa_basica == "C001" | 
           co_cid_causa_basica == "C002" | co_cid_causa_basica == "C003" | co_cid_causa_basica == "C004" | 
           co_cid_causa_basica == "C005" | co_cid_causa_basica == "C006" | co_cid_causa_basica == "C007" | 
           co_cid_causa_basica == "C008" | co_cid_causa_basica == "C009" | 
         co_cid_causa_basica == "C01" | co_cid_causa_basica == "C010" | co_cid_causa_basica == "C011" | 
           co_cid_causa_basica == "C012" | co_cid_causa_basica == "C013" | co_cid_causa_basica == "C014" | 
           co_cid_causa_basica == "C015" | co_cid_causa_basica == "C016" | co_cid_causa_basica == "C017" | 
           co_cid_causa_basica == "C018" | co_cid_causa_basica == "C019"| 
         co_cid_causa_basica == "C02" | co_cid_causa_basica == "C020" | co_cid_causa_basica == "C021" | 
           co_cid_causa_basica == "C022" | co_cid_causa_basica == "C023" | co_cid_causa_basica == "C024" | 
           co_cid_causa_basica == "C025" | co_cid_causa_basica == "C026" | co_cid_causa_basica == "C027" | 
           co_cid_causa_basica == "C028" | co_cid_causa_basica == "C029"| 
         co_cid_causa_basica == "C03" | co_cid_causa_basica == "C030" | co_cid_causa_basica == "C031" | 
           co_cid_causa_basica == "C032" | co_cid_causa_basica == "C033" | co_cid_causa_basica == "C034" | 
           co_cid_causa_basica == "C035" | co_cid_causa_basica == "C036" | co_cid_causa_basica == "C037" | 
           co_cid_causa_basica == "C038" | co_cid_causa_basica == "C039"| 
         co_cid_causa_basica == "C04" | co_cid_causa_basica == "C040" | co_cid_causa_basica == "C041" | 
           co_cid_causa_basica == "C042" | co_cid_causa_basica == "C043" | co_cid_causa_basica == "C044" | 
           co_cid_causa_basica == "C045" | co_cid_causa_basica == "C046" | co_cid_causa_basica == "C047" | 
           co_cid_causa_basica == "C048" | co_cid_causa_basica == "C049"| 
         co_cid_causa_basica == "C05" | co_cid_causa_basica == "C050" | co_cid_causa_basica == "C051" | 
           co_cid_causa_basica == "C052" | co_cid_causa_basica == "C053" | co_cid_causa_basica == "C054" | 
           co_cid_causa_basica == "C055" | co_cid_causa_basica == "C056" | co_cid_causa_basica == "C057" | 
           co_cid_causa_basica == "C058" | co_cid_causa_basica == "C059"| 
         co_cid_causa_basica == "C06" | co_cid_causa_basica == "C060" | co_cid_causa_basica == "C061" | 
           co_cid_causa_basica == "C062" | co_cid_causa_basica == "C063" | co_cid_causa_basica == "C064" | 
           co_cid_causa_basica == "C065" | co_cid_causa_basica == "C066" | co_cid_causa_basica == "C067" | 
           co_cid_causa_basica == "C068" | co_cid_causa_basica == "C069"| 
         co_cid_causa_basica == "C07" | co_cid_causa_basica == "C070" | co_cid_causa_basica == "C071" | 
           co_cid_causa_basica == "C072" | co_cid_causa_basica == "C073" | co_cid_causa_basica == "C074" | 
           co_cid_causa_basica == "C075" | co_cid_causa_basica == "C076" | co_cid_causa_basica == "C077" | 
           co_cid_causa_basica == "C078" | co_cid_causa_basica == "C079"| 
         co_cid_causa_basica == "C08" | co_cid_causa_basica == "C080" | co_cid_causa_basica == "C081" | 
           co_cid_causa_basica == "C082" | co_cid_causa_basica == "C083" | co_cid_causa_basica == "C084" | 
           co_cid_causa_basica == "C085" | co_cid_causa_basica == "C086" | co_cid_causa_basica == "C087" | 
           co_cid_causa_basica == "C088" | co_cid_causa_basica == "C089"| 
         co_cid_causa_basica == "C09" | co_cid_causa_basica == "C090" | co_cid_causa_basica == "C091" | 
           co_cid_causa_basica == "C092" | co_cid_causa_basica == "C093" | co_cid_causa_basica == "C094" | 
           co_cid_causa_basica == "C095" | co_cid_causa_basica == "C096" | co_cid_causa_basica == "C097" | 
           co_cid_causa_basica == "C098" | co_cid_causa_basica == "C099"| 
         co_cid_causa_basica == "C10" | co_cid_causa_basica == "C100" | co_cid_causa_basica == "C101" | 
           co_cid_causa_basica == "C102" | co_cid_causa_basica == "C103" | co_cid_causa_basica == "C104" | 
           co_cid_causa_basica == "C105" | co_cid_causa_basica == "C106" | co_cid_causa_basica == "C107" | 
           co_cid_causa_basica == "C108" | co_cid_causa_basica == "C109", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write.xlsx(cancer_ano_cid10_C00_C10, "Teste_cancer/cancer_ano_cid10_C00_C14.xlsx", sheetName = "C00_C10")


##Neoplasia maligna do esôfago
cancer_ano_cid10_C15 <- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C15" | co_cid_causa_basica == "C150" | co_cid_causa_basica == "C151" | 
         co_cid_causa_basica == "C152" | co_cid_causa_basica == "C153" | co_cid_causa_basica == "C154" | 
         co_cid_causa_basica == "C155" | co_cid_causa_basica == "C156" | co_cid_causa_basica == "C157" | 
         co_cid_causa_basica == "C158" | co_cid_causa_basica == "C159", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write.xlsx(cancer_ano_cid10_C15, "Teste_cancer/cancer_ano_cid10_C15.xlsx", sheetName = "C15")


##Neoplasia maligna do estômago
cancer_ano_cid10_C16 <- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C16" | co_cid_causa_basica == "C160" | co_cid_causa_basica == "C161" |
         co_cid_causa_basica == "C162" | co_cid_causa_basica == "C163" | co_cid_causa_basica == "C164" |
         co_cid_causa_basica == "C165" | co_cid_causa_basica == "C166" | co_cid_causa_basica == "C167" |
         co_cid_causa_basica == "C168" | co_cid_causa_basica == "C169", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write.xlsx(cancer_ano_cid10_C16, "Teste_cancer/cancer_ano_cid10_C16.xlsx", sheetName = "C16")


##Neoplasia maligna da junção retossigmóide, reto, ânus e canal anal
cancer_ano_cid10_C18_C21 <- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C18" | co_cid_causa_basica == "C180" | co_cid_causa_basica == "C181" |
           co_cid_causa_basica == "C182" | co_cid_causa_basica == "C183" | co_cid_causa_basica == "C184" |
           co_cid_causa_basica == "C185" | co_cid_causa_basica == "C186" | co_cid_causa_basica == "C187" |
           co_cid_causa_basica == "C188" | co_cid_causa_basica == "C189" |
           co_cid_causa_basica == "C19" | co_cid_causa_basica == "C190" | co_cid_causa_basica == "C191" |
           co_cid_causa_basica == "C192" | co_cid_causa_basica == "C193" | co_cid_causa_basica == "C194" |
           co_cid_causa_basica == "C195" | co_cid_causa_basica == "C196" | co_cid_causa_basica == "C197" |
           co_cid_causa_basica == "C198" | co_cid_causa_basica == "C199"| 
           co_cid_causa_basica == "C20" | co_cid_causa_basica == "C200" | co_cid_causa_basica == "C201" |
           co_cid_causa_basica == "C202" | co_cid_causa_basica == "C203" | co_cid_causa_basica == "C204" |
           co_cid_causa_basica == "C205" | co_cid_causa_basica == "C206" | co_cid_causa_basica == "C207" |
           co_cid_causa_basica == "C208" | co_cid_causa_basica == "C209"| 
           co_cid_causa_basica == "C21" | co_cid_causa_basica == "C210" | co_cid_causa_basica == "C211" |
           co_cid_causa_basica == "C212" | co_cid_causa_basica == "C213" | co_cid_causa_basica == "C214" |
           co_cid_causa_basica == "C215" | co_cid_causa_basica == "C216" | co_cid_causa_basica == "C217" |
           co_cid_causa_basica == "C218" | co_cid_causa_basica == "C219", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write_xlsx(cancer_ano_cid10_C18_C21, "Teste_cancer/cancer_ano_cid10_C18_C21.xlsx")


##Neoplasia maligna da traquéia, dos brônquios e dos pulmões
cancer_ano_cid10_C33_C34 <- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C33" | co_cid_causa_basica == "C330" | co_cid_causa_basica == "C331" |
           co_cid_causa_basica == "C332" | co_cid_causa_basica == "C333" | co_cid_causa_basica == "C334" |
           co_cid_causa_basica == "C335" | co_cid_causa_basica == "C336" | co_cid_causa_basica == "C337" |
           co_cid_causa_basica == "C338" | co_cid_causa_basica == "C339" | 
           co_cid_causa_basica == "C34" | co_cid_causa_basica == "C340" | co_cid_causa_basica == "C341" |
           co_cid_causa_basica == "C342" | co_cid_causa_basica == "C343" | co_cid_causa_basica == "C344" |
           co_cid_causa_basica == "C345" | co_cid_causa_basica == "C346" | co_cid_causa_basica == "C347" |
           co_cid_causa_basica == "C348" | co_cid_causa_basica == "C349", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write_xlsx(cancer_ano_cid10_C33_C34, "Teste_cancer/cancer_ano_cid10_C33_C34.xlsx")


##Outras neoplasias malignas da pele
cancer_ano_cid10_C44 <- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C44" | co_cid_causa_basica == "C440" | co_cid_causa_basica == "C441" |
           co_cid_causa_basica == "C442" | co_cid_causa_basica == "C443" | co_cid_causa_basica == "C444" |
           co_cid_causa_basica == "C445" | co_cid_causa_basica == "C446" | co_cid_causa_basica == "C447" |
           co_cid_causa_basica == "C448" | co_cid_causa_basica == "C449", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write_xlsx(cancer_ano_cid10_C44, "Teste_cancer/cancer_ano_cid10_C44.xlsx")


##Neoplasia maligna da mama
cancer_ano_cid10_C50 <- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C50" | co_cid_causa_basica == "C500" | co_cid_causa_basica == "C501" |
           co_cid_causa_basica == "C502" | co_cid_causa_basica == "C503" | co_cid_causa_basica == "C504" |
           co_cid_causa_basica == "C505" | co_cid_causa_basica == "C506" | co_cid_causa_basica == "C507" |
           co_cid_causa_basica == "C508" | co_cid_causa_basica == "C509", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write_xlsx(cancer_ano_cid10_C50, "Teste_cancer/cancer_ano_cid10_C50.xlsx")


##Neoplasia maligna do colo do útero
cancer_ano_cid10_C53 <- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C53" | co_cid_causa_basica == "C530" | co_cid_causa_basica == "C531" |
           co_cid_causa_basica == "C532" | co_cid_causa_basica == "C533" | co_cid_causa_basica == "C534" |
           co_cid_causa_basica == "C535" | co_cid_causa_basica == "C536" | co_cid_causa_basica == "C537" |
           co_cid_causa_basica == "C538" | co_cid_causa_basica == "C539", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write_xlsx(cancer_ano_cid10_C53, "Teste_cancer/cancer_ano_cid10_C53.xlsx")


##Neoplasia maligna da próstata
cancer_ano_cid10_C61<- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C61" | co_cid_causa_basica == "C610" | co_cid_causa_basica == "C611" |
           co_cid_causa_basica == "C612" | co_cid_causa_basica == "C613" | co_cid_causa_basica == "C614" |
           co_cid_causa_basica == "C615" | co_cid_causa_basica == "C616" | co_cid_causa_basica == "C617" |
           co_cid_causa_basica == "C618" | co_cid_causa_basica == "C619", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write_xlsx(cancer_ano_cid10_C61, "Teste_cancer/cancer_ano_cid10_C61.xlsx")


##Linfoma não-Hodgkin
cancer_ano_cid10_C81_C85_C96 <- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C81" | co_cid_causa_basica == "C810" | co_cid_causa_basica == "C811" |
           co_cid_causa_basica == "C812" | co_cid_causa_basica == "C813" | co_cid_causa_basica == "C814" |
           co_cid_causa_basica == "C815" | co_cid_causa_basica == "C816" | co_cid_causa_basica == "C817" |
           co_cid_causa_basica == "C818" | co_cid_causa_basica == "C819" |
           co_cid_causa_basica == "C82" | co_cid_causa_basica == "C820" | co_cid_causa_basica == "C821" |
           co_cid_causa_basica == "C822" | co_cid_causa_basica == "C823" | co_cid_causa_basica == "C824" |
           co_cid_causa_basica == "C825" | co_cid_causa_basica == "C826" | co_cid_causa_basica == "C827" |
           co_cid_causa_basica == "C828" | co_cid_causa_basica == "C829"| 
           co_cid_causa_basica == "C83" | co_cid_causa_basica == "C830" | co_cid_causa_basica == "C831" |
           co_cid_causa_basica == "C832" | co_cid_causa_basica == "C833" | co_cid_causa_basica == "C834" |
           co_cid_causa_basica == "C835" | co_cid_causa_basica == "C836" | co_cid_causa_basica == "C837" |
           co_cid_causa_basica == "C838" | co_cid_causa_basica == "C839"| 
           co_cid_causa_basica == "C84" | co_cid_causa_basica == "C840" | co_cid_causa_basica == "C841" |
           co_cid_causa_basica == "C842" | co_cid_causa_basica == "C843" | co_cid_causa_basica == "C844" |
           co_cid_causa_basica == "C845" | co_cid_causa_basica == "C846" | co_cid_causa_basica == "C847" |
           co_cid_causa_basica == "C848" | co_cid_causa_basica == "C849"| 
           co_cid_causa_basica == "C85" | co_cid_causa_basica == "C850" | co_cid_causa_basica == "C851" |
           co_cid_causa_basica == "C852" | co_cid_causa_basica == "C853" | co_cid_causa_basica == "C854" |
           co_cid_causa_basica == "C855" | co_cid_causa_basica == "C856" | co_cid_causa_basica == "C857" |
           co_cid_causa_basica == "C858" | co_cid_causa_basica == "C859" |
           co_cid_causa_basica == "C96" | co_cid_causa_basica == "C960" | co_cid_causa_basica == "C961" |
           co_cid_causa_basica == "C962" | co_cid_causa_basica == "C963" | co_cid_causa_basica == "C964" |
           co_cid_causa_basica == "C965" | co_cid_causa_basica == "C966" | co_cid_causa_basica == "C967" |
           co_cid_causa_basica == "C968" | co_cid_causa_basica == "C969", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write_xlsx(cancer_ano_cid10_C82_C85, "Teste_cancer/cancer_ano_cid10_C82_C85.xlsx")


##Leucemia
cancer_ano_cid10_C91_C95 <- teste_cancer %>%
  
  filter(co_cid_causa_basica == "C91" | co_cid_causa_basica == "C910" | co_cid_causa_basica == "C911" |
           co_cid_causa_basica == "C912" | co_cid_causa_basica == "C913" | co_cid_causa_basica == "C914" |
           co_cid_causa_basica == "C915" | co_cid_causa_basica == "C916" | co_cid_causa_basica == "C917" |
           co_cid_causa_basica == "C918" | co_cid_causa_basica == "C919"| 
           co_cid_causa_basica == "C92" | co_cid_causa_basica == "C920" | co_cid_causa_basica == "C921" |
           co_cid_causa_basica == "C922" | co_cid_causa_basica == "C923" | co_cid_causa_basica == "C924" |
           co_cid_causa_basica == "C925" | co_cid_causa_basica == "C926" | co_cid_causa_basica == "C927" |
           co_cid_causa_basica == "C928" | co_cid_causa_basica == "C929"| 
           co_cid_causa_basica == "C93" | co_cid_causa_basica == "C930" | co_cid_causa_basica == "C931" |
           co_cid_causa_basica == "C932" | co_cid_causa_basica == "C933" | co_cid_causa_basica == "C934" |
           co_cid_causa_basica == "C935" | co_cid_causa_basica == "C936" | co_cid_causa_basica == "C937" |
           co_cid_causa_basica == "C938" | co_cid_causa_basica == "C939"| 
           co_cid_causa_basica == "C94" | co_cid_causa_basica == "C940" | co_cid_causa_basica == "C941" |
           co_cid_causa_basica == "C942" | co_cid_causa_basica == "C943" | co_cid_causa_basica == "C944" |
           co_cid_causa_basica == "C945" | co_cid_causa_basica == "C946" | co_cid_causa_basica == "C947" |
           co_cid_causa_basica == "C948" | co_cid_causa_basica == "C949"| 
           co_cid_causa_basica == "C95" | co_cid_causa_basica == "C950" | co_cid_causa_basica == "C951" |
           co_cid_causa_basica == "C952" | co_cid_causa_basica == "C953" | co_cid_causa_basica == "C954" |
           co_cid_causa_basica == "C955" | co_cid_causa_basica == "C956" | co_cid_causa_basica == "C957" |
           co_cid_causa_basica == "C958" | co_cid_causa_basica == "C959", sg_sexo != "I") %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write_xlsx(cancer_ano_cid10_C91_C95, "Teste_cancer/cancer_ano_cid10_C91_C95.xlsx")


##Neoplasias começando com a letra C
cancer_ano_cid10_C <- teste_cancer %>%
  
  filter(sg_sexo != "I", !(co_cid_causa_basica == "C77" | co_cid_causa_basica == "C770" | co_cid_causa_basica == "C771" |
                             co_cid_causa_basica == "C772" | co_cid_causa_basica == "C773" | co_cid_causa_basica == "C774" |
                             co_cid_causa_basica == "C775" | co_cid_causa_basica == "C776" | co_cid_causa_basica == "C777" |
                             co_cid_causa_basica == "C778" | co_cid_causa_basica == "C779"| 
                             co_cid_causa_basica == "C78" | co_cid_causa_basica == "C780" | co_cid_causa_basica == "C781" |
                             co_cid_causa_basica == "C782" | co_cid_causa_basica == "C783" | co_cid_causa_basica == "C784" |
                             co_cid_causa_basica == "C785" | co_cid_causa_basica == "C786" | co_cid_causa_basica == "C787" |
                             co_cid_causa_basica == "C788" | co_cid_causa_basica == "C789"| 
                             co_cid_causa_basica == "C79" | co_cid_causa_basica == "C790" | co_cid_causa_basica == "C791" |
                             co_cid_causa_basica == "C792" | co_cid_causa_basica == "C793" | co_cid_causa_basica == "C794" |
                             co_cid_causa_basica == "C795" | co_cid_causa_basica == "C796" | co_cid_causa_basica == "C797" |
                             co_cid_causa_basica == "C798" | co_cid_causa_basica == "C799")) %>%
  
  group_by(year(dt_obito), sg_sexo, nu_macro_resi) %>%
  
  count(name = 'n_casos')

write.xlsx(cancer_ano_cid10_C, "Teste_cancer/todos_cid10_C.xlsx", sheetName = "CID10_C")
