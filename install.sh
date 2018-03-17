#! /bin/sh

# Install the packages
sudo dpkg -i mdebian-base*.deb

# Install the dependencies
sudo apt -f install
