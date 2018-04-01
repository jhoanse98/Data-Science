#vectores

v_numerico<- c(1,11,46)
v_caracter<- c("a","b","c")
v_booleano<-c(TRUE, FALSE, TRUE)

class(v_booleano) #class me dice que tipo de dato es el vector
v_caracter[1] #los vectores en r comienzan desde 1

v_booleano[c(2,3)]
v_numerico >10
#[1] FALSE  TRUE  TRUE
v_numerico
#[1]  1 11 46
mayor_que <- v_numerico > 10
mayor_que
v_numerico[mayor_que]
#[1] 11 46 al mandarle mayor_que lo que hace es mostrar los valores true

#factores clasificaciones que le hago a mis etiquetas
tipo_de_estudiantes <- c("estudiante","no estudiante","estudiante","no estudiante")

#convertir tipo estudiante a factor
cat_estudiante <- factor(tipo_de_estudiantes)

#mostrar categorias
cat_estudiante

levels(cat_estudiante) # me muestra las etiquetas resultantes

#promedio
?mean  #interrogacion me dice o explica la funcion que le estoy mandando (en este caso mean)
#mean retorna el promedio
#argumentos
args(mean) #args me muestra como es la funcion (parametros)
#function (x, ...) 
  #NULL

# a grades vector

grados <- c(8.5,7,9,5.5,6)

mean(grados)
#[1] 7.2

mean(x=grados)

#limpiar datos

#grados <- c(8.5,7,9, NA, 6)


mean(grados, trim=0, na.rm=TRUE)#trim recortar valores  vacios antes y despues
#si se desea excluir valores como NA al realizar el calculo del promedio
#se debe especificar el na.rm=TRUE, es decir borrar(rm) nulos(NA).


#crear funcion

multiplicar <- function(a,b){
  return (a*b)
}

#llamar la funcion 
resultado <- multiplicar(3,6)
resultado

#abrir archivo csv
carpeta<-"/home/jhoan/Escritorio" # primero guardamos la direccion del archivo
setwd(carpeta) #almacena la direccion del archivo
getwd() #obtiene la direccion del archivo
liga <- read.csv('SP1.csv') #al ya tener la direccion procedemos a guardar el archivo csv en liga
list.files() # me enlista todos los programas de mi "carpeta" (direccion que le mande)
#factor modelo de clasificacion. unos son numeros y otros no

head(liga)


#dimensiones del registro
dim(liga) #me cuenta el numero de registros y el numero de columnas
#[1] 280  64

#estructura del registro
str(liga)

liga$HomeTeam   #lo que hace el signo de peso es mostrar el nombre de cada una de las columnas
  
#solo aplica para tipo factor
levels(liga$Date)

liga$FTHG
#tratamiento de rangos
liga$rangos[liga$FTHG>=3] <- "goleada"

liga$rangos[liga$FTHG==2] <- "promedio"
liga$rangos[liga$FTHG==1] <- "minima"
liga$rangos[liga$FTHG==0] <- "blanco"
liga$rangos


#visualizar
table(liga$rangos)

#graficar datos
alto <- table(liga$rangos)
barplot(alto)
bar_nom<-c("goleada","promedio", "minima", "blanco")
barplot(alto,ylab="valores", names.arg = bar_nom)

#codigo de barras del equipo que mas veces empato
#generar la tabla de victorias, empates y derrotas


  