#!/bin/bash

sudo apt-get update
sudo apt-get install -y git build-essential libtool automake bison flex check indent libfuse-dev pkg-config libglib2.0-dev

ssh-keyscan -H github.com > ~/.ssh/known_hosts

git config --global user.name "Bryan D. Payne"
git config --global user.email "bdpayne@acm.org"
git clone git@github.com:bdpayne/libvmi.git

cd libvmi
./autogen.sh
./configure
