#! /bin/sh

# Install the package
sudo dpkg -i mdebian-base*.deb

# Install the dependencies
sudo apt update
sudo apt -f install
