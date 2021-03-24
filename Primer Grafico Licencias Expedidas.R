library(httr)
library(jsonlite)
library(plotly)
library(readxl)

#PRIMER GRÁFICO CON TABLA DE VARIACIÓN POR EXPEDICIÓN DE LICENCIAS DE CONDUCIR
#Repositorios

RepData <- read_excel("Estadistica de Licencia de Conducir Civiles 2019.xlsx", 
                      sheet = "INTRANT, 2018 - 2020", range = "A1:E73")

RepData <- RepData[,-c(2:4)]

View(RepData)

RepData <- data.frame(RepData)
colnames(RepData) <- c("Lugar" , "Licencias_expedidas")

p = plot_ly(RepData, x = ~Licencias_expedidas, y = ~Lugar,
            name = 'Licencias_expedidas',
            type = 'scatter',
            mode = 'markers')
p %>% layout(title="Licencias expedidas por localidades en el año 2019 INTRANT")

#TERMINA AQUÍ EL PRIMER GRÁFICO

#-----------------------------------------------------------------------------------------
