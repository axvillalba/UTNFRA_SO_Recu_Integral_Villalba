#!/bin/bash
clear

LOG_FILE="/var/log/status_url.log"

ANT_IFS=$IFS
IFS=$'\n'


 # Ruta al archivo de URLs proporcionado como argumento
URL_FILE="$1"

 # Comprobar si se ha proporcionado un archivo como argumento
 if [ "$#" -ne 1 ]; then
     echo "Uso: $0 /UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt"
     exit 1
 fi

 # Comprobar si el archivo existe
 if [ ! -f "$URL_FILE" ]; then
    echo "El archivo $URL_FILE no existe."
    exit 1
 fi


# Crear la estructura de directorios
sudo mkdir -p /tmp/head-check/ok
sudo mkdir -p /tmp/head-check/Error/cliente
sudo mkdir -p /tmp/head-check/Error/servidor

#---- Dentro del bucle ----#
  #
 # Leer el archivo de URLs y procesar cada línea
  while IFS=';' read -r DOMAIN URL; do
    # Ignorar líneas que comiencen con '#' o que estén vacías
    if [[ "$DOMAIN" =~ ^# || -z "$URL" ]]; then
        continue
    fi

   # Obtener el código de estado HTTP
    STATUS_CODE=$(curl -LI -o /dev/null -w '%{http_code}\n' -s "$URL")

   # Fecha y hora actual en formato yyyymmdd_hhmmss
   TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

   # Registrar en el archivo /var/log/status_url.log
   echo "$TIMESTAMP - Code: $STATUS_CODE - URL: $URL" | sudo tee -a "$LOG_FILE"

   # Determinar el archivo de log y la carpeta en función del código de estado
   if [ "$STATUS_CODE" -eq 200 ]; then
       LOG_FILE_PATH="/tmp/head-check/ok/${DOMAIN}.log"
   elif [ "$STATUS_CODE" -ge 400 ] && [ "$STATUS_CODE" -lt 500 ]; then
       LOG_FILE_PATH="/tmp/head-check/Error/cliente/${DOMAIN}.log"
   elif [ "$STATUS_CODE" -ge 500 ] && [ "$STATUS_CODE" -lt 600 ]; then
       LOG_FILE_PATH="/tmp/head-check/Error/servidor/${DOMAIN}.log"
   else
  	   continue
   fi

   # Registrar en el archivo de log específico para el dominio
    echo "$TIMESTAMP - Code: $STATUS_CODE - URL: $URL" | sudo tee -a "$LOG_FILE_PATH"
done < "$URL_FILE"

# Restaurar el IFS original
IFS=$ANT_IFS

echo "Chequeo completado. Los resultados se han guardado en:"
echo "  - OK: /tmp/head-check/ok/"
echo "  - Error cliente: /tmp/head-check/Error/cliente/"
echo "  - Error servidor: /tmp/head-check/Error/servidor/"

#-------------------------#

IFS=$ANT_IFS
