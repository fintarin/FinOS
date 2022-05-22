[ org 0x7c00 ]

mov bx, BOOT_BEGIN_MSG
call print_string

mov bx, BOOT_END_MSG
call print_string

jmp $

%include 'print_string.asm'

BOOT_BEGIN_MSG:
  db 'Booting OS...', 0x0a, 0x0d, 0

BOOT_END_MSG:
  db 'OS booted!', 0x0a, 0x0d, 0

times 510 - ($ - $$) db 0
dw 0xaa55
