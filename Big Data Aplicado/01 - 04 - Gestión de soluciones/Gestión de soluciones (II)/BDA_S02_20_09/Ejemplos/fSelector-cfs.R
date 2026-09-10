library(rpart)
library(FSelector)

# se realiza la seleccion de atributos:  todos los atributos
# como disponibles para la clasificacion de la variable Species
subset <- cfs(class~.,datosFinales)
f_cfs <- as.simple.formula(subset,"Class")

# se muestra el resultado 
print(f_cfs)

