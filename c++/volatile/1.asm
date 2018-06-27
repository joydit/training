
a.out:     file format elf32-littlearm


Disassembly of section .init:

0000829c <_init>:
    829c:	e92d4008 	push	{r3, lr}
    82a0:	eb00001e 	bl	8320 <call_weak_fn>
    82a4:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000082a8 <.plt>:
    82a8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    82ac:	e59fe004 	ldr	lr, [pc, #4]	; 82b8 <_init+0x1c>
    82b0:	e08fe00e 	add	lr, pc, lr
    82b4:	e5bef008 	ldr	pc, [lr, #8]!
    82b8:	00008d48 	.word	0x00008d48
    82bc:	e28fc600 	add	ip, pc, #0, 12
    82c0:	e28cca08 	add	ip, ip, #8, 20	; 0x8000
    82c4:	e5bcfd48 	ldr	pc, [ip, #3400]!	; 0xd48
    82c8:	e28fc600 	add	ip, pc, #0, 12
    82cc:	e28cca08 	add	ip, ip, #8, 20	; 0x8000
    82d0:	e5bcfd40 	ldr	pc, [ip, #3392]!	; 0xd40
    82d4:	e28fc600 	add	ip, pc, #0, 12
    82d8:	e28cca08 	add	ip, ip, #8, 20	; 0x8000
    82dc:	e5bcfd38 	ldr	pc, [ip, #3384]!	; 0xd38

Disassembly of section .text:

000082e0 <main>:
    82e0:	b084      	sub	sp, #16
    82e2:	230a      	movs	r3, #10
    82e4:	9301      	str	r3, [sp, #4]
    82e6:	9302      	str	r3, [sp, #8]
    82e8:	9303      	str	r3, [sp, #12]
    82ea:	b004      	add	sp, #16
    82ec:	4770      	bx	lr
    82ee:	bf00      	nop

000082f0 <_start>:
    82f0:	f04f 0b00 	mov.w	fp, #0
    82f4:	f04f 0e00 	mov.w	lr, #0
    82f8:	bc02      	pop	{r1}
    82fa:	466a      	mov	r2, sp
    82fc:	b404      	push	{r2}
    82fe:	b401      	push	{r0}
    8300:	f8df c010 	ldr.w	ip, [pc, #16]	; 8314 <_start+0x24>
    8304:	f84d cd04 	str.w	ip, [sp, #-4]!
    8308:	4803      	ldr	r0, [pc, #12]	; (8318 <_start+0x28>)
    830a:	4b04      	ldr	r3, [pc, #16]	; (831c <_start+0x2c>)
    830c:	f7ff efd6 	blx	82bc <_init+0x20>
    8310:	f7ff efe0 	blx	82d4 <_init+0x38>
    8314:	0000840d 	.word	0x0000840d
    8318:	000082e1 	.word	0x000082e1
    831c:	000083cd 	.word	0x000083cd

00008320 <call_weak_fn>:
    8320:	e59f3014 	ldr	r3, [pc, #20]	; 833c <call_weak_fn+0x1c>
    8324:	e59f2014 	ldr	r2, [pc, #20]	; 8340 <call_weak_fn+0x20>
    8328:	e08f3003 	add	r3, pc, r3
    832c:	e7932002 	ldr	r2, [r3, r2]
    8330:	e3520000 	cmp	r2, #0
    8334:	012fff1e 	bxeq	lr
    8338:	eaffffe2 	b	82c8 <_init+0x2c>
    833c:	00008cd0 	.word	0x00008cd0
    8340:	00000018 	.word	0x00000018

00008344 <deregister_tm_clones>:
    8344:	4b07      	ldr	r3, [pc, #28]	; (8364 <deregister_tm_clones+0x20>)
    8346:	f241 0024 	movw	r0, #4132	; 0x1024
    834a:	f2c0 0001 	movt	r0, #1
    834e:	1a1b      	subs	r3, r3, r0
    8350:	2b06      	cmp	r3, #6
    8352:	d800      	bhi.n	8356 <deregister_tm_clones+0x12>
    8354:	4770      	bx	lr
    8356:	f240 0300 	movw	r3, #0
    835a:	f2c0 0300 	movt	r3, #0
    835e:	2b00      	cmp	r3, #0
    8360:	d0f8      	beq.n	8354 <deregister_tm_clones+0x10>
    8362:	4718      	bx	r3
    8364:	00011027 	.word	0x00011027

00008368 <register_tm_clones>:
    8368:	f241 0324 	movw	r3, #4132	; 0x1024
    836c:	f241 0024 	movw	r0, #4132	; 0x1024
    8370:	f2c0 0301 	movt	r3, #1
    8374:	f2c0 0001 	movt	r0, #1
    8378:	1a1b      	subs	r3, r3, r0
    837a:	109b      	asrs	r3, r3, #2
    837c:	eb03 73d3 	add.w	r3, r3, r3, lsr #31
    8380:	1059      	asrs	r1, r3, #1
    8382:	d100      	bne.n	8386 <register_tm_clones+0x1e>
    8384:	4770      	bx	lr
    8386:	f240 0200 	movw	r2, #0
    838a:	f2c0 0200 	movt	r2, #0
    838e:	2a00      	cmp	r2, #0
    8390:	d0f8      	beq.n	8384 <register_tm_clones+0x1c>
    8392:	4710      	bx	r2

00008394 <__do_global_dtors_aux>:
    8394:	b510      	push	{r4, lr}
    8396:	f241 0424 	movw	r4, #4132	; 0x1024
    839a:	f2c0 0401 	movt	r4, #1
    839e:	7823      	ldrb	r3, [r4, #0]
    83a0:	b91b      	cbnz	r3, 83aa <__do_global_dtors_aux+0x16>
    83a2:	f7ff ffcf 	bl	8344 <deregister_tm_clones>
    83a6:	2301      	movs	r3, #1
    83a8:	7023      	strb	r3, [r4, #0]
    83aa:	bd10      	pop	{r4, pc}

000083ac <frame_dummy>:
    83ac:	f640 7014 	movw	r0, #3860	; 0xf14
    83b0:	f2c0 0001 	movt	r0, #1
    83b4:	b508      	push	{r3, lr}
    83b6:	6803      	ldr	r3, [r0, #0]
    83b8:	b12b      	cbz	r3, 83c6 <frame_dummy+0x1a>
    83ba:	f240 0300 	movw	r3, #0
    83be:	f2c0 0300 	movt	r3, #0
    83c2:	b103      	cbz	r3, 83c6 <frame_dummy+0x1a>
    83c4:	4798      	blx	r3
    83c6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
    83ca:	e7cd      	b.n	8368 <register_tm_clones>

000083cc <__libc_csu_init>:
    83cc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    83d0:	4607      	mov	r7, r0
    83d2:	4e0c      	ldr	r6, [pc, #48]	; (8404 <__libc_csu_init+0x38>)
    83d4:	4688      	mov	r8, r1
    83d6:	4d0c      	ldr	r5, [pc, #48]	; (8408 <__libc_csu_init+0x3c>)
    83d8:	4691      	mov	r9, r2
    83da:	447e      	add	r6, pc
    83dc:	f7ff ef5e 	blx	829c <_init>
    83e0:	447d      	add	r5, pc
    83e2:	1b76      	subs	r6, r6, r5
    83e4:	10b6      	asrs	r6, r6, #2
    83e6:	d00a      	beq.n	83fe <__libc_csu_init+0x32>
    83e8:	3d04      	subs	r5, #4
    83ea:	2400      	movs	r4, #0
    83ec:	3401      	adds	r4, #1
    83ee:	f855 3f04 	ldr.w	r3, [r5, #4]!
    83f2:	4638      	mov	r0, r7
    83f4:	4641      	mov	r1, r8
    83f6:	464a      	mov	r2, r9
    83f8:	4798      	blx	r3
    83fa:	42b4      	cmp	r4, r6
    83fc:	d1f6      	bne.n	83ec <__libc_csu_init+0x20>
    83fe:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    8402:	bf00      	nop
    8404:	00008b32 	.word	0x00008b32
    8408:	00008b28 	.word	0x00008b28

0000840c <__libc_csu_fini>:
    840c:	4770      	bx	lr
    840e:	bf00      	nop

Disassembly of section .fini:

00008410 <_fini>:
    8410:	e92d4008 	push	{r3, lr}
    8414:	e8bd8008 	pop	{r3, pc}
