#!/bin/bash

aprobados=0
suspendidos=0

    while IFS= read -r linea; do
        nota=$(echo "$linea" | awk '{print $NF}')
            
            if [ "$nota" -ge 5 ]; then
                ((aprobados++))
            else
                ((suspendidos++))
            fi

    done < notas.txt

    echo "Estudiantes aprobados: $aprobados"
    echo "Estudiantes suspendidos: $suspendidos"

