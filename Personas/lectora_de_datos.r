  # Lectura de CSV y XLS 

 # Lectura de datos en csv con .choose()
datos <- read.csv(file.choose(), header = TRUE, sep= ";")
attach(datos)
 # Visualizar datos (tambien utilizable desde el apartado de vista)
View(datos)
str(datos)
  # CSV estudiantes con ruta
Estudiantes <- read.csv("C:\Users\alejandro\Documents\R-personas\datos\student-mat.csv", header = TRUE, sep= ";")
attach(Estudiantes)
View(Estudiantes)
str(Estudiantes)

 # lectura en .xls
 # install.packages("readxl")   (comento el codigo de instalacion)

library(readxl)
datos_ex <- read_xlsx(file.choose())
attach(datos_ex)
View(datos_ex)
str(datos_ex)
