#!/bin/sh
set -e

sudo apt-get install -V -y gdb autotools-dev zlib1g-dev ruby git build-essential pkg-config autoconf libtool bison
git clone --recursive https://github.com/groonga/groonga.git
cd groonga
./autogen.sh
./configure --prefix=/usr/local --enable-debug --with-ruby --enable-mruby
make -j8
sudo make install
echo /usr/local/lib | sudo sh -c 'cat > /etc/ld.so.conf.d/groonga.conf'
sudo ldconfig
