#!/bin/bash
set -e

SCRIPT_DIR=$(dirname "$(realpath "$0")")

install_simple_sddm_theme() {
  echo "=> Instalando dependências para o tema simple-sddm-2..."
  sudo pacman -S --noconfirm --needed sddm qt6-svg qt6-virtualkeyboard qt6-multimedia git

  echo "=> Clonando o repositório simple-sddm-2..."
  tmpdir=$(mktemp -d)
  git clone --depth=1 https://github.com/JaKooLit/simple-sddm-2.git "$tmpdir/simple-sddm-2"

  echo "=> Instalando o tema em /usr/share/sddm/themes/simple_sddm_2..."
  sudo rm -rf /usr/share/sddm/themes/simple_sddm_2
  sudo mv "$tmpdir/simple-sddm-2" /usr/share/sddm/themes/simple_sddm_2
  sudo chown -R root:root /usr/share/sddm/themes/simple_sddm_2

  echo "=> Criando configuração para usar o tema..."
  sudo mkdir -p /etc/sddm.conf.d
  sudo tee /etc/sddm.conf.d/simple_sddm_2.conf > /dev/null <<EOF
[Theme]
Current=simple_sddm_2

[General]
InputMethod=qtvirtualkeyboard
EOF

  echo "=> Tema simple-sddm-2 instalado e configurado com sucesso."

  rm -rf "$tmpdir"
}

# ... (o resto do seu script de instalação)

# Invoque a função no final, se desejar
install_simple_sddm_theme

# ... continuar com reboot ou outras etapas
