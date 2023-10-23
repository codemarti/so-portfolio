import hashlib
import subprocess

while True:
    puntos = 0  # Inicializar el contador de puntos
    try:
        s = input("Jail Scape 🔒 | 🔑 | 🏃 » ")
    except KeyboardInterrupt:
        print("\n¡Adiós!")
        break

    if s.strip() == "ls":
        print("¿Quieres conseguir la llave? (si/no)")
        try:
          respuesta = input("Respuesta: ").strip().lower()
        except KeyboardInterrupt:
            print("\n¡Adiós!")
            break
        
        if respuesta == "si":
            try:
                # Pregunta 1
                print("1. ¿Cuál es el comando para situarnos en la ruta inicial?")
                respuesta = input("Respuesta: ").strip().lower()
                if respuesta == "cd":
                    print("Ganaste un punto.")
                    puntos += 1
                else:
                    print("No obtuviste un punto.")

                # Pregunta 2
                print("2. ¿Cómo podemos concatenar comandos?")
                respuesta = input("Respuesta: ").strip().lower()
                if respuesta == "&&":
                    print("Ganaste un punto.")
                    puntos += 1
                else:
                    print("No obtuviste un punto.")

                # Pregunta 3
                print("3. ¿Cuál es el comando para dar permisos?")
                respuesta = input("Respuesta: ").strip().lower()
                if respuesta == "chmod":
                    print("Ganaste un punto.")
                    puntos += 1
                else:
                    print("No obtuviste un punto.")

                # Pregunta 4
                print("4. ¿Cuál es el comando para saber rápidamente en qué usuario nos encontramos?")
                respuesta = input("Respuesta: ").strip().lower()
                if respuesta == "whoami":
                    print("Ganaste un punto.")
                    puntos += 1
                else:
                    print("No obtuviste un punto.")

                # Pregunta 5
                print("5. ¿Cuál es el comando para chequear la diferencia entre dos archivos que se pasen como argumentos?")
                respuesta = input("Respuesta: ").strip().lower()
                if respuesta == "diff":
                    print("Ganaste un punto.")
                    puntos += 1
                else:
                    print("No obtuviste un punto.")
            except KeyboardInterrupt:
                print("\n¡Adiós!")
                break
        elif respuesta == "no":
            print("Entendido, puedes probar otros comandos.")
        else:
            print("Respuesta no válida. Por favor, responde 'si' o 'no'.")
        # output = run_cmd(s)
        # print(output)
    elif s.strip() == "d3598d9fa1f79559db82ef3ecf536f28ef7264f5492953cd883f94a46b7a3989":
        print("¡Jail Completado! 🏃 🚓")
        break
    else:
        print("¡ERROR! Intenta Lo que Sabes...")

    print("Total de puntos ganados: (" + str(puntos) + "/5)\nSigue intentando...")

    if puntos == 5:  # Verifica si el usuario ha conseguido los 5 puntos
      print("(5/5) Has ganadoel Jail")
      
      # Genera y muestra la llave encriptada (por ejemplo, usando SHA-256)
      llave = "llave"
      llave_encriptada = hashlib.sha256(llave.encode()).hexdigest()
      print("Tu llave 🔑:", llave_encriptada)
