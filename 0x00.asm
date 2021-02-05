bits 64
global main

section .text

main:

xor      eax,eax
lea      rbx,[0]
; mov      ecx,10  ; uncomment to speed up the loop
loop     $
mov      rdx,0
and      esi,0
sub      edi,edi
push     0
pop      rbp
