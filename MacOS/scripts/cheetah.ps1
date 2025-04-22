# Este es un archivo powershell para instalar la maquina virtual
# es importante haber instalado QEMU y haber agregado la ruta
# C:\Program Files\qemu a la variable Path de usuario\

$carpeta = "C:\\VM\\MacOS-10-0"
mkdir $carpeta

$sourceISO = "https://archive.org/download/macos-x-cheetah/Cheetah.iso"
$destino = $carpeta + "\\MacOSCheetah.iso"

# Descargando el archivo
Invoke-WebRequest -Uri $sourceISO -OutFile $destino

# creando la el disco virtual
Set-Location $carpeta

qemu-img.exe create -f vmdk "${carpeta}\\Cheetah.vmdk" 10G

# corriendo la maquina
qemu-system-ppc.exe -L pc-bios -boot d -cdrom MacOSCheetah.iso -hda Cheetah.vmdk -m 1024

