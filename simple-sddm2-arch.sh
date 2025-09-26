#!/bin/bash

# Instalar dependências Qt6
sudo pacman -S --needed qt6-base qt6-declarative qt6-svg

# Clonar ou atualizar o tema
if [ -d ~/simple-sddm-2 ]; then
    cd ~/simple-sddm-2 && git pull
else
    git clone https://github.com/JaKooLit/simple-sddm-2.git ~/simple-sddm-2
fi

# Atualizar os arquivos do tema
sudo rsync -a --delete ~/simple-sddm-2/ /usr/share/sddm/themes/simple-sddm-2/

# Criar diretório de configuração se não existir
sudo mkdir -p /etc/sddm.conf.d/

# Configurar o tema
echo -e "[Theme]\nCurrent=simple-sddm-2" | sudo tee /etc/sddm.conf.d/theme.conf > /dev/null

echo "Tema simple-sddm-2 atualizado com sucesso! Faça logout/login para ver a mudança."
