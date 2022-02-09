#!/bin/bash

echo "script de revision de vulnerabilidades con nmap"

echo "ingrese IP o hostname"
read ip

ping -c 2 $ip

if [ $? != 0 ]; then
 echo "No existe conexion a la IP: $ip"
else
  echo "puertos abiertos"  
  nmap -p- --min-rate 5000 --open -n -vvv -Pn $ip

  echo "escanear vulnerabilidades"
  nmap -sV --script vuln $ip

fi
