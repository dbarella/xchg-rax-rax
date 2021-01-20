bits 64
global main

section .text

main:

.loop:
    xadd     rax,rdx
    loop     .loop
