#! /bin/bash

# Pop OS 22.04 LTS

# first, updating the system
sudo apt update && sudo apt full-upgrade -y

# packages
sudo apt install -y xclip
sudo apt install -y vim
sudo apt install -y nodejs
sudo apt install -y zsh
sudo apt install -y tree
sudo apt install -y p7zip

# apps
sudo apt install -y vlc
sudo apt install -y steam

# flatpaks
# sudo apt install flatpak
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.libretro.RetroArch
flatpak install -y flathub com.dropbox.Client

# deemix
sudo apt install python3-pip
python3 -m pip install deemix
# python3 -m deemix https://www.deezer.com/fr/album/320559147


# zsh
chsh -s /usr/bin/zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# nanotech theme
sed -i 's/robbyrussell/nanotech/' ~/.zshrc
