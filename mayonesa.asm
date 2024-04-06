0000000000000000 <funcion>:
   0:	f3 0f 1e fa          	endbr64 
   4:	31 c0                	xor    eax,eax
   6:	41 89 c0             	mov    r8d,eax
   9:	39 c6                	cmp    esi,eax
   b:	7e 0b                	jle    18 <funcion+0x18>
   d:	48 ff c0             	inc    rax
  10:	39 54 87 fc          	cmp    DWORD PTR [rdi+rax*4-0x4],edx
  14:	75 f0                	jne    6 <funcion+0x6>
  16:	eb 04                	jmp    1c <funcion+0x1c>
  18:	41 83 c8 ff          	or     r8d,0xffffffff
  1c:	44 89 c0             	mov    eax,r8d
  1f:	c3                   	ret   

endbr64: Esta instrucción es una indicación de ejecución de flujo en la arquitectura x86-64 y es parte de las mitigaciones de seguridad 
contra ataques de secuencia de instrucciones.

xor eax, eax: Esta instrucción establece eax en cero. eax es el registro de acumulador y se usa a menudo para operaciones 
aritméticas y de lógica.

mov r8d, eax: Esta instrucción mueve el valor de eax (que ahora es cero) al registro r8d. r8d es un registro 
de uso general y se usa en este caso como un contador.

cmp esi, eax: Esta instrucción compara el valor en esi (que probablemente es algún tipo de contador o límite) con cero (que está en eax). 
Esto podría estar verificando si hemos alcanzado el final de algún bucle o arreglo.

jle 18 <funcion+0x18>: Esta instrucción es una instrucción de salto condicional. Salta a la dirección 18
si la comparación anterior fue menor o igual (<=).

inc rax: Incrementa el valor de rax (un registro que probablemente esté actuando como un índice) en uno.

cmp DWORD PTR [rdi+rax*4-0x4], edx: Compara el valor en memoria apuntado por rdi + rax * 4 - 0x4 (probablemente algún tipo de arreglo) 
con el valor en edx. DWORD PTR indica que estamos comparando un dword (32 bits).

jne 6 <funcion+0x6>: Salta a la dirección 6 si la comparación anterior no es igual (!=).

jmp 1c <funcion+0x1c>: Salta a la dirección 1c. Esto se ejecutará si el valor comparado en la instrucción anterior es igual (==).

or r8d, 0xffffffff: Esta instrucción realiza una operación OR entre r8d y 0xffffffff, estableciendo todos los bits en r8d en 1.

mov eax, r8d: Mueve el valor en r8d a eax. Esta podría ser una forma de establecer el valor de retorno de la función,
ya que eax se utiliza comúnmente para este propósito.

ret: Retorna de la función.

