#!/bin/sh
set -e
export PREFIX="$HOME/opt/cross" TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"
BINUTILS=2.44 GCC=14.2.0
export CC="gcc -std=gnu17" CXX="g++ -std=gnu++17"

mkdir -p ~/src && cd ~/src
[ -f binutils-$BINUTILS.tar.xz ] || wget https://ftp.gnu.org/gnu/binutils/binutils-$BINUTILS.tar.xz
[ -f gcc-$GCC.tar.xz ] || wget https://ftp.gnu.org/gnu/gcc/gcc-$GCC/gcc-$GCC.tar.xz
tar xf binutils-$BINUTILS.tar.xz
tar xf gcc-$GCC.tar.xz

mkdir -p build-binutils && cd build-binutils
../binutils-$BINUTILS/configure --target=$TARGET --prefix=$PREFIX \
    --with-sysroot --disable-nls --disable-werror
make -j"$(nproc)" && make install
cd ..

mkdir -p build-gcc && cd build-gcc
../gcc-$GCC/configure --target=$TARGET --prefix=$PREFIX \
    --disable-nls --enable-languages=c --without-headers
make -j"$(nproc)" all-gcc all-target-libgcc
make install-gcc install-target-libgcc
