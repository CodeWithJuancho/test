library(FSelector)
library(mlbench)

# se calculan los pesos de los atributos: la medida devuelta
# indica el nivel de dependencia de cada atributo frente a la
# variable clase
weights <- chi.squared(class~.,datosFinales)
print(weights)

# se seleccionan los 5 mejores
subset <- cutoff.k(weights,5)

# se muestran los seleccionados
f_chi <- as.simple.formula(subset,"Class")
print(f_chi)