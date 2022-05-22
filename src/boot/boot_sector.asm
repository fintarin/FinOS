[ org 0x7c00 ]

mov ah, 0x0e

mov bx, boot_str
print_loop:
  mov al, [bx]
  cmp al, 0
  je print_loop_end

  int 0x10

  add bx, 1
  jmp print_loop
print_loop_end:

jmp $

boot_str:
  db 'Booting OS', 0

times 510 - ($-$$) db 0
dw 0xaa55