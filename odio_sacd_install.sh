#!/bin/bash
# Fomenko A V (c)

# Super Audio CD decoder
# Odio  SACD  is  a command-line application which takes a Super Audio CD
# source and extracts a 24-bit high resolution  wave  file.   It  handles
# both DST and DSD streams.
# The application reads the following input:
#   • SACD image files (*.iso)
#   • Sony DSF files (*.dsf)
#   • Philips DSDIFF files (*.dff)
# Supported output sample rates:
#   • 88.2kHz
#   • 176.4kHz

mkdir odio-sacd_install
cd odio-sacd_install

sudo apt update
sudo apt install git cmake pkgconf glibc-*

git clone https://github.com/tari01/libodiosacd.git
cd libodiosacd
mkdir build
cd build
cmake ..
make
sudo make install

cd ..
cd ..

git clone https://github.com/tari01/odio-sacd.git
cd odio-sacd
mkdir build
cd build
cmake ..
make
sudo make install

cd ..
cd ..
cd ..

rm -rf odio-sacd_install

echo done
