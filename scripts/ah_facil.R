#### Anho hidrologico -----------------

# Agregar infomracion por anho hidrologico (Sep-Ago)
# OJO: periodo 1998-2001 --> 4 anhos: 48 meses
# OJO: para ah omitir 1:8 (Enero a Agosto primer anho) y 45:48 (Septiembre a Diciembre ultimo anho)

# FACIL
ej_brick_drop <- dropLayer(ej_brick, c(1:8, 45:48))
index <- rep(1999:2001, each = 12) # indices sobre los cuales se suman los valores
ah_ej_brick <- stackApply(ej_brick_drop, index, fun = sum) # suma para obtener anhos hidolrogicos acumulados
