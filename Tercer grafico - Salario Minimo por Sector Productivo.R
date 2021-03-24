library(httr)
library(jsonlite)
library(plotly)
library(readxl)


#ESTADISTICA DEL SALARIO MINIMO POR AÑO Y SECTOR PRODUCTIVO NACIONAL

#REPOSITORIOS

Dataset <- read_excel("EstadisticasdeSalarioMinimoPromedioporSectores,MEPYD,2000-2019.xlsx", 
                      sheet = "salario minimo promedio 2000 - ", 
                      na = "0")
View(Dataset)

Dataset <- data.frame(Dataset)
colnames(Dataset)<-c("Sector", "Tipo", "Areas", "Año", "SalarioMin")

g = plot_ly(Dataset, x = ~Año, y = ~SalarioMin,
              name = ~Areas,
              type = 'scatter',
              mode = 'lines+markers')
g %>% layout(title="Estadistica de salario minimo por area empresarial 2000-2019")


#TERMINA AQUÍ EL TERCER GRÁFICO

#-----------------------------------------------------------------------