
# Secuencias
2:8
#Secuencias inidicando el paso
seq(2,3,by=0.1)
#Vector repetitivo
rep(1:3, times = 3)
#Vector con elementos repetitivos
rep(1:3, each=4)
#Almacenar un vector
x <- seq(1, 5, by=0.5)

#Crear funciones
doble <- function(x){
  resultado <- x * 2
  return(resultado)
}

doble(5)

#Operaciones con vectores
x + 10
x * 3
m = 0.5
b = -2
y = m * x + b
y[3]
y[-3]
m = matrix(x, nrow = 3, ncol = 3)
m

n = matrix(x, nrow = 3, ncol = 6)
n

#Gráficas

plot(x,y)

#Datos desde el clipboard
install.packages("clipr")
library(clipr)
datos2 = clipr::read_clip_tbl()
datos2
#Dimension del conjunto de datos (variables)
length(antropometricas)

#Dimension de una columna (1 variable)
length(antropometricas$Sexo)
max(antropometricas$Peso)
min(antropometricas$Peso)
which.max(antropometricas$Peso)
antropometricas$Peso[34]

#Graficas utilizando ggplot
#Tres capas = data, aes, geom

misiones <- data.frame(
  Mision = c("Apollo 11", "Apollo 13", "Crew-1", "Starliner", "Artemis I"),
  Exito = c(1,0,1,0,1),
  Costo = c(355, 400, 220, 450, 500)
)

#Grafico de barras de costo por misión , coloreado por éxito
install.packages("ggplot2")
library(ggplot2)
ggplot(misiones, aes(x = Mision, y = Costo, fill = as.factor(Exito))) + 
  geom_bar(stat = "identity")
  labs(title = "Costo de misiones especiales",
       subtitle = "Rojo", Azul = "Exito",
       y = "Costo (Millones USD)", x = "Mision",
       fill = "¿Éxito?",
       )
  theme_minimal()
  
  