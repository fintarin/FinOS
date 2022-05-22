print_string:
  pusha

  mov ah, 0x0e

  begin:
    mov al, [bx]
    cmp al, 0
    je end

    int 0x10

    add bx, 1
    jmp begin
  end:

  popa
  ret
