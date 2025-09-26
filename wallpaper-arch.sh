#!/bin/bash

# Diretório do script
SCRIPT_DIR=$(dirname "$(realpath "$0")")
cd "$SCRIPT_DIR" || exit

# Nome do arquivo final
ARQUIVO="Wallpapers.zip"

# ID do arquivo no Google Drive
FILE_ID="15bu4smOM8frSS3gEnAft5XgZWs0Z18-s"

# Verifica se o arquivo já existe
if [ -f "$ARQUIVO" ]; then
    echo "Wallpapers.zip já existe. Pulando download..."
    exit 0
fi

echo "Verificando se gdown está instalado..."
if ! command -v gdown &> /dev/null; then
    echo "pip não encontrado. Instalando python3-pip..."
    yay -S gdown --noconfirm
fi

echo "Baixando Wallpapers.zip (~700MB) do Google Drive..."
gdown "https://drive.google.com/uc?id=${FILE_ID}" -O "$ARQUIVO"


echo "Download concluído! Arquivo salvo em $SCRIPT_DIR/$ARQUIVO"
