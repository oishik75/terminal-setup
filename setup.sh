#!/bin/bash
# Install zsh
# Ubuntu
apt install -y zsh

touch ~/.zshrc

# Font installation
mkdir -p ~/.local/share/fonts

wget -O MesloFont.zip "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip"

unzip -o MesloFont.zip -d ~/.local/share/fonts/Meslo
rm MesloFont.zip

# Install git
apt update
apt install -y git

# Install eza
wget -c https://github.com/eza-community/eza/releases/latest/download/eza_x86_64-unknown-linux-gnu.tar.gz -O - | tar xz
chmod +x eza
chown root:root eza
mv eza /usr/local/bin/eza # Need sudo

# Install bat
apt install curl
apt install -y bat

# Install dracula theme (For Ubuntu Gnome terminal)
# Uncomment the following line for installing required packages for setting up the theme
# sudo apt-get install dconf-cli