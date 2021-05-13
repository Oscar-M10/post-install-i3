#!/bin/bash
#script for installations of i3
sudo pacman -Sy && sudo pacman -Syu
#instalando aplicaciones de wifi
sudo pacman -S networkmanager linux-firmware dhcpcd dhclient network-manager-applet
sudo systemctl enable dhcpcd@eth0
sudo systemctl start dhcpcd@eth0
sudo systemctl enable NetworkManager --now
#instalando servidor xorg, i3 y  sistema de login
sudo pacman -S xorg i3 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo systemctl enable lightdm 
#una nueva actualizaciòn completa
sudo pacman -Sy && sudo pacman -Syu 
#instalando configuraciòn de audio
sudo pacman -S pulseaudio pavucontrol 

