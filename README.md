# `platformio-freebsd-toolchain-esp32ulp`

Trick `platformio` so that it thinks `toolchain-esp32ulp`, a `platformio`
package, is installed.

## Rationale

Same as in
[`trombik/platformio-freebsd-toolchain-xtensa`](https://github.com/trombik/platformio-freebsd-toolchain-xtensa).


## What it does

`init.sh` creates symlinks to the directories where the system package
installed the tool-chain, and creates `package.json`.

## Requirements

Install the following packages.

- `devel/binutils-esp32ulp`

Note that `devel/binutils-esp32ulp` is not in the official ports tree. You
must built the package yourself. The port is available at
[devel/binutils-esp32ulp](https://github.com/trombik/freebsd-ports-binutils-esp32ulp).

## Usage

```console
cd ~/.platformio/packages
git clone https://github.com/trombik/platformio-freebsd-toolchain-esp32ulp.git toolchain-esp32ulp
cd toolchain-esp32ulp
./init.sh
```

`init.sh` creates symlinks and `package.json`.

## Further improvement

The script should be able to support other OSes, such as OpenBSD as long as a
package for the OS is provided.
