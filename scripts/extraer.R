### Extraer informacion -----------------

# Cargar coordenadas de estaciones
coord_todo <- read.xlsx("./datos/coord/coord_todas_est_desord.xlsx")
# nombres
nombres <- list.files('./datos/', pattern = 'xlsx')
nombres <- gsub('.xlsx', '', nombres)
# seleccionar estaciones de interes
coord_selec <- coord_todo[coord_todo$est %in% nombres, ]
# ordenar por orden alfabetico de estaciones
coord_selec <- coord_selec[order(coord_selec$est),]
# seleccionar las columnas importantes y ordenarlas
coord <- coord_selec[,c(3,2)]
rownames(coord) <- coord_selec[,1]

# extraer infomracion de raster ah
extraidos <- raster::extract(ah_ej_brick, coord)
extraidos <- data.frame(extraidos)
# nombrar informacion obtenida
rownames(extraidos) <- rownames(coord) 
