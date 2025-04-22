#!/bin/bash

# se va a trabajar en un directorio ~/vm
# Obteniendo la imagen ISO de Archive.org
mkdir ~/vm
cd ~/vm

curl -L https://archive.org/download/macos-x-cheetah/Cheetah.iso -o MacOSCheetah.iso

qemu-img create -f vmdk ~/vm/Cheetah.vmdk 10G

# Corriendo la maquina virtual
qemu-system-ppc -L pc-bios -boot d -cdrom ~/vm/MacOSCheetah.iso \\
    -hda ~/vm/Cheetah.vmdk -m 1024