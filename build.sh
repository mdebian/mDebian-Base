#! /bin/sh

# Remove previous package
rm -fv mdebian-base*.deb

# Build the package
fakeroot dpkg-deb --build mdebian-base

# Get the version number of the package
VERSION=$(cat mdebian-base/DEBIAN/control | grep Version | awk '{print $2}')

# Rename the package to include the version number
mv -fv mdebian-base.deb mdebian-base_${VERSION}.deb
