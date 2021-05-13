#!/bin/bash
#software basico de post instalaciòn
sudo pacman -Syu
#
sudo pacman -S git dmenu rofi moc neovim ranger nautilus alacritty firefox feh picom brightnessctl mpv
sudo pacman -Syu
sudo pacman -S python-pip python2 nodejs npm ruby rubygems --noconfirm
pip install neovim dbus-python
gem install neovim
sudo npm i -g neovim
npm i -g yarn
sudo pacman -Sy
sudo pacman -S xsel fzf ripgrep fd the_silver_searcher prettier --nonconfirm
git clone https://aur.archlinux.org/yay.git 
cd yay && makepkg -si --noconfirm 
cd .. && sudo rm -rf 
sleep 2s
yay -S polybar
sudo pacman -S xorg-fonts-misc 
yay -S siji-git ttf-unifont
#sudo chown usuario:usuario .config/polybar/config

