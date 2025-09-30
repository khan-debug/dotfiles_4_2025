#! bin/bash

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf update @core -y

sudo dnf install rpmfusion-\*-appstream-data -y

sudo dnf group install multimedia -y

sudo ln -s ~/dotfiles_4_2025/dnf.conf /etc/dnf/dnf.conf  

sudo dnf update -y
