#!/bin/sh

PREFIX=/usr/local/cross-tools
if [ "$TARGET" = "" ]; then
    TARGET=`basename $0 -make.sh`
fi
if [ "$TARGET" = "" -o "$TARGET" = "cross" ]; then
    TARGET=i686-w64-mingw32
fi
PATH="$PREFIX/bin:$PREFIX/$TARGET/bin:$PATH"
export PATH
export CC="$TARGET-gcc -static-libgcc"
export CXX="$TARGET-g++ -static-libgcc"
exec make $*
