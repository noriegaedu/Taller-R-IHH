#### Anho hidrologico -----------------

# Agregar infomracion por anho hidrologico (Sep-Ago)
# OJO: periodo 1998-2001 --> 4 anhos: 48 meses
# OJO: para ah omitir 1:8 (Enero a Agosto primer anho) y 45:48 (Septiembre a Diciembre ultimo anho)

# DIFICIL
ah_dificil <- list()
for (i in 1:3) { # son 4 anhos hidrologicos
    l1  <- list.files('./datos/trmm_mes', 
                      pattern = as.character(eval(i + 1997)), 
                      full.names = T)
    l1 <- grep(paste0(as.character(eval(i + 1997)), 
                      c('09', '10', '11', '12'), 
                      collapse = '|'), 
               l1, 
               value = T)

    l2 <- list.files('./datos/trmm_mes', 
                     pattern = as.character(eval(i + 1998)), 
                     full.names = T)
    l2 <- grep(paste0(as.character(eval(i + 1998)), 
                      c('01', '02', '03', '04', '05', '06', '07', '08'), 
                      collapse = '|'), l2, 
               value = T)
    
    l <- c(l1, l2)
    l <- lapply(l, raster)
    l <- Reduce('+', l)
    ah_dificil[[i]] <- l
}
# se crea un solo raster con brick
ah_dificil <- brick(ah)

