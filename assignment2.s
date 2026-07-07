           ;Student1name: AISYAH BINTI AHMAD HAWARI Student1ID: 252UC243XL
           ;Student2name: ADRIANA NUR ZAHRA BINTI MOHD HELMI Student2ID: 252UC241MK
           ;Student3name: AMIRA SOFIA BINTI AZIZUL RAHMAN Student3ID: 252UC24216
           ;Student4name: ELLY MAZLIN BINTI MOHD AZMIR Student4ID: 252UC241RN

           mov     r8, #0x2000

           ;1st:   0x11111111
           mov     r0,#0x11000000
           mov     r1,#0x00110000
           mov     r2,#0x00001100
           mov     r3,#0x00000011
           add     r0, r0, r1
           add     r0, r0, r2
           add     r0, r0, r3
           str     r0, [r8]

           ;2nd:   0x22223333
           mov     r0,#0x22000000
           mov     r1,#0x00220000
           mov     r2,#0x00003300
           mov     r3,#0x00000033
           add     r0, r0, r1
           add     r0, r0, r2
           add     r0, r0, r3
           str     r0, [r8,#4]

           ;3rd:   0x31111111
           mov     r0,#0x31000000
           mov     r1,#0x00110000
           mov     r2,#0x00001100
           mov     r3,#0x00000011
           add     r0, r0, r1
           add     r0, r0, r2
           add     r0, r0, r3
           str     r0, [r8,#8]

           ;4th:   0x42223333
           mov     r0,#0x42000000
           mov     r1,#0x00220000
           mov     r2,#0x00003300
           mov     r3,#0x00000033
           add     r0, r0, r1
           add     r0, r0, r2
           add     r0, r0, r3
           str     r0, [r8,#12]

           ;5th:   0x51111111
           mov     r0,#0x51000000
           mov     r1,#0x00110000
           mov     r2,#0x00001100
           mov     r3,#0x00000011
           add     r0, r0, r1
           add     r0, r0, r2
           add     r0, r0, r3
           str     r0, [r8,#16]

           ;6th:   0x62223333
           mov     r0,#0x62000000
           mov     r1,#0x00220000
           mov     r2,#0x00003300
           mov     r3,#0x00000033
           add     r0, r0, r1
           add     r0, r0, r2
           add     r0, r0, r3
           str     r0, [r8,#20]

           ;7th:   0x71111111
           mov     r0,#0x71000000
           mov     r1,#0x00110000
           mov     r2,#0x00001100
           mov     r3,#0x00000011
           add     r0, r0, r1
           add     r0, r0, r2
           add     r0, r0, r3
           str     r0, [r8,#24]

           ;8th:   0x82223333
           mov     r0,#0x82000000
           mov     r1,#0x00220000
           mov     r2,#0x00003300
           mov     r3,#0x00000033
           add     r0, r0, r1
           add     r0, r0, r2
           add     r0, r0, r3
           str     r0, [r8,#28]

           ;9th:   0x91111111
           mov     r0,#0x91000000
           mov     r1,#0x00110000
           mov     r2,#0x00001100
           mov     r3,#0x00000011
           add     r0, r0, r1
           add     r0, r0, r2
           add     r0, r0, r3
           str     r0, [r8,#32]

           ;10th:  0xAA223333
           mov     r0,#0xA2000000
           mov     r1,#0x00220000
           mov     r2,#0x00003300
           mov     r3,#0x00000033
           add     r0, r0, r1
           add     r0, r0, r2
           add     r0, r0, r3
           str     r0, [r8,#36]


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