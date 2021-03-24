library(httr)
library(jsonlite)
library(plotly)
library(readxl)

#ESTADISTICA DEL CAPITAL RECAUDADO POR AÑO Y TRATADO

#REPOSITORIOS

IMPORT2 <- read_excel("importaciones_por_acuerdos_comerciales_2017-2020.xlsx", 
                      sheet = "Acuerdos comerciales", na = "0")
View(IMPORT2)

IMPORT2 <- data.frame(IMPORT2)

j <- plot_ly(IMPORT2, x = ~Importacion, y = ~Mes,
             color = ~Año, size = ~Importacion, type = 'bar')
j %>% layout(title="Relación por mes y año de las importaciones en RD")

#TERMINA AQUÍ EL QUINTO GRÁFICO

#-----------------------------------------------------------------------------------------