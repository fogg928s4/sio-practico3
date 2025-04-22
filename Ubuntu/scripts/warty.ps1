# Este es un archivo powershell para instalar la maquina virtual
# es importante haber instalado QEMU y haber agregado la ruta
# C:\Program Files\qemu a la variable Path de usuario\

$carpeta = "C:\\VM\\Ubuntu-4-10"
mkdir $carpeta

$sourceISO = "https://old-releases.ubuntu.com/releases/4.10/warty-release-install-i386.iso"
$destino = $carpeta + "\\Ubuntu4.10x86.iso"

# Descargando el archivo
Invoke-WebRequest -Uri $sourceISO -OutFile $destino

# creando la el disco virtual
Set-Location $carpeta

qemu-img.exe create -f vhdx "${carpeta}\\warty.vhdx" 10G

# corriendo la maquina
qemu-system-x86_64.exe -L pc-bios -boot d -cdrom Ubuntu4.10x86.iso -hda warty.vhdx -m 1024

