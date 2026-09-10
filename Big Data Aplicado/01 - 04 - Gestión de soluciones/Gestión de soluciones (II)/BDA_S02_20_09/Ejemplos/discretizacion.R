require(discretization)
require(mice)

# se usa el conjunto de datos de calidad del aire, en las
# mismas condiciones que vimos con anterioridad
datos <- datosFinales

# discretizacion mediante metodo CAIM
datosdiscretos_cm <- disc.Topdown(datos, method=1)

# se muestran los puntos de corte
#cat("Puntos de corte metodo CAIM: \n")
#print(cm$cutp)

# los datos discretizados se mostrarian de la
# forma siguiente
# cat("Datos discretizados: \n")
# print(cm$Disc.data)

# discretizacion mediante CACC
datosdiscretos_cmCacc <- disc.Topdown(datos, method=2)

# se muestran los puntos de corte
#cat("Puntos de corte metodo CACC: \n")
#print(cm$cutp)

# discretizacion mediante AMEVA
datosdiscretos_cmAmeva <- disc.Topdown(datos, method=3)

# se muestran los puntos de corte
#cat("Puntos de corte metodo AMEVA: \n")
#print(cm$cutp)

