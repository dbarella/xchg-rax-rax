; $ nasm -f elf64 0x00.asm
; $ gcc 0x00.o -o 0x00
; $ gdb 0x00
; (gdb) b debug
; (gdb) r
; (gdb) i r

BITS 64

global main

section .text

main:
  xor      eax,eax
  lea      rbx,[0]
  mov      ecx,10  ; speed up the loop
  loop     $
  mov      rdx,0
  and      esi,0
  sub      edi,edi
  push     0
  pop      rbp