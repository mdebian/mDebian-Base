#! /bin/sh

# Install the package
sudo dpkg -i mdebian-base*.deb

# Install the dependencies
sudo apt -f install
