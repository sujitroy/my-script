#!/usr/bin/env bash

apt-cache search java | grep openjdk
sudo apt-get install openjdk-6-jre

sudo apt install -y python gnupg flex bison gperf libsdl1.2-dev squashfs-tools build-essential zip zlib1g-dev pngcrush schedtool libxml2 \
libxml2-utils xsltproc lzop libc6-dev g++-multilib lib32z1-dev lib32ncurses5-dev gcc-multilib pngquant texinfo gcc gperf patch libtool \
automake g++ gawk subversion expat libexpat1-dev python-all-dev bc libcloog-isl-dev libcap-dev autoconf libgmp-dev build-essential \
pkg-config libmpc-dev libmpfr-dev w3m maven ncftp htop imagemagick