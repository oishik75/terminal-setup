#!/bin/zsh
# Install powerlevel10k
mkdir ~/terminal-setup
cd ~/terminal-setup
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git powerlevel10k
echo 'source ~/terminal-setup/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Install zsh-autocomplete
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git
echo 'source ~/terminal-setup/zsh-autocomplete/zsh-autocomplete.plugin.zsh' >>~/.zshrc

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo 'source ~/terminal-setup/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>~/.zshrc

# Install zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions
echo 'source ~/terminal-setup/zsh-autosuggestions/zsh-autosuggestions.zsh' >>~/.zshrc

# Aliases
echo 'source ~/terminal-setup/aliases.zsh' >>~/.zshrc

# # bat setup
echo 'alias bat="batcat"' >>~/.zshrc
mkdir -p ~/.config/bat/themes
curl -O https://raw.githubusercontent.com/folke/tokyonight.nvim/main/extras/sublime/tokyonight_night.tmTheme
mv tokyonight_night.tmTheme ~/.config/bat/themes
batcat cache --build
echo 'export BAT_THEME=tokyonight_night' >>~/.zshrc

# Dracula theme for Gnome terminal
# Uncomment the following lines for installing Dracula theme
# git clone https://github.com/dracula/gnome-terminal
# cd gnome-termina
# ./install.sh