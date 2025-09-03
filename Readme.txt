crear la carpeta donde se montarán las imagenes:

$folderPath = "$env:APPDATA\pgbuilder"
if (Test-Path -Path $folderPath -PathType Container) {
    Remove-Item -LiteralPath $folderPath -Recurse -Force
}

New-Item -Path $folderPath -ItemType Directory -Force | Out-Null

construir la imagen en base al dockerfile:

docker build -t ubuntu-mingw .

lanzar la consola para compilar con el mount: 

docker run --rm -it `-v "${env:APPDATA}//pgbuilder:/pgbuilder" ` ubuntu-mingw bash
