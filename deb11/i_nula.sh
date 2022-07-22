#!/bin/bash

# Update
sudo apt-get update -y
sudo apt-get upgrade -y

# Install tools
sudo nala install -y tmux htop neofetch apt-transport-https curl

# xorg display server installation
sudo nala install -y xorg 

# Python installed for bumblebee-status. PACKAGE INCLUDES build-essential.
sudo nala install -y python3-pip 

# Network Manager
sudo nala install -y network-manager-gnome

# Installation for Appearance management
sudo nala install -y lxappearance 

# Install File Manager mc, ranger
sudp nala install -y mc ranger

# Network File Tools/System Events
sudo nala install -y dialog mtools dosfstool avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo nala install -y kitty

# Sound packages
sudo nala install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Printing and bluetooth (if needed)
sudo nala install -y cups
sudo nala install -y bluez blueman

sudo systemctl enable bluetooth
sudo systemctl enable cups

# Browser Installation (eg. chromium)
sudo nala install -y firefox-esr 

# Browser Brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo nala update

sudo nala install -y brave-browser

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# example if you want to use in autostart.sh for i3-gaps
# sudo nala install -y nitrogen 
sudo nala install -y feh

# Install i3
sudo nala install -y i3

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Install Ly Console Display Manager
cd 
cd Downloads
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly/
make
sudo make install
sudo systemctl enable ly

# Install Display Manager Lightdm 
# sudo nala install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
# sudo systemctl enable lightdm

