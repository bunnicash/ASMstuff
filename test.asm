section .bss
   ; variables

section .data
   ; constants
   hello: db "hi", 10     ; string printed
   helloLen: equ $-hello  ; string length

section .text
   global _start          ; entry point, linker

  _start:
     mov    rax,1         ; sys_write is 1 on linux
     mov    rdi,1         ; stdout, standard output
     mov    rsi,hello     ; msg to write
     mov    rdx,helloLen  ; msg length
     syscall              ; call kernel

     ; end program
     mov    rax,60        ; rax register to 60 sys_exit
     mov    rdi,0         ; error code 0, success
     syscall              ; kernel
