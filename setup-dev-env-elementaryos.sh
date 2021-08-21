#!/bin/bash

./setup-dev-env-ubuntu.sh
# must be kept separately because otherwise installation of previous packages (in install-software.sh) fails. Reason is that the following packages are not available on vanilla ubuntu installations
sudo apt -y install mysql-workbench shutter dconf-tools libqt4-dev woeusb
sleep 3
sudo apt install -y meson valac nemiver
sleep 3
./install-dist-specific-elementaryos.sh
sudo apt-add-repository ppa:versable/elementary-update
sudo apt-get install linux-generic-hwe-20.04
