library(httr)
library(jsonlite)
library(plotly)
library(readxl)

#ESTADISTICA DEL CAPITAL RECAUDADO POR AÑO Y TRATADO

#REPOSITORIOS

DATAIMPORT <- read_excel("importaciones_por_acuerdos_comerciales_2017-2020.xlsx", 
                         sheet = "DataSegregadaFINAL", na = "0")
View(DATAIMPORT)

DATAIMPORT <- data.frame(DATAIMPORT)
colnames(DATAIMPORT)<-c("Año", "AAPP", "DRCAFTA", "EPA", "TLCARICOM", "TLCENTROAMERICA")

f <- plot_ly(DATAIMPORT, x = ~Año, y = ~AAPP, type = 'bar', name = 'AAPP')
f <- f %>% add_trace(y = ~DRCAFTA, name = 'DRCAFTA')
f <- f %>% add_trace(y = ~EPA, name = 'EPA')
f <- f %>% add_trace(y = ~TLCARICOM, name = 'TLCARICOM')
f <- f %>% add_trace(y = ~TLCENTROAMERICA, name = 'TLCENTROAMERICA')
f <- f %>% layout(yaxis = list(title = 'Capital'), barmode = 'group')
f %>% layout(title="Estadistica del capital aportado en importaciones por tratado LC")


#TERMINA AQUÍ EL CUARTO GRÁFICO

#-----------------------------------------------------------------------------------------