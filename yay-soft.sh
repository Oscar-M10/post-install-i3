#!/bin/bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
sudo rm -rf
yay -S polybar
yay -S siji-git 
yay -S ttf-unifont
sudo chown oscar:oscar .config/polybar/config

