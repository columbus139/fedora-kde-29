#!/bin/bash

sudo dnf upgrade && sudo dnf update

sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo rpm --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg 
sudo dnf config-manager --add-repo https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/rpms/
sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
sudo dnf install -y vscodium
sudo dnf install -y vlc
sudo dnf install -y telegram-desktop
sudo dnf install -y terminator
sudo dnf install -y emacs
sudo dnf install -y clamtk
sudo dnf install -y spotify-client
sudo dnf install -y deluge
sudo dnf install -y hexchat
sudo dnf install -y thunderbird
sudo dnf install -y clementine
sudo dnf install -y libreoffice
sudo dnf remove -y dragon
sudo dnf remove -y kontact
sudo dnf remove -y kolourpaint
sudo dnf remove -y kget
sudo dnf remove -y falkon
sudo dnf remove -y konqueror
sudo dnf remove -y kmail
sudo dnf remove -y krdc
sudo dnf remove -y krfb
sudo dnf remove -y ktorrent
sudo dnf remove -y konversation
sudo dnf remove -y juk
sudo dnf remove -y calligra-*
sudo dnf remove -y kaddressbook*
sudo dnf remove -y korganizer
sudo dnf remove -y plasma-discover-*
sudo dnf remove -y kwrite

#!/usr/bin/env bash
cd ~/
mkdir -p ~/.local/bin
wget "https://discordapp.com/api/download/canary?platform=linux&format=tar.gz" -O discord.tar.gz
tar -xvf discord.tar.gz -C ~/.local/bin
sudo ln -s ~/.local/bin/DiscordCanary/discord.png /usr/share/icons/discord.png
sudo ln -s ~/.local/bin/DiscordCanary/DiscordCanary /usr/bin
wget https://gist.githubusercontent.com/AdrianKoshka/a12ca0bfe2f334a9f208aff72f8738c3/raw/9d606ad7ce7cc1dd23f6a99993e2396540538a02/discord.desktop -O discord.desktop
mkdir -p ~/.local/share/applications/
mv ~/discord.desktop ~/.local/share/applications/
sudo ln -s ~/.local/share/applications/discord.desktop /usr/share/applications/discord.desktop

#!/bin/bash

sudo freshclam

#!/bin/bash

reboot