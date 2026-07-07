           ;Student1name: AISYAH BINTI AHMAD HAWARI Student1ID: 252UC243XL
           ;Student2name: ADRIANA NUR ZAHRA BINTI MOHD HELMI Student2ID: 252UC241MK
           ;Student3name: AMIRA SOFIA BINTI AZIZUL RAHMAN Student3ID: 252UC24216
           ;Student4name: ELLY MAZLIN BINTI MOHD AZMIR Student4ID: 252UC241RN

           ;TEST   6: All Negative Edge Values
           ;Expected result at 0x2100 = 0xFFFFFFFF

           mov     r8, #0x2000

           mov     r0, #0x80000000
           str     r0, [r8, #0]
           mov     r0, #0xFFFFFFFF
           str     r0, [r8, #4]
           mov     r0, #0xFFFFFFFE
           str     r0, [r8, #8]
           mov     r0, #0xFFFFFFFD
           str     r0, [r8, #12]
           mov     r0, #0xFFFFFFFC
           str     r0, [r8, #16]
           mov     r0, #0xFFFFFFFB
           str     r0, [r8, #20]
           mov     r0, #0xFFFFFFFA
           str     r0, [r8, #24]
           mov     r0, #0xFFFFFFF9
           str     r0, [r8, #28]
           mov     r0, #0xFFFFFFF8
           str     r0, [r8, #32]
           mov     r0, #0xFFFFFFF7
           str     r0, [r8, #36]

           mov     r8, #0x2000
           ldr     r4, [r8]
           add     r8, r8, #4
           mov     r5, #9

LoopMax    
           ldr     r6, [r8]
           cmp     r6, r4
           ble     SkipUpdate
           mov     r4, r6

SkipUpdate 
           add     r8, r8, #4
           subs    r5, r5, #1
           bne     LoopMax

           mov     r9, #0x2100
           str     r4, [r9]

Stop       
           b       Stop