#sumatoria 
# dec = decrece en 1
# jne = salta si no son iguales

    mov     rcx,    qword [cant]    ; contador de iteraciones
    mov     rax,    1               ; registro de impares
sumLoop:
    add     qword [suma], rax       ; acumulando
    add     rax,    2               ; siguiente impar
    dec     rcx
    cmp     rcx,    0               ; 
    jne     sumLoop

#otra manera de expresar el codigo, aqui uso loop como reemplazo de dec y jne
    mov     rcx,    qword [cant]    ; contador de iteraciones
    mov     rax,    1               ; registro de impares
sumLoop:
    add     qword [suma], rax       ; acumulando
    add     rax,    2               ; siguiente impar
    loop     sumLoop
