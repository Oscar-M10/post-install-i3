#!/bin/bash
#script for installations of i3
sudo pacman -Sy && sudo pacman -Syu
sudo pacman -S xorg i3 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings wget --noconfirm
sudo systemctl enable lightdm

#instalando aplicaciones de wifi
sudo pacman -S networkmanager linux-firmware dhcpcd dhclient network-manager-applet --noconfirm
#sudo systemctl enable dhcpcd@eth0
#sudo systemctl start dhcpcd@eth0
sudo systemctl enable NetworkManager --now

#una nueva actualizaciòn completa
#sudo pacman -Sy && sudo pacman -Syu 

#instalando configuraciòn de audio
sudo pacman -S pulseaudio pavucontrol 

#instalando ahorro bateria
sudo pacman -S tlp tlp-rdw base-devel --noconfirm
systemctl enable tlp.service
systemctl enable NetworkManager-dispatcher.service
systemctl mask systemd-rfkill.service systemd-rfkill.socket
pacman -S acpi_call

#instalacion de yay y snap
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
sudo rm -rf yay
#Enable snapd
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si --noconfirm
cd ..
sudo rm -rf snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

#kernel linux zen
#sudo -S linux-zen linux-zen-headers --noconfirm
#sudo nvim /etc/pacman.d/mirrorlist
#INSTALL REPOSITORIO 
sudo echo "Server = http://mirrors.acm.wpi.edu/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
sudo echo "Server = http://blackarch.pr0s3c.nl/blackarch" >> /etc/pacman.d/mirrorlist

#Instalación de java 8
sudo pacman -Suuy && sudo pacman -S java8-openjfx jdk8-openjdk jre8-openjdk jre8-openjdk-headless

#Install minecraft
sudo mv minecraft /usr/local/bin
sudo chmod +x /usr/local/bin/minecraft
wget https://dl2.tlauncher.org/f.php\?f\=files%2FTLauncher-2.86.zip
mkdir ~/.programas/minecraft
unzip 'f.php?f=files%2FTLauncher-2.86.zip'
mv TLauncher-2.86.jar minecraft.jar
mv minecraft.jar  ~/.programas/minecraft

#Instalación de programas importantes de i3 manipulación de archivos y menu´s
sudo pacman -S  zsh dmenu rofi moc neovim ranger nautilus alacritty firefox feh picom brightnessctl mpv dunst arandr lxappearance gnome-screenshot --noconfirm
sudo pacman -S python-pip python2 nodejs npm ruby rubygems unzip --noconfirm
pip install neovim dbus-python
gem install neovim
sudo npm i -g neovim
sudo pacman -S xsel fzf ripgrep fd the_silver_searcher prettier  wget jre8-openjdk-headless jdk-openjdk --nonconfirm

#look thema, iconos
sudo pacman -S xorg-fonts-misc ttf-font-awesome arc-gtk-theme arc-icon-theme numlockx papirus-icon-theme blueman neofetch --noconfirm
#https://fontawesome.com/cheatsheet
#Install oh-my-zsh via wget
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
#Extra adornos 
sudo pacman -S lsb bat 






