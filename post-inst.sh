#!/bin/bash
#software basico de post instalaciòn
sudo pacman -Syu
#
sudo pacman -S git dmenu rofi moc neovim ranger nautilus alacritty firefox feh picom brightnessctl mpv dunst arandr lxappearance
#configuracion de picon 
#sudo vim /etc/xdg/picom.conf 
#inactive-opacity = 1
sudo pacman -Syu
sudo pacman -S python-pip python2 nodejs npm ruby rubygems --noconfirm
pip install neovim dbus-python
gem install neovim
sudo npm i -g neovim
npm i -g yarn
sudo pacman -Sy
sudo pacman -S xsel fzf ripgrep fd the_silver_searcher prettier --nonconfirm
sudo pacman -S xorg-fonts-misc ttf-font-awesome
#https://fontawesome.com/cheatsheet
#sudo chown usuario:usuario .config/polybar/config

