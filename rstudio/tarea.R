carpeta<-"/home/jhoan/Escritorio" # primero guardamos la direccion del archivo
setwd(carpeta) #almacena la direccion del archivo
getwd() #obtiene la direccion del archivo
liga <- read.csv('SP1.csv') #al ya tener la direccion procedemos a guardar el archivo csv 

"codigo de barras de los equipos que mas empataron"
liga$HomeTeam[liga$FTR == 'D']
liga$AwayTeam[liga$FTR == 'D']


table(liga$HomeTeam[liga$FTR == 'D'])
table(liga$AwayTeam[liga$FTR == 'D'])

alto3 <- table(liga$AwayTeam[liga$FTR == 'D'])
barplot(alto3)

alto <- table(liga$HomeTeam[liga$FTR == 'D'])
barplot(alto)

"generar tabla de empates, victorias y derrotas"


liga$empates[liga$FTR=='D'] <- "empate"
liga$empates[liga$FTR=='H'] <- "local"
liga$empates[liga$FTR=='A'] <- "visitante"

table(liga$empates)
alto2 <- table(liga$empates)
barplot(alto2)
