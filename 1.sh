#!/bin/bash

numero=$1

if [ $numero -ge 9 ]; then
  echo "Sobresaliente"
elif [ $numero -ge 5 ]; then
  echo "Aprobado"
else
  echo "Suspendido"
fi



