# .Rprofile
cat("=== PROYECTO: Análisis Exploratorio de Datos ===\n")
cat("Cursos: Ciencia de Datos\n")
cat("Fecha:", Sys.Date(), "\n")
car("Directorio de trabajo:", getwd(), "\n\n")

#Cargar paquetes comunes  automáticamente
if(interactive()) {
  for (carpeta in carpetas){
    if (!dir.exists(carpeta)){
      dir.create(carpeta, recursive = TRUE)
      cat(" Carpeta creada:", carpeta, "\n")
      
    }else{
      cat("Carpeta ya existe:", carpeta, "\n")
    }
  }
}
crear_estructura()  
