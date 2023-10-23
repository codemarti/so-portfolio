## Estructura test
# Ejecutar operacion si no se cumple la condición
# test condición || operacion
# Ejecutar operación si se cumple
# test condición && operacion
# Este test crea un fichero si no existe.
test ­f './fichero.txt' || touch fichero.txt
