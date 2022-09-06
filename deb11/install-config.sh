#!/bin/bash

# Check and install system updates
sudo apt update -y
sudo apt upgrade -y

# Important tools
sudo apt install -y python3-pip tmux htop curl git apt-transport-https

# i3 
sudo apt install -y xorg i3 lightdm 
sudo systemctl enable lightdm 

# Terminal
sudo apt install -y kitty

# Neofetch
sudo apt install -y neofetch

# Network Manager
# Change in /etc/NetworkManager/NetworkManager.conf ifupdown to true
sudo apt install -y network-manager-gnome
sudo sed -i 's/managed=false/managed=true/' /etc/NetworkManager/NetworkManager.conf

# File Manager
sudo apt install -y mc ranger
