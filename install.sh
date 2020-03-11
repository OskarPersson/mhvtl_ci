#!/bin/bash
echo "Script Begin"

set -e

sudo yum update -y && sudo yum install -y git mc ntp gcc gcc-c++ make kernel-devel zlib-devel sg3_utils lsscsi mt-st mtx lzo lzo-devel perl-Config-General

git clone https://github.com/markh794/mhvtl mhvtl

cd mhvtl
make distclean
cd kernel/
make
sudo make install
cd ..
make
sudo make install

# Load it
sudo systemctl daemon-reload
sudo systemctl enable mhvtl.target
sudo systemctl start mhvtl.target

sleep 3
echo "Show your tape libraries now!"
lsscsi
