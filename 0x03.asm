bits 64
global main

section .text

main:

sub      rdx,rax
sbb      rcx,rcx
and      rcx,rdx
add      rax,rcx
