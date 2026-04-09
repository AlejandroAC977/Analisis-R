# funciones basicas de visualizacion
head(Estudiantes)
names(Estudiantes)
View(Estudiantes)
str(Estudiantes)
help(str) # Explica las funciones en la pestaña help

# Traer todos los datos de una columna, Attach es necesario
attach(Estudiantes)
Estudiantes$age
age

# Analisis Univriado de Datos

# variable Mjob (mothers job): variable cualitativa
table(Estudiantes$Mjob) # tabular
View(table(Estudiantes$Fjob)) # con view podemos verlo en una tabla aparte

# tabla proporcional de nuestra cuenta de Mjob
prop.table(table(Estudiantes$Mjob)) 

#################### Graficacion ####################

# Grafico de barras
barplot(table(Estudiantes$Fjob), col=1:5)
barplot(table(Estudiantes$Fjob), main="Trabajo de Padre")
barplot(table(Estudiantes$Fjob), main="Trabajo de Padre", xlab="FJob", ylab = "Cantidad")
barplot(table(Estudiantes$Fjob), main="Trabajo de Padre", 
        xlab="FJob", 
        ylab = "Cantidad", 
        col = 4)
# barplo  Final
barplot(table(Estudiantes$Fjob), main="Trabajo de Padre", 
                                xlab="FJob", 
                                ylab = "Cantidad", 
                                col = "steelblue")


# grafico de torta
pie(table(Estudiantes$Mjob), main = "Mother Job", col = 1:5)
help(pie)

# Edad
# Basicamente me la tabulacion divida entre cuatro rangos de edades 
table(cut(age, 4)) # toma el rango y subdivide para tener los intervalos

prop.table(table(cut(age, 4))) # proporcion de los rangos hechos

# Histograma
hist(age)           
help(hist)           
# ahora barplot
barplot(table(Estudiantes$age), col=1:5)

# funcion de densidad estimada
hist(G1, main = "Calificacion 1", 
     col = 4,
     xlab="Calificacion",ylab = "Frecuencia",
     freq= FALSE) 
lines(density(G1), col=2)

# Segmentar en funciona  una varible (guardian)
age_m <- age[guardian=="mother"]
age_f <- age[guardian=="father"]
age_o <- age[guardian=="other"]

age_f
View(age_f)

