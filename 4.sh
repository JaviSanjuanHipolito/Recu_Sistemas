#!/bin/bash

nombre=$1

aprobado=$(awk -v nombre="$nombre" '$1 == nombre && $2 == modulo {print $3}' notas.txt)

if ((aprobado >= 5)); then
    echo "Aprobado"
  else
    echo "Suspendido"
  fi