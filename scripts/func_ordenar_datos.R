#' @author Eduardo Noriega
#' 
#' @description Crear archivo multiestacon a partir de varios archivos sueltos
#' 
#' @param archivos ruta donde se encuentran los archivos xlsx
#' @param inicio fecha en caracteres con el inicio de los datos
#' @param fin fecha en caracteres con el inicio de los datos
#' @param salida caracter para nombra al archivo csv de salida
#' 
#' @return La funcion crea un archivo csv multiestacion
#' 
ordenar <- function(archivos, inicio, fin, salida){ 
    require(openxlsx)
    require(lubridate)
    
    # funcion para determinar anho bisiesto
    is.leapyear = function(year){
        return(((year %% 4 == 0) & (year %% 100 != 0)) | (year %% 400 == 0))
    }
    
    # lectura de archivos xlsx dentro de ruta del argumento `archivos`
    exc_nom <- list.files(archivos, pattern = ".xlsx", full.names = T)
    # nombres de los archivos sin la extencios `xlsx`
    nombre <- list.files(archivos, pattern = '.xlsx')
    nombre <- gsub('.xlsx', '', nombre)
    
    # vector de fechas por dia segun la fecha de inicio y fin
    f <- seq.Date(as.Date(inicio), as.Date(fin), by = "day") 
    
    # lista vacia para guardar los archivos leidos como objetos de R
    exc_list <- list(NULL)
    # bucle para leer cada archivo y acumularlos en la lista `exc_list`
    for (p in seq_along(exc_nom)) {
        exc_list[[p]] <- read.xlsx(exc_nom[[p]], startRow = 5, cols = c(1:13), colNames = F)
    }
    
    #exc_list <- lapply(exc_list, read.xlsx, startRow = 5, cols = c(1:13), colNames = F)
    
    # data frame vacio (solo con fechas) para llenar con infomracion de cada estacion
    t <- data.frame(fecha = f)
    # bucle para odenar datos
    for (k in 1:length(nombre)) { # iterar el numero de nombres leidos
        cc_est <- exc_list[[k]]  # extrae cada estacion en cada iteracion
        cc_est[cc_est == "****"] <- NA # reemplaza todos los ****
        
        # datos ordenados:
        d <- data.frame(NULL) # data frame vacio para llenar datos
        # bucle para escoger un anho
        for (j in 1:eval(year(as.Date(fin)) - year(as.Date(inicio)) + 1)) { #2016-1981+1 = 36, anos del periodo 1981:2016
            # expresion para seleccionar infomracion de cada anho conforme el indice i aumenta
            sub <- cc_est[eval(3 + (j - 1)*38):eval(3 + (j - 1)*38 + 30),2:13]
            # para determinar si el anho evaluado es anho bisiesto
            bis <- is.leapyear(eval(year(as.Date(inicio)) - 1 + j)) #1981-1+j, para que anos vayan de acuerdo al indice j 
            # bucle para escoger un mes
            for (i in 1:12) {
                diasmes <- days_in_month(i) # dias en el mes escogido
                if (i == 2 & bis == T)  diasmes <- diasmes + 1 # para modificar el numero de dias para anhos bisiestos
                msub <- as.numeric(as.character(sub[,i])) # extrae el mes del anho evaluado j
                msub <- msub[1:diasmes] # extrae el numero de datos del mes evaluado i 
                msub <- data.frame(msub) # convierte la info en data frame para...
                d <- rbind(d, msub) # ...combinar con infomracion acumulada de otros meses
            }
            # termina el bucle de meses
        }
        # termina el bucle de anhos
        t <- cbind(t, d) # se combina informacion de estaciones 
    }
    names(t) <- c("fecha", nombre) # se cambia los nombres de las estaciones
    write.csv(t, paste0("H:/taller_ihh_oficial/Taller-R-IHH/datos/", salida, ".csv"), row.names = F) 
}
