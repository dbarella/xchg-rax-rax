#!/usr/bin/env bash

# usage: ./r 0x00
# because makefiles are stupid.

# sane defaults
set -euo pipefail
IFS=$'\n\t'

readonly name="${1}"
readonly src="${name}.asm"
readonly obj="${name}.o"
readonly bin="${name}"

function cleanup {
  rm "${obj}" "${bin}"
}; trap cleanup EXIT

function helptext() {
  echo 'good gdb commands:'
  echo '  nexti (or ni)'
  echo '  set $rax=0'
  echo '  run (or r): restart the program (experiment with inputs)'
  echo '  print/x (or p/x): print hex'
  echo '  print/u (or p/u): print unsigned int'
  echo '  print/s (or p/s): print signed int'
  echo '  info float'
  echo '  info stack'
  echo '  info win'
  echo '  fs next'
  echo '  remember in TUI mode the arrows scroll the window not the commands.'
  echo '  to recall previous commands, use ctrl-p, ctrl-n (emacs bindings).'
}

function main() {
  helptext
  nasm -f elf64 "${src}"
  gcc "${obj}" -o "${bin}"
  gdb --silent "${bin}"
}; main
