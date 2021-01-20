#!/usr/bin/env bash

set -euox pipefail
IFS=$'\n\t'

# usage: do 0x00
# because makefiles are stupid.

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

main "${1}"
