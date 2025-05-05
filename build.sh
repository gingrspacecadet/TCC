#!/bin/bash
PREFIX="$HOME/opt/cross"
TARGET=i686-elf
PATH="$PREFIX/bin:$PATH"

tar --zstd -xvf binutils-2.44.tar.zst
tar xf gcc-15.1.0.tar.xz
rm *.tar.*

cd $HOME/src
mkdir build-binutils
cd build-binutils
../binutils-2.44/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install
cd ..

cd $HOME/src
# The $PREFIX/bin dir _must_ be in the PATH. We did that above.
which -- $TARGET-as || echo $TARGET-as is not in the PATH
mkdir build-gcc
cd build-gcc
../gcc-15.1.0/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers --disable-hosted-libstdcxx
make all-gcc
make all-target-libgcc
make all-target-libstdc++-v3
make install-gcc
make install-target-libgcc
make install-target-libstdc++-v3
echo "$PREFIX/bin:$PATH" >> $HOME/.bashrc
