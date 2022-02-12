#!/bin/bash
echo "script para verificar los servicios web y conexiones funcionales"

servicios=('apache' 'nginx' 'docker' 'postgresql' 'mysqld')

for servicio in ${servicios[@]}
  do
  if [[ `ps -acx | grep ${servicio} | wc -l` > 0 ]]; then
    echo "[+] Servicio $servicio funcional"
  else
    echo "[-] $servicio no iniciado " 
  fi
done
