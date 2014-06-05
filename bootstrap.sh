#!/bin/sh

yum install -y ant autoconf automake boost-static gcc-c++ genromfs libvirt libtool flex bison qemu-system-x86 qemu-img maven maven-shade-plugin python-dpkt tcpdump gdb git
git clone https://github.com/cloudius-systems/osv.git
cd osv
git submodule update --init --recursive
make
cd ..
chown -R vagrant:vagrant osv
