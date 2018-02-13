#! /bin/sh

# Select the different configurations to install
SELECT=$(whiptail --title "mdebian-base" --checklist --separate-output \
"Choose custom configurations :" 20 78 8 \
"apt" "Configure apt" ON \
"banner" "Configure system banners" ON \
"bash" "Configure bash" ON \
"grub" "Add GRUB configuration scripts" ON \
"ipv6" "Enable IPv6 temporary addresses" ON \
"minicom" "Configure minicom" OFF \
"nano" "Configure nano" ON \
"ntp" "Configure ntp client" ON \
3>&1 1>&2 2>&3)

# No option selected or canceled
[ "$SELECT" ] || exit 1

# Define the package list
PKG=""
for I in $SELECT; do
	PKG=$PKG" mdebian-$I*.deb"
done

# Install the packages
sudo dpkg -i $PKG

# Install the dependencies
sudo apt -f install
