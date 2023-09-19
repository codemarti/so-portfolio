# SISTEMAS OPERATIVOS - PORTFOLIO
  
## Martín Martínez Arias - 27AV

#### Tarea #998
>`✅ Instalar Virtualbox y alguna distribucion de Linux, entregar para el 12/09/23, tomar screenshot del sistema ya instalado y subir la captura a su repositorio de tareas como evidencia.
>`
>
> ![Captura de la distribución ya instalada en VBox.](./files/998.distribucion-instalada.png "Captura de la distribución ya instalada en VBox.")
>
> ----

#### Tarea #997
>`✅ Hacer el https://vim-adventures.com los niveles gratuitos, sacar un screenshot del ultimo nivel y subirlo a su repositorio de tareas para el 12/09/23 antes de clase.
>`
>
> ![Captura del nivel final de VIM Adventures.](./files/997.vima-nivel-final.png "Captura del nivel final de VIM Adventures.")
>
> ----

#### Tarea #996
>`✅ Hacer un menú en bash que permita elegir la ejecución entre el script para crear un árbol de directorios, el script de hola mundo y el script de saludo usando variables y por último la opción de salir.
>`
>
> <a href="https://asciinema.org/a/608822" target="_blank"><img src="https://asciinema.org/a/608822.svg" /></a>
>
> **👇`Código`**
> ``` BASH
> #!/bin/bash
>
> VAR=""
> NAME=""
> 
> # Variable para realizar un seguimiento del estado de la creación de directorios
> DIR_CREATED=false
>
> # Verificar si los directorios ya se han creado
> if [ -d "contenedor-directorios/uno" ] && [ -d "contenedor-directorios/dos" ] && [ -d "contenedor-directorios/tres/cuatro/cinco" ] && [ -d "contenedor-directorios/seis" ]; then
>    DIR_CREATED=true
> fi
>
> while true
> do
>     echo -e "\nBienvenido al menu (seleccione una opción)\n"
>     echo -e "\033[40m\033[31m1. Crear un árbol de directorios\033[0m"
>     echo -e "\033[40m\033[31m2. Mostrar "Hola mundo!"\033[0m"
>     echo -e "\033[40m\033[31m2. Mostrar tu nombre\033[0m"
>     echo -e "\033[40m\033[32mx. Salir\033[0m\n"
> 
>     echo -ne "\033[40m\033[1;33mIngrese la opción:"
>     read VAR
> 
>     case $VAR in
>         1)
>             clear
>             # Verificar si los directorios ya se han creado
>             if [ "$DIR_CREATED" = true ]; then
>               echo "Los directorios ya se han creado previamente."
>             else
>               mkdir -p contenedor-directorios/uno
>               mkdir -p contenedor-directorios/dos
>               mkdir -p contenedor-directorios/tres/cuatro/cinco
>               mkdir -p contenedor-directorios/seis
>               touch contenedor-directorios/uno/test.txt
>               touch contenedor-directorios/tres/file3.txt
>               touch contenedor-directorios/seis/holamundo.sh
>               echo "Directorios creados con éxito."
>             fi
>         ;;
>         2)
>             clear
>             bash /home/Reader/menu-prueba/contenedor-directorios/seis/holamundo.sh      
>         ;;
>         3)
>             clear
>             echo "Ingrese su nombre: "
>             read NAME
>             echo "Hola $NAME, bienvenido al curso de Linux"
>         ;;
>         x)
>             clear
>             echo "Saliendo..."
>             break
>         ;;
>         *)
>             clear
>             echo "Opción incorrecta"
>             break
>         ;;
>     esac
> done
> ```
>
> ----

#### Tarea #995
>`✅ Crear un gif que explique algún concepto, relacionado al curso, que hayas aprendido.
>`
>![GIF temas aprendidos del curso.](./files/996.QUE-ES-BASH.gif "GIF temas aprendidos del curso.")
>
> ----

#### Tarea #994
>`✅ Realizar los 18 bash scripts que vienen en el PDF shell_linux.pdf, subirlos a su repositorio.
>`
>
> ➡️ [Carpeta contenedora de los scripts.](./menu/contenedor-directorios/ "Carpeta contenedora de los scripts.") ⬅️
>
> ----
