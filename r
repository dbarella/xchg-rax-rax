#!/usr/bin/env bash

# usage: do 0x00
# because makefiles are stupid.

# sane defaults
set -euo pipefail
IFS=$'\n\t'

name="${1}"
src="${name}.asm"
obj="${name}.o"
bin="${name}"

function cleanup {
  rm "${obj}" "${bin}"
}
trap cleanup EXIT

function helptext() {
  echo 'good gdb commands:'
  echo '  disassemble main'
  echo '  info registers'
  echo '  print/x'
  echo '  nexti'
  echo '  info float'
  echo '  info stack'
}

function main() {
  helptext
  nasm -f elf64 "${src}"
  gcc "${obj}" -o "${bin}"
  gdb --silent "${bin}"
}
main
