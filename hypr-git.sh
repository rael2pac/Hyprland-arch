#!/bin/bash
# Hyprland e pacotes pós-instalação

# Diretório base do script
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Diretório de trabalho para o yay-bin
WORKDIR="$HOME/yay-bin"

# Garantir que está no diretório HOME
cd "$HOME" || exit 1

# Função de pausa
pause() {
    sleep 5
}

# Função de tentativa de instalação com retry
retry_install() {
    package=$1
    for i in {1..3}; do
        if yay -S --noconfirm --needed "$package"; then
            echo "$package instalado com sucesso."
            break
        else
            echo "Erro ao instalar $package. Tentativa $i de 3..."
            pause
        fi
    done
}

# Clonar o repositório AUR se não existir
if [ ! -d "$WORKDIR" ]; then
    echo "Clonando o repositório yay-bin..."
    git clone https://aur.archlinux.org/yay-bin.git "$WORKDIR"
else
    echo "O repositório yay-bin já existe. Pulando clonagem."
fi

# Mudar para o diretório do repositório
cd "$WORKDIR" || exit 1

# Construir e instalar o pacote
echo "Executando makepkg -si..."
pause
makepkg -si --noconfirm

echo "Instalação do yay concluída!"

echo "Iniciando a instalação do Hyprland e pacotes - By Rael"
pause

packages=(
    hyprland dolphin dolphin-plugins kde-cli-tools kio unrar unrar-free unzip pacman-contrib kate oh-my-posh-bin cmake cmake-extras fish bc fastfetch inxi wget
    code gnome-calculator papers loupe orchis-theme btop gnome-disk-utility gnome-text-editor gnome-calendar ark ksnip kitty firefox vlc vlc-plugins-all mpv
    waybar rofi waypaper-git wofi xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-desktop-portal-wlr bash-completion vlc-plugin-ffmpeg 
    archlinux-xdg-menu xdg-user-dirs xdg-user-dirs-gtk sddm nwg-displays nwg-look wl-clipboard xorg polkit-gnome swww swaync swayidle wtype wiremix
    network-manager-applet adw-gtk-theme alsa-utils pavucontrol ttf-ms-fonts grimblast-git swaylock-effects ffmpeg ffmpegthumbs
    ffmpegthumbnailer breeze breeze5 breeze-icons breeze-gtk qt5ct-kde qt6ct-kde wlogout satty cpio pamixer vulkan-tools imagemagick
    bluez bluez-hid2hci bluez-tools bluez-utils bluez-deprecated-tools blueman
)

# Instalar pacotes com retry
for pkg in "${packages[@]}"; do
    retry_install "$pkg"
done

echo "Instalando pacotes de fontes"
pause
yay -S --noconfirm ttf-font-awesome otf-font-awesome noto-fonts noto-fonts-emoji noto-fonts-extra ttf-firacode-nerd ttf-jetbrains-mono-nerd adobe-source-code-pro-fonts ttf-fantasque-nerd ttf-victor-mono ttf-droid

echo "Instalando filesystem"
pause
fs_packages=(
    ntfs-3g exfatprogs dosfstools btrfs-progs xfsprogs jfsutils f2fs-tools udftools e2fsprogs gvfs
)

# Instalar pacotes de sistemas de arquivos com retry
for pkg in "${fs_packages[@]}"; do
    sudo pacman -S --noconfirm --needed "$pkg"
done

echo "Instalando wine e outros complementos"
pause
sudo pacman -S --noconfirm --needed wine  wine-gecko linux-lts-headers linux-zen-headers

echo "Deixando o Dolphin como gerenciador padrão"
pause
xdg-mime default org.kde.dolphin.desktop inode/directory

echo "Habilitando o serviço bluetooth no systemd"
pause
sudo systemctl enable bluetooth.service

echo "Habilitando o SDDM no systemd"
pause
sudo systemctl enable sddm.service

# Instalando tema SDDM 

if [ -f "$SCRIPT_DIR/simple-sddm2-arch.sh" ]; then
    echo "Executando simple-sddm2-arch.sh para baixar Wallpapers.zip..."
    bash "$SCRIPT_DIR/simple-sddm2-arch.sh"
else
    echo "simple-sddm2-arch.sh não encontrado em $SCRIPT_DIR"
fi

# Download Wallpapers.zip
    
    if [ -f "$SCRIPT_DIR/wallpaper-arch.sh" ]; then
        echo "Executando wallpaper-arch.sh para baixar Wallpapers.zip..."
        # Executa o script de download
        bash "$SCRIPT_DIR/wallpaper-arch.sh"
    else
        echo "wallpaper-arch.sh não encontrado em $SCRIPT_DIR. Pulando download."
    fi

#Verificando e extraindo Wallpapers.zip...
if [ -f "$SCRIPT_DIR/Wallpapers.zip" ]; then
    unzip -o "$SCRIPT_DIR/Wallpapers.zip" -d "$HOME/Imagens"
    echo "Arquivo Wallpapers.zip extraído para ~/Imagens com sucesso."
else
    echo "Wallpapers.zip não encontrado."
fi

# Verificando e extraindo config.zip
echo "Verificando e extraindo config.zip para ~/.config..."
pause
if [ -f "$SCRIPT_DIR/config.zip" ]; then
    unzip -o "$SCRIPT_DIR/config.zip" -d "$HOME/.config"
    echo "Arquivo config.zip extraído para ~/.config com sucesso."
else
    echo "config.zip não encontrado no diretório do script ($SCRIPT_DIR)."
fi

# ADICIONANDO OS COMANDOS PARA CRIAR/ATUALIZAR PASTAS DE USUÁRIO
echo "Criando/Atualizando diretórios de usuário com xdg-user-dirs"
pause
# Cria diretórios como Documentos, Downloads, etc., caso não existam
xdg-user-dirs-update
# Garante que os diretórios criados sejam reconhecidos pela interface gráfica (Gtk)
xdg-user-dirs-gtk-update

echo "Hyprland e pacotes instalados com sucesso."
pause

echo "Pressione Enter para reiniciar, ou CTRL+C para cancelar."
read -p ""

sudo reboot
