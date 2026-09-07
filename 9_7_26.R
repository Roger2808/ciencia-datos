
library(dplyr)

library(googlesheets4)
library(rvest)

nombres <- c("Falcon 9", "Saturn V", "Soyuz", "Ariane 5", "Delta IV")
años = c(2010, 1967, 1966, 1996, 2002)
data.frame(Nombre = nombres, "Primer Lanzamiento" = años) -> cohetes
cohetes

print(cohetes)

indice_antiguo = which.min(cohetes$Primer.Lanzamiento)
print(paste("El cohete más antiguo es:", cohetes$Nombre[indice_antiguo]))

ruta = "https://raw.githubusercontent.com/abemen/datasets/refs/heads/main/antropometricas.csv"
antropometricas = read.csv(ruta)
print(antropometricas)

#Webscrapping

url <- "https://www.nasa.gov/2026-news-releases/"

#Leer el html de la página

pagina <- read_html(url) 


titulos <- pagina %>%
  html_nodes(".hds-a11y-heading-22")
  html_text(trim = TRUE) 
  
print(titulos)
