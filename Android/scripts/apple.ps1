# Este es un archivo powershell para instalar la maquina virtual
# Descargará la imagen, extraerá el archivo y correrá el emulador.

$carpeta = "C:\\VM\\Android-1"
mkdir $carpeta

$source = "https://archive.org/download/android-sdk-1.0_r2/android-sdk-windows-1.0_r2.zip"
$destino = $carpeta + "\\android-sdk-1.0-r2.zip"

# Descargando el archivo
Invoke-WebRequest -Uri $source -OutFile $destino

# Extreyendo
Expand-Archive -Path $destino -DestinationPath $carpeta

# corriendo el emualdor

$emulador = $carpeta + "android-sdk-windows-1.0_r2\\tools\\emulator.exe"

Start-Process -FilePath $emulador