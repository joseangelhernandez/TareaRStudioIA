library(httr)
library(jsonlite)
library(plotly)
library(readxl)

#PERSONAS DETENIDAS EN UN VUELO ILEGAL EN EL 2018

#REPOSITORIOS

Data2020 <- read_excel("estadisticas personas detenidas ard 2018-2021.xlsx", 
                       sheet = "Año 2020", na = "0")
View(Data2020)

Data2020 <- data.frame(Data2020)
colnames(Data2020) <- c("Nacionalidad" , "Detenidas")

g <- plot_ly(Data2020, labels = ~Nacionalidad, 
             values = ~Detenidas, 
             type = 'pie')
g <- g %>% layout(title = 'Personas detenidas ilegalmente en viajes por Nacionalidad 2020',
                  xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                  yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

g

#TERMINA AQUÍ EL SEGUNDO GRÁFICO

#-----------------------------------------------------------------------------------------