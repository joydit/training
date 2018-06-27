
a.out:     file format elf32-littlearm


Disassembly of section .init:

0000829c <_init>:
    829c:	e92d4008 	push	{r3, lr}
    82a0:	eb000020 	bl	8328 <call_weak_fn>
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
    82e4:	9300      	str	r3, [sp, #0]
    82e6:	9b00      	ldr	r3, [sp, #0]
    82e8:	9301      	str	r3, [sp, #4]
    82ea:	9b00      	ldr	r3, [sp, #0]
    82ec:	9302      	str	r3, [sp, #8]
    82ee:	9b00      	ldr	r3, [sp, #0]
    82f0:	9303      	str	r3, [sp, #12]
    82f2:	b004      	add	sp, #16
    82f4:	4770      	bx	lr
    82f6:	bf00      	nop

000082f8 <_start>:
    82f8:	f04f 0b00 	mov.w	fp, #0
    82fc:	f04f 0e00 	mov.w	lr, #0
    8300:	bc02      	pop	{r1}
    8302:	466a      	mov	r2, sp
    8304:	b404      	push	{r2}
    8306:	b401      	push	{r0}
    8308:	f8df c010 	ldr.w	ip, [pc, #16]	; 831c <_start+0x24>
    830c:	f84d cd04 	str.w	ip, [sp, #-4]!
    8310:	4803      	ldr	r0, [pc, #12]	; (8320 <_start+0x28>)
    8312:	4b04      	ldr	r3, [pc, #16]	; (8324 <_start+0x2c>)
    8314:	f7ff efd2 	blx	82bc <_init+0x20>
    8318:	f7ff efdc 	blx	82d4 <_init+0x38>
    831c:	00008415 	.word	0x00008415
    8320:	000082e1 	.word	0x000082e1
    8324:	000083d5 	.word	0x000083d5

00008328 <call_weak_fn>:
    8328:	e59f3014 	ldr	r3, [pc, #20]	; 8344 <call_weak_fn+0x1c>
    832c:	e59f2014 	ldr	r2, [pc, #20]	; 8348 <call_weak_fn+0x20>
    8330:	e08f3003 	add	r3, pc, r3
    8334:	e7932002 	ldr	r2, [r3, r2]
    8338:	e3520000 	cmp	r2, #0
    833c:	012fff1e 	bxeq	lr
    8340:	eaffffe0 	b	82c8 <_init+0x2c>
    8344:	00008cc8 	.word	0x00008cc8
    8348:	00000018 	.word	0x00000018

0000834c <deregister_tm_clones>:
    834c:	4b07      	ldr	r3, [pc, #28]	; (836c <deregister_tm_clones+0x20>)
    834e:	f241 0024 	movw	r0, #4132	; 0x1024
    8352:	f2c0 0001 	movt	r0, #1
    8356:	1a1b      	subs	r3, r3, r0
    8358:	2b06      	cmp	r3, #6
    835a:	d800      	bhi.n	835e <deregister_tm_clones+0x12>
    835c:	4770      	bx	lr
    835e:	f240 0300 	movw	r3, #0
    8362:	f2c0 0300 	movt	r3, #0
    8366:	2b00      	cmp	r3, #0
    8368:	d0f8      	beq.n	835c <deregister_tm_clones+0x10>
    836a:	4718      	bx	r3
    836c:	00011027 	.word	0x00011027

00008370 <register_tm_clones>:
    8370:	f241 0324 	movw	r3, #4132	; 0x1024
    8374:	f241 0024 	movw	r0, #4132	; 0x1024
    8378:	f2c0 0301 	movt	r3, #1
    837c:	f2c0 0001 	movt	r0, #1
    8380:	1a1b      	subs	r3, r3, r0
    8382:	109b      	asrs	r3, r3, #2
    8384:	eb03 73d3 	add.w	r3, r3, r3, lsr #31
    8388:	1059      	asrs	r1, r3, #1
    838a:	d100      	bne.n	838e <register_tm_clones+0x1e>
    838c:	4770      	bx	lr
    838e:	f240 0200 	movw	r2, #0
    8392:	f2c0 0200 	movt	r2, #0
    8396:	2a00      	cmp	r2, #0
    8398:	d0f8      	beq.n	838c <register_tm_clones+0x1c>
    839a:	4710      	bx	r2

0000839c <__do_global_dtors_aux>:
    839c:	b510      	push	{r4, lr}
    839e:	f241 0424 	movw	r4, #4132	; 0x1024
    83a2:	f2c0 0401 	movt	r4, #1
    83a6:	7823      	ldrb	r3, [r4, #0]
    83a8:	b91b      	cbnz	r3, 83b2 <__do_global_dtors_aux+0x16>
    83aa:	f7ff ffcf 	bl	834c <deregister_tm_clones>
    83ae:	2301      	movs	r3, #1
    83b0:	7023      	strb	r3, [r4, #0]
    83b2:	bd10      	pop	{r4, pc}

000083b4 <frame_dummy>:
    83b4:	f640 7014 	movw	r0, #3860	; 0xf14
    83b8:	f2c0 0001 	movt	r0, #1
    83bc:	b508      	push	{r3, lr}
    83be:	6803      	ldr	r3, [r0, #0]
    83c0:	b12b      	cbz	r3, 83ce <frame_dummy+0x1a>
    83c2:	f240 0300 	movw	r3, #0
    83c6:	f2c0 0300 	movt	r3, #0
    83ca:	b103      	cbz	r3, 83ce <frame_dummy+0x1a>
    83cc:	4798      	blx	r3
    83ce:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
    83d2:	e7cd      	b.n	8370 <register_tm_clones>

000083d4 <__libc_csu_init>:
    83d4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    83d8:	4607      	mov	r7, r0
    83da:	4e0c      	ldr	r6, [pc, #48]	; (840c <__libc_csu_init+0x38>)
    83dc:	4688      	mov	r8, r1
    83de:	4d0c      	ldr	r5, [pc, #48]	; (8410 <__libc_csu_init+0x3c>)
    83e0:	4691      	mov	r9, r2
    83e2:	447e      	add	r6, pc
    83e4:	f7ff ef5a 	blx	829c <_init>
    83e8:	447d      	add	r5, pc
    83ea:	1b76      	subs	r6, r6, r5
    83ec:	10b6      	asrs	r6, r6, #2
    83ee:	d00a      	beq.n	8406 <__libc_csu_init+0x32>
    83f0:	3d04      	subs	r5, #4
    83f2:	2400      	movs	r4, #0
    83f4:	3401      	adds	r4, #1
    83f6:	f855 3f04 	ldr.w	r3, [r5, #4]!
    83fa:	4638      	mov	r0, r7
    83fc:	4641      	mov	r1, r8
    83fe:	464a      	mov	r2, r9
    8400:	4798      	blx	r3
    8402:	42b4      	cmp	r4, r6
    8404:	d1f6      	bne.n	83f4 <__libc_csu_init+0x20>
    8406:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    840a:	bf00      	nop
    840c:	00008b2a 	.word	0x00008b2a
    8410:	00008b20 	.word	0x00008b20

00008414 <__libc_csu_fini>:
    8414:	4770      	bx	lr
    8416:	bf00      	nop

Disassembly of section .fini:

00008418 <_fini>:
    8418:	e92d4008 	push	{r3, lr}
    841c:	e8bd8008 	pop	{r3, pc}
