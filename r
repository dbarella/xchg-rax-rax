#!/usr/bin/env bash

# usage: do 0x00
# because makefiles are stupid.

# sane defaults
set -euox pipefail
IFS=$'\n\t'

name="${1}"
src="${name}.asm"
obj="${name}.o"
bin="${name}"

function cleanup {
  rm "${obj}" "${bin}"
}
trap cleanup EXIT

function main() {
  nasm -f elf64 "${src}"
  gcc "${obj}" -o "${bin}"
  gdb "${bin}"
}
main
