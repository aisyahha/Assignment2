           ;Student1name: AISYAH BINTI AHMAD HAWARI Student1ID: 252UC243XL
           ;Student2name: ADRIANA NUR ZAHRA BINTI MOHD HELMI Student2ID: 252UC241MK
           ;Student3name: AMIRA SOFIA BINTI AZIZUL RAHMAN Student3ID: 252UC24216
           ;Student4name: ELLY MAZLIN BINTI MOHD AZMIR Student4ID: 252UC241RN

           ;TEST 3: Mixed (Positive, Negative, Zero)
           ;Expected result at 0x2100 = 0x00000014 (20)

           mov     r8, #0x2000

           ldr     r0, =0xFFFFFFF5 ; -11
           str     r0, [r8, #0]
           ldr     r0, =0x00000005 ; 5
           str     r0, [r8, #4]
           ldr     r0, =0x0000000F ; 15
           str     r0, [r8, #8]
           ldr     r0, =0xFFFFFFF0 ; -16
           str     r0, [r8, #12]
           ldr     r0, =0x00000000 ; 0
           str     r0, [r8, #16]
           ldr     r0, =0x00000007 ; 7
           str     r0, [r8, #20]
           ldr     r0, =0xFFFFFFFA ; -6
           str     r0, [r8, #24]
           ldr     r0, =0x00000014 ; 20
           str     r0, [r8, #28]
           ldr     r0, =0xFFFFFF88 ; -120
           str     r0, [r8, #32]
           ldr     r0, =0x00000002 ; 2
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