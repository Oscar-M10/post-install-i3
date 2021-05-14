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
sudo pacman -S pulseaudio pavucontrol --noconfirm 
#github
git clone https://github.com/Oscar-M10/linux-i3.git && cd linux-i3
#mkdir ~/.config
sudo rm -rf ~/.config/i3
mv alacritty ~/.config
mv alsi ~/.config
mv nvim ~/.config
mv coc ~/.config
mv moc ~/.config 
mv polybar ~/.config
mv rofi ~/.config
mv pulse ~/.config
mv i3 ~/.config 
mv dconf ~/.config
mv i3blocks ~/.config 
mv rofi ~/.config
