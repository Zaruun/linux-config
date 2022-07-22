#!/bin/bash

echo "deb http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg

# Install Nala on any Debian Sid or Ubuntu 22+ with:
# sudo apt update && sudo apt install nala

# Install on Debian Stable or Ubuntu 21 and below:
sudo apt update && sudo apt install nala-legacy