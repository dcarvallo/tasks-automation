#!/bin/bash
echo "script para verificar los servicios web y conecciones funcionales"

servicios=('apache' 'nginx' 'docker' 'postgresql' 'mysql')

for servicio in ${servicios[@]}
  do
  if [[ `ps -acx | grep ${servicio} | wc -l` > 0 ]]; then
    echo "[+] Servicio de $servicio funcional"
  else
    echo "[-] $servicio no iniciado - revise" 
  fi
done
