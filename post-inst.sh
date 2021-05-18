#!/bin/bash
#software basico de post instalaciòn
sudo pacman -Syu 
#software importante
sudo pacman -S  dmenu rofi moc neovim ranger nautilus alacritty firefox feh picom brightnessctl mpv dunst arandr lxappearance gnome-screenshot --noconfirm
sudo tlp start 
#config github
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
mv i3blocks ~/.config
#configuracion de picon 
#sudo vim /etc/xdg/picom.conf 
#inactive-opacity = 1
sudo pacman -Syu --noconfirm
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
#
yay -S polybar siji-git ttf-unifont
sudo chown oscar:oscar .config/polybar/config
#install spotify
sudo snap install spotify
#Minecraft
mkdir ~/.programas 
#añadir minicraft.jar en esa carpeta
sudo mv minecraft  /usr/local/bin
chmod +x  /usr/local/bin/minecraft


