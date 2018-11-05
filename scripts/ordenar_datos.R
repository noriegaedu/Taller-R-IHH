library(openxlsx)
library(lubridate)

# funcion para determinar anho bisiesto
is.leapyear = function(year){
    return(((year %% 4 == 0) & (year %% 100 != 0)) | (year %% 400 == 0))
}

# lectura de archivo
san_calixto <- read.xlsx("./datos/San_Calixto.xlsx", startRow = 5, colNames = FALSE)
# nombre del archivo leido
nombre <- 'san_calixto'

#vector de fechas
f <- seq.Date(as.Date("1981-01-01"), 
              as.Date("2016-12-31"), 
              by = "day") 

# data frame vacio (solo con fechas) para llenar con infomracion acumulada de estacion
t <- data.frame(fecha = f)
# data frame vacio para llenar datos
d <- data.frame(NULL) #data frame vacio para llenar datos
san_calixto[san_calixto == "****"] <- NA #reemplaza todos los ****
for (j in 1:36) {
    # expresion para seleccionar infomracion de cada anho conforme el indice i aumenta
    sub <- san_calixto[eval(3 + (j - 1)*38):eval(3 + (j - 1)*38 + 30), 2:13]
    # para determinar si el anho evaluado es anho bisiesto
    bis <- is.leapyear(eval(2014 + j))
    # bucle para escoger un mes
    for (i in 1:12) {
        diasmes <- days_in_month(i) # dias en el mes escogido
        if (i == 2 & bis == T)  diasmes <- diasmes + 1 # para modificar el numero de dias para anhos bisiestos
        msub <- as.numeric(as.character(sub[,i])) # extrae el mes i del anho evaluado j
        msub <- msub[1:diasmes] # extrae los datos del mes evaluado i 
        msub <- data.frame(msub) # convierte la info en data frame para...
        d <- rbind(d, msub) # ...combinar con infomracion acumulada de otros meses
    }
    # termina el bucle de meses
}
# termina el bucle de anhos
t <- cbind(t, d) # se combina informacion acumulada 
names(t) <- c('fecha', nombre) # se cambia los nombres de las estaciones



