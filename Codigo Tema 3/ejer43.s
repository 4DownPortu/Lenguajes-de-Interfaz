               .arch armv6
               .eabi_attribute 28, 1
               .eabi_attribute 20, 1
               .eabi_attribute 21, 1
               .eabi_attribute 23, 3
               .eabi_attribute 24, 1
               .eabi_attribute 25, 1
               .eabi_attribute 26, 2
               .eabi_attribute 30, 6
               .eabi_attribute 34, 1
               .eabi_attribute 18, 4
               .file   "ejer43.C"
               .text
               .section        .rodata
               .align  2
       .LC0:
               .ascii  "RE\000"
               .align  2
       .LC1:
               .ascii  "MI\000"
               .align  2
       .LC2:
               .ascii  "FA\000"
               .align  2
       .LC3:
               .ascii  "Nota: %s\012\000"
               .text
               .align  2
               .global main
               .arch armv6
               .syntax unified
               .arm
               .fpu vfp
               .type   main, %function
        main:
               .fnstart
       .LFB0:
               @ args = 0, pretend = 0, frame = 16
               @ frame_needed = 1, uses_anonymous_args = 0
               push    {fp, lr}
               .save {fp, lr}
               .setfp fp, sp, #4
               add     fp, sp, #4
               .pad #16
               sub     sp, sp, #16
               ldr     r3, .L8
               str     r3, [fp, #-12]
               ldr     r3, .L8+4
               str     r3, [fp, #-16]
               ldr     r3, .L8+8
               str     r3, [fp, #-20]
               mov     r3, #0
               str     r3, [fp, #-8]
       .L6:
               ldr     r3, [fp, #-8]
               cmp     r3, #8
               bgt     .L2
               ldr     r3, [fp, #-8]
               cmp     r3, #0
               blt     .L3
               ldr     r3, [fp, #-8]
               cmp     r3, #2
               bgt     .L3
               ldr     r1, [fp, #-12]
               ldr     r0, .L8+12
               bl      printf
       .L3:
               ldr     r3, [fp, #-8]
               cmp     r3, #2
               ble     .L4
               ldr     r3, [fp, #-8]
               cmp     r3, #5
               bgt     .L4
               ldr     r1, [fp, #-16]
               ldr     r0, .L8+12
               bl      printf
       .L4:
               ldr     r3, [fp, #-8]
               cmp     r3, #5
               ble     .L5
               ldr     r3, [fp, #-8]
               cmp     r3, #8
               bgt     .L5
               ldr     r1, [fp, #-20]
               ldr     r0, .L8+12
               bl      printf
       .L5:
               ldr     r3, [fp, #-8]
               add     r3, r3, #1
               str     r3, [fp, #-8]
               b       .L6
       .L2:
               mov     r3, #0
               mov     r0, r3
               sub     sp, fp, #4
               @ sp needed
               pop     {fp, pc}
       .L9:
               .align  2
       .L8:
               .word   .LC0
               .word   .LC1
               .word   .LC2
               .word   .LC3
               .fnend
               .size   main, .-main
               .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
               .section        .note.GNU-stack,"",%progbits