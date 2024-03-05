#!/bin/bash

nombre=$1
modulo=$2

calificacion=$(awk -v nombre="$nombre" -v modulo="$modulo" '$1 == nombre && $2 == modulo {print $3}' notas.txt)

  if ((calificacion >= 9)); then
    echo "Sobresaliente"
  elif ((calificacion >= 5)); then
    echo "Aprobado"
  else
    echo "Suspendido"
  fi
