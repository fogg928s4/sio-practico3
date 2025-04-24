#!/bin/bash

# Script para la descarga y virtualizacion de Android usando 
# Linux

$carpeta='~/vm/Android-1'
mkdir $carpeta

# descargando
$source = "https://archive.org/download/android-sdk-1.0_r2/android-sdk-windows-1.0_r2.zip"
$destino = $carpeta + "/android-sdk-1.0-r2.zip"

curl -L $source -o $destino

# extrayendo
unzip $destino -d $carpeta

# corriendo
$emulador=$carpeta+'/android-sdk-windows-1.0_r2/tools' 

pushd $emulador

chmod +x emulador
./emulador

popd
