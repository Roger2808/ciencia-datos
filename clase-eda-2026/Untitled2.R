# scripts/00_instalar_paquetes.R
#Ejecuta este script solo UNA VEZ para instalar todos los paquetes

paquetes_necesarios <- c(
  #Manipulación y visualización
  "tidyverse",
  "ggplot2",
  "dplyr",
  "tidyr",
  
  #Datos Faltantes
  "naniar",
  "VIM",
  "mice",
  "paych",
  
  #Reportes
  "rmarkdown",
  "knitr",
)