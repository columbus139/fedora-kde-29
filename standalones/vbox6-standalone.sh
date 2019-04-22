#!/bin/bash

sudo dnf update
sudo wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo -P /etc/yum.repos.d/
sudo dnf install @development-tools
sudo dnf install kernel-devel kernel-headers dkms qt5-qtx11extras elfutils-libelf-devel zlib-devel
sudo dnf install VirtualBox-6.0
sudo usermod -a -G vboxusers $USER