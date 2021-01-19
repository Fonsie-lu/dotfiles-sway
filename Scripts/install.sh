#!/bin/sh

#Install yay
sudo pacman -S base-devel git go
cd ~/Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
rm -r -f ~/Downloads/yay
cd ~/Downloads

#Install Packages
sudo pacman -S feh code wget qt5ct ctags wayland xorg-xwayland wofi pipewire gtk4 python-pip zsh gtk3 pavucontrol vlc nemo python-pynvim nodejs yarn npm xsel w3m openssh alacritty python-requests xdg-desktop-portal-wlr bluez blueberry pulseaudio-bluetooth neovim python-pip kvantum-qt5 ttf-ubuntu-font-family pacman-contrib archlinux-contrib ttf-opensans neofetch
yay -S neovim-plug zsh-syntax-highlighting zsh-theme-powerlevel10k-git vim-devicons youtube-dl perl kvantum-theme-nordic-git checkupdates-aur fzf nordic-theme-git papirus-folders-nordic nerd-fonts-jetbrains-mono ksnip wlogout wdisplays google-chrome-dev light

#Setup Environement
sudo cp ~/Downloads/doflies-sway/Scripts/backlight.rules /etc/udev/rules.d/
sudo npm install -g eslint nodemon core-js neovim
pip install neovim-remote

#Create Directory
mkdir ~/.config
mkdir ~/Pictures

#Copy configs
cp -f -r ~/Downloads/dotflies-sway/.p10k.zsh ~/
cp -f -r ~/Downloads/dotfiles-sway/.zshrc ~/
cp -f -r ~/Downloads/dotfiles-sway/.config/* ~/.config/
cp -f -r ~/Downloads/dotfiles-sway/Pictures/* ~/Pictures/
sudo cp -r /usr/share/zsh-theme-powerlevel10k/* /usr/share/oh-my-zsh/themes/

#Autologin
sudo systemctl enable getty@tty1
echo "For autologin change file to the following replacing username with yours"
echo "[Service]"
echo "ExecStart="
echo "ExecStart=-/usr/bin/agetty --autologin username --noclear %I $TERM"
exec alacritty -e sudo nvim /etc/systemd/system/getty@tty1.service.d/override.conf

#Run Stuff
sudo sensors-detect
nvim -c PlugInstall 
nvim -c UpdateRemotePlugins
clear

echo "Ye Dun, Brah"
