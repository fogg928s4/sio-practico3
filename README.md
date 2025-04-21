# Practico 3 de laboratorio SIO104L

En este exámen práctico de virtualización se pretendía virtualizar 3 sistemas operativos viejos:
- MacOS X 10.0 (Cheetah)
- Windows 1.0
- Ubuntu 4.1
- Android 1.0

Para cada uno de estos se provee un script para su ejecución, o en su defecto, instrucciones para la virtualización del sistema operativo. La mayoría se realizan dentro del directorio __``~/vm``__ en hosts basados en Linux/GNU o en __``C:\VM``__ para hosts basados en Windows.

## Parte 1. MacOS X 10.0
La virtualización de este SO se hace con el uso de __QEMU__. Este puede ser usado al instalarse en Windows <a href='https://www.qemu.org/download/#windows'>a través de la página oficial</a> o en el caso de Linux, con el administrador de paquetes de preferencia.

- Para distribuciones basadas en Debian o Ubuntu
`` 
    sudo apt update && sudo apt install qemu-system -y 
``
- Para distribuciones basadas en Arch
``
    sudo System -S qemu
``
- Para distribuciones basadas en SUSE
``
zypper install qemu
``

En general se requiere la creación de un disco virtual al igual que otras máquinas virtuales junto con una <a href='https://dn721601.ca.archive.org/0/items/macos-x-cheetah/Cheetah.iso'> imagen ISO</a>.




