#!/bin/bash

VAR=""
NAME=""

# Variable para realizar un seguimiento del estado de la creación de directorios
DIR_CREATED=false

# Verificar si los directorios ya se han creado
if [ -d "contenedor-directorios/uno" ] && [ -d "contenedor-directorios/dos" ] && [ -d "contenedor-directorios/tres/cuatro/cinco" ] && [ -d "contenedor-directorios/seis" ]; then
    DIR_CREATED=true
fi

while true
do
    echo -e "\033[40m\033[1;31m
      ▀████▄     ▄███▀              ▀███▀▀▀███               ▀███▄   ▀███▀                  ▄▄▄▄▄      ▄▄▄▄▄
        ████    ████                  ██    ▀█                 ███▄    █                   ██▀▀   ▄▄███████████▄▄
        █ ██   ▄█ ██                  ██   █                   █ ███   █                  ██▀                 ▀▀███
        █  ██  ██ ██                  ██████                   █  ▀██▄ █                 ███                     ███
        █  ██▄█▀  ██       █████      ██   █  ▄     █████      █   ▀██▄█       █████     ████                     ███
        █  ▀██▀   ██                  ██     ▄█                █     ███                  ████                    ███
      ▄███▄ ▀▀  ▄████▄              ▄██████████              ▄███▄    ██                   ██████     ▄▄▄▄▄▄     ███▀
                                                                                            ██████████▀▀▀    ▄▄██▀▀
    \033[0m"
    echo -e "1.\033[40m\033[32m Crear un árbol de directorios\033[0m"
    echo -e "2.\033[40m\033[32m Mostrar "Hola mundo!"\033[0m"
    echo -e "3.\033[40m\033[32m Mostrar tu nombre\033[0m"
    echo -e "4.\033[40m\033[32m Crear 18 SCRIPTS diferentes\033[0m"
    echo -e "\033[40m\033[32mx. Salir\033[0m\n"

    echo -ne "\033[40m\033[1;33mIngrese la opción:"
    read VAR
    echo -e "\033[40m\033[37m \033[0m"

    case $VAR in
        1)
            clear
            # Verificar si los directorios ya se han creado
            if [ "$DIR_CREATED" = true ]; then
              echo "Los directorios ya se han creado previamente."
            else
              mkdir -p contenedor-directorios/uno
              mkdir -p contenedor-directorios/dos
              mkdir -p contenedor-directorios/tres/cuatro/cinco
              mkdir -p contenedor-directorios/seis
              touch contenedor-directorios/uno/test.txt
              touch contenedor-directorios/tres/file3.txt
              touch contenedor-directorios/seis/holamundo.sh
              echo "Directorios creados con éxito."
            fi
        ;;
        2)
            clear
            bash /home/Reader/menu-prueba/contenedor-directorios/seis/holamundo.sh      
        ;;
        3)
            clear
            echo "Ingrese su nombre: "
            read NAME
            echo "Hola $NAME, bienvenido al curso de Linux"
        ;;
        4)
            clear
            touch contenedor-directorios/seis/holamundo-var.sh
            touch contenedor-directorios/seis/variables-ejemplo1.sh
            touch contenedor-directorios/seis/arrays-ejemplo.sh
            touch contenedor-directorios/seis/variables-ejemplo2.sh
            touch contenedor-directorios/seis/operaciones-aritmeticas.sh
            touch contenedor-directorios/seis/operaciones-logicas.sh
            touch contenedor-directorios/seis/condicionales.sh
            touch contenedor-directorios/seis/test-ejemplo.sh
            touch contenedor-directorios/seis/case-ejemplo.sh
            touch contenedor-directorios/seis/iteraciones.sh
            touch contenedor-directorios/seis/while-ejemplo.sh
            touch contenedor-directorios/seis/until-ejemplo.sh
            touch contenedor-directorios/seis/select-ejemplo.sh
            touch contenedor-directorios/seis/funciones-ejemplo.sh
            touch contenedor-directorios/seis/librerias-ejemplo.sh
            touch contenedor-directorios/seis/senales-ejemplo.sh
            touch contenedor-directorios/seis/colores-ejemplo.sh
        ;;
        5)
            clear
            bash contenedor-directorios/seis/until-ejemplo.sh
        ;;
        x)
            clear
            echo "Saliendo..."
            break
        ;;
        *)
            clear
            echo "Opción incorrecta"
            break
        ;;
    esac
done
