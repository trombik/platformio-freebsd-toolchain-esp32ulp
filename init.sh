#!/bin/sh

: ${PREFIX:="/usr/local"}
: ${ESP32ULP_DIR:="${PREFIX}/esp32ulp-elf"}
: ${ESP32S2ULP_DIR:="${PREFIX}/esp32s2ulp-elf"}

VERSION="1.22851.190618"
ARCH=`uname -p`
OS=`uname -s | tr '[[:upper:]]' '[[:lower:]]'`

if [ ! -z $1 ]; then
    VERSION="$1"
fi

ln -s -f ${PREFIX}/bin .
ln -s -f ${ESP32ULP_DIR} .
ln -s -f ${ESP32S2ULP_DIR} .

cat <<__EOF__ >package.json
{
    "description": "Binutils fork with support for the ESP32 ULP co-processor",
    "name": "toolchain-esp32ulp",
    "system": [
        "${OS}_${ARCH}"
    ],
    "url": "https://github.com/trombik/platformio-freebsd-toolchain-esp32ulp",
    "version": "${VERSION}"
}
__EOF__
