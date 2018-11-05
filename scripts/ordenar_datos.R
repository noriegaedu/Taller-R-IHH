library(openxlsx)
library(lubridate)


is.leapyear = function(year){
    return(((year %% 4 == 0) & (year %% 100 != 0)) | (year %% 400 == 0))
}

san_calixto <- read.xlsx("./datos/San_Calixto.xlsx", startRow = 5, colNames = FALSE)
nombre <- list.files("./datos/", pattern = '.xlsx')
nombre <- gsub('.xlsx', '', nombre)

#vector de fechas
f <- seq.Date(as.Date("1981-01-01"), 
              as.Date("2016-12-31"), 
              by = "day") 

t <- data.frame(fecha = f)
d <- data.frame(NULL) #data frame vacio para llenar datos
san_calixto[san_calixto == "****"] <- NA #reemplaza todos los ****
for (j in 1:36) {
    sub <- san_calixto[eval(3 + (j - 1)*38):eval(3 + (j - 1)*38 + 30), 2:13]
    bis <- is.leapyear(eval(2014 + j))
    for (i in 1:12) {
        diasmes <- days_in_month(i)
        if (i == 2 & bis == T)  diasmes <- diasmes + 1
        msub <- as.numeric(as.character(sub[,i]))
        msub <- msub[1:diasmes]
        msub <- data.frame(msub)
        d <- rbind(d, msub)
    }
}
t <- cbind(t, d)
names(t) <- c('fecha', nombre)



