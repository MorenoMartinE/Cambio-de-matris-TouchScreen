#!/bin/sh

 
#   Reemplaza "SYNA7300:00 06CB:0106" con el nombre de tu dispositivo de entrada. Si no lo conoces,
# ejecuta dentro de tu terminal el comando 'xinput -list'. En caso de no funcionar de manera correcta
# la pantalla táctil de tu dispositivo deberás de utilizar el comando
# 'xinput list-props <id de tu dispositivo>', y en base a la matriz mostrada en la propiedad
# "Coordinate Transformation Matrix" hacer los cálculos pertinentes para rotar las coordenadas
# de esta de la manera deseada.
#   Guia de calculo para la modificacion de la matriz: https://wiki.ubuntu.com/X/InputCoordinateTransformation



xrandr -o normal
xinput set-prop "SYNA7300:00 06CB:0106" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1