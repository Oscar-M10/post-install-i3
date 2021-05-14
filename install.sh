#!/bin/bash
#script for installations of i3
sudo pacman -Sy && sudo pacman -Syu
sudo pacman -S xorg i3 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm
sudo systemctl enable lightdm
#instalando aplicaciones de wifi
sudo pacman -S networkmanager linux-firmware dhcpcd dhclient network-manager-applet --noconfirm
sudo systemctl enable dhcpcd@eth0
sudo systemctl start dhcpcd@eth0
sudo systemctl enable NetworkManager --now
#una nueva actualizaciòn completa
sudo pacman -Sy && sudo pacman -Syu 
#instalando configuraciòn de audio
sudo pacman -S pulseaudio pavucontrol tlp --noconfirm
#instalacion de yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
sudo rm -rf ~/.config/i3
sudo chown oscar:oscar .config/polybar/config
#Enable snapd
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si --noconfirm
cd ..
sudo rm -rf snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

