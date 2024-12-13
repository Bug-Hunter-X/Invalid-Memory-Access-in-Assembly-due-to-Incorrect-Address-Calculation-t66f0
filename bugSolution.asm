mov ecx, someValue ;Ensure ecx holds a valid index
mov eax, someArray ;Point eax to the base address of the array
cmp ecx, arraySize ;Check if index is within bounds
jge errorHandling ;Jump to error handling if index is out of bounds
mov edx, 4 ;Size of each element in the array
mul edx ;Multiply index by element size
add eax, ecx ;Calculate the memory address
mov ebx, [eax] ;Access the memory location safely
jmp nextInstruction ;Jump to next instruction
errorHandling:
;Handle the out-of-bounds error appropriately
nextInstruction:
;Continue with the rest of the program