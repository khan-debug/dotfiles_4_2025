#! bin/bash

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf update @core -y

sudo dnf install rpmfusion-\*-appstream-data -y

sudo dnf group install multimedia -y

sudo dnf install dnfdragora -y

sudo dnf update -y
