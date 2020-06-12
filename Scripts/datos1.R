#Lectura de datos
library(gdata)
datos<- read.xls("datos.xlsx")

#Formato fecha
fecha<- as.Date(datos$Fecha, "%Y-%m-%d")
t<- data.frame(fecha,datos$Pmm)

#Agrupaci??n por mes y suma
library(dplyr)
resumen <- t %>% 
  mutate(anoymes=format(fecha,"%Y-%m")) %>%
  group_by(anoymes) %>% 
  summarise(total.mm= sum(datos.Pmm))


