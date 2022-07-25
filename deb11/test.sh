#!/bin/bash

# Update
sudo apt-get update -y
sudo apt-get upgrade -y
# sudo apt install i3 xorg lightdm slick-greeter lightdm-settings lxappearance nitrogen pcmanfm chromium pulseaudio alsa-utils pavucontrol terminator -y 
sudo apt install i3 xorg lxappearance nitrogen pcmanfm chromium pulseaudio alsa-utils pavucontrol terminator -y 
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