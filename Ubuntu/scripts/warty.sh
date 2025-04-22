#!/bin/bash

mkdir ~/vm
cd ~/vm

# descargando imagen
curl -L https://old-releases.ubuntu.com/releases/4.10/warty-release-install-i386.iso \\
-o ./Ubuntu4.10x86.iso

echo 'Creando disco virtual'

qemu-img create -f vhdx ./warty.vhdx 10G

echo 'Corriendo la maquina virtual...'
qemu-system-x86_64 -L pc-bios -boot d -cdrom ./Ubuntu4.10x86.iso \\
    -hda warty.vhdx -m 1024