
build/White-Box-ARM.elf:     file format elf32-littlearm


Disassembly of section .text:

08000190 <__do_global_dtors_aux>:
 8000190:	b510      	push	{r4, lr}
 8000192:	4c05      	ldr	r4, [pc, #20]	; (80001a8 <__do_global_dtors_aux+0x18>)
 8000194:	7823      	ldrb	r3, [r4, #0]
 8000196:	b933      	cbnz	r3, 80001a6 <__do_global_dtors_aux+0x16>
 8000198:	4b04      	ldr	r3, [pc, #16]	; (80001ac <__do_global_dtors_aux+0x1c>)
 800019a:	b113      	cbz	r3, 80001a2 <__do_global_dtors_aux+0x12>
 800019c:	4804      	ldr	r0, [pc, #16]	; (80001b0 <__do_global_dtors_aux+0x20>)
 800019e:	f3af 8000 	nop.w
 80001a2:	2301      	movs	r3, #1
 80001a4:	7023      	strb	r3, [r4, #0]
 80001a6:	bd10      	pop	{r4, pc}
 80001a8:	20000070 	.word	0x20000070
 80001ac:	00000000 	.word	0x00000000
 80001b0:	08003dc4 	.word	0x08003dc4

080001b4 <frame_dummy>:
 80001b4:	4b0c      	ldr	r3, [pc, #48]	; (80001e8 <frame_dummy+0x34>)
 80001b6:	b143      	cbz	r3, 80001ca <frame_dummy+0x16>
 80001b8:	480c      	ldr	r0, [pc, #48]	; (80001ec <frame_dummy+0x38>)
 80001ba:	490d      	ldr	r1, [pc, #52]	; (80001f0 <frame_dummy+0x3c>)
 80001bc:	b510      	push	{r4, lr}
 80001be:	f3af 8000 	nop.w
 80001c2:	480c      	ldr	r0, [pc, #48]	; (80001f4 <frame_dummy+0x40>)
 80001c4:	6803      	ldr	r3, [r0, #0]
 80001c6:	b923      	cbnz	r3, 80001d2 <frame_dummy+0x1e>
 80001c8:	bd10      	pop	{r4, pc}
 80001ca:	480a      	ldr	r0, [pc, #40]	; (80001f4 <frame_dummy+0x40>)
 80001cc:	6803      	ldr	r3, [r0, #0]
 80001ce:	b933      	cbnz	r3, 80001de <frame_dummy+0x2a>
 80001d0:	4770      	bx	lr
 80001d2:	4b09      	ldr	r3, [pc, #36]	; (80001f8 <frame_dummy+0x44>)
 80001d4:	2b00      	cmp	r3, #0
 80001d6:	d0f7      	beq.n	80001c8 <frame_dummy+0x14>
 80001d8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80001dc:	4718      	bx	r3
 80001de:	4b06      	ldr	r3, [pc, #24]	; (80001f8 <frame_dummy+0x44>)
 80001e0:	2b00      	cmp	r3, #0
 80001e2:	d0f5      	beq.n	80001d0 <frame_dummy+0x1c>
 80001e4:	4718      	bx	r3
 80001e6:	bf00      	nop
 80001e8:	00000000 	.word	0x00000000
 80001ec:	08003dc4 	.word	0x08003dc4
 80001f0:	20000074 	.word	0x20000074
 80001f4:	20000070 	.word	0x20000070
	...

08000200 <memchr>:
 8000200:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000204:	2a10      	cmp	r2, #16
 8000206:	db2b      	blt.n	8000260 <memchr+0x60>
 8000208:	f010 0f07 	tst.w	r0, #7
 800020c:	d008      	beq.n	8000220 <memchr+0x20>
 800020e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000212:	3a01      	subs	r2, #1
 8000214:	428b      	cmp	r3, r1
 8000216:	d02d      	beq.n	8000274 <memchr+0x74>
 8000218:	f010 0f07 	tst.w	r0, #7
 800021c:	b342      	cbz	r2, 8000270 <memchr+0x70>
 800021e:	d1f6      	bne.n	800020e <memchr+0xe>
 8000220:	b4f0      	push	{r4, r5, r6, r7}
 8000222:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000226:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800022a:	f022 0407 	bic.w	r4, r2, #7
 800022e:	f07f 0700 	mvns.w	r7, #0
 8000232:	2300      	movs	r3, #0
 8000234:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000238:	3c08      	subs	r4, #8
 800023a:	ea85 0501 	eor.w	r5, r5, r1
 800023e:	ea86 0601 	eor.w	r6, r6, r1
 8000242:	fa85 f547 	uadd8	r5, r5, r7
 8000246:	faa3 f587 	sel	r5, r3, r7
 800024a:	fa86 f647 	uadd8	r6, r6, r7
 800024e:	faa5 f687 	sel	r6, r5, r7
 8000252:	b98e      	cbnz	r6, 8000278 <memchr+0x78>
 8000254:	d1ee      	bne.n	8000234 <memchr+0x34>
 8000256:	bcf0      	pop	{r4, r5, r6, r7}
 8000258:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800025c:	f002 0207 	and.w	r2, r2, #7
 8000260:	b132      	cbz	r2, 8000270 <memchr+0x70>
 8000262:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000266:	3a01      	subs	r2, #1
 8000268:	ea83 0301 	eor.w	r3, r3, r1
 800026c:	b113      	cbz	r3, 8000274 <memchr+0x74>
 800026e:	d1f8      	bne.n	8000262 <memchr+0x62>
 8000270:	2000      	movs	r0, #0
 8000272:	4770      	bx	lr
 8000274:	3801      	subs	r0, #1
 8000276:	4770      	bx	lr
 8000278:	2d00      	cmp	r5, #0
 800027a:	bf06      	itte	eq
 800027c:	4635      	moveq	r5, r6
 800027e:	3803      	subeq	r0, #3
 8000280:	3807      	subne	r0, #7
 8000282:	f015 0f01 	tst.w	r5, #1
 8000286:	d107      	bne.n	8000298 <memchr+0x98>
 8000288:	3001      	adds	r0, #1
 800028a:	f415 7f80 	tst.w	r5, #256	; 0x100
 800028e:	bf02      	ittt	eq
 8000290:	3001      	addeq	r0, #1
 8000292:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8000296:	3001      	addeq	r0, #1
 8000298:	bcf0      	pop	{r4, r5, r6, r7}
 800029a:	3801      	subs	r0, #1
 800029c:	4770      	bx	lr
 800029e:	bf00      	nop

080002a0 <HAL_NVIC_SetPriorityGrouping>:
 80002a0:	4a07      	ldr	r2, [pc, #28]	; (80002c0 <HAL_NVIC_SetPriorityGrouping+0x20>)
 80002a2:	68d3      	ldr	r3, [r2, #12]
 80002a4:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 80002a8:	041b      	lsls	r3, r3, #16
 80002aa:	0c1b      	lsrs	r3, r3, #16
 80002ac:	0200      	lsls	r0, r0, #8
 80002ae:	f400 60e0 	and.w	r0, r0, #1792	; 0x700
 80002b2:	4318      	orrs	r0, r3
 80002b4:	f040 60bf 	orr.w	r0, r0, #100139008	; 0x5f80000
 80002b8:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
 80002bc:	60d0      	str	r0, [r2, #12]
 80002be:	4770      	bx	lr
 80002c0:	e000ed00 	.word	0xe000ed00

080002c4 <HAL_NVIC_SetPriority>:
 80002c4:	b430      	push	{r4, r5}
 80002c6:	4b16      	ldr	r3, [pc, #88]	; (8000320 <HAL_NVIC_SetPriority+0x5c>)
 80002c8:	68db      	ldr	r3, [r3, #12]
 80002ca:	f3c3 2302 	ubfx	r3, r3, #8, #3
 80002ce:	f1c3 0407 	rsb	r4, r3, #7
 80002d2:	2c04      	cmp	r4, #4
 80002d4:	bf28      	it	cs
 80002d6:	2404      	movcs	r4, #4
 80002d8:	1d1d      	adds	r5, r3, #4
 80002da:	2d06      	cmp	r5, #6
 80002dc:	d917      	bls.n	800030e <HAL_NVIC_SetPriority+0x4a>
 80002de:	3b03      	subs	r3, #3
 80002e0:	2501      	movs	r5, #1
 80002e2:	fa05 f404 	lsl.w	r4, r5, r4
 80002e6:	3c01      	subs	r4, #1
 80002e8:	4021      	ands	r1, r4
 80002ea:	4099      	lsls	r1, r3
 80002ec:	fa05 f303 	lsl.w	r3, r5, r3
 80002f0:	3b01      	subs	r3, #1
 80002f2:	4013      	ands	r3, r2
 80002f4:	4319      	orrs	r1, r3
 80002f6:	2800      	cmp	r0, #0
 80002f8:	db0b      	blt.n	8000312 <HAL_NVIC_SetPriority+0x4e>
 80002fa:	0109      	lsls	r1, r1, #4
 80002fc:	b2c9      	uxtb	r1, r1
 80002fe:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
 8000302:	f500 4061 	add.w	r0, r0, #57600	; 0xe100
 8000306:	f880 1300 	strb.w	r1, [r0, #768]	; 0x300
 800030a:	bc30      	pop	{r4, r5}
 800030c:	4770      	bx	lr
 800030e:	2300      	movs	r3, #0
 8000310:	e7e6      	b.n	80002e0 <HAL_NVIC_SetPriority+0x1c>
 8000312:	f000 000f 	and.w	r0, r0, #15
 8000316:	0109      	lsls	r1, r1, #4
 8000318:	b2c9      	uxtb	r1, r1
 800031a:	4b02      	ldr	r3, [pc, #8]	; (8000324 <HAL_NVIC_SetPriority+0x60>)
 800031c:	5419      	strb	r1, [r3, r0]
 800031e:	e7f4      	b.n	800030a <HAL_NVIC_SetPriority+0x46>
 8000320:	e000ed00 	.word	0xe000ed00
 8000324:	e000ed14 	.word	0xe000ed14

08000328 <HAL_SYSTICK_Config>:
 8000328:	3801      	subs	r0, #1
 800032a:	f1b0 7f80 	cmp.w	r0, #16777216	; 0x1000000
 800032e:	d20a      	bcs.n	8000346 <HAL_SYSTICK_Config+0x1e>
 8000330:	4b06      	ldr	r3, [pc, #24]	; (800034c <HAL_SYSTICK_Config+0x24>)
 8000332:	6058      	str	r0, [r3, #4]
 8000334:	21f0      	movs	r1, #240	; 0xf0
 8000336:	4a06      	ldr	r2, [pc, #24]	; (8000350 <HAL_SYSTICK_Config+0x28>)
 8000338:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 800033c:	2000      	movs	r0, #0
 800033e:	6098      	str	r0, [r3, #8]
 8000340:	2207      	movs	r2, #7
 8000342:	601a      	str	r2, [r3, #0]
 8000344:	4770      	bx	lr
 8000346:	2001      	movs	r0, #1
 8000348:	4770      	bx	lr
 800034a:	bf00      	nop
 800034c:	e000e010 	.word	0xe000e010
 8000350:	e000ed00 	.word	0xe000ed00

08000354 <HAL_SYSTICK_Callback>:
 8000354:	4770      	bx	lr

08000356 <HAL_SYSTICK_IRQHandler>:
 8000356:	b508      	push	{r3, lr}
 8000358:	f7ff fffc 	bl	8000354 <HAL_SYSTICK_Callback>
 800035c:	bd08      	pop	{r3, pc}
	...

08000360 <HAL_RCC_GetSysClockFreq>:
 8000360:	4b3b      	ldr	r3, [pc, #236]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000362:	689b      	ldr	r3, [r3, #8]
 8000364:	f013 0f0c 	tst.w	r3, #12
 8000368:	d01a      	beq.n	80003a0 <HAL_RCC_GetSysClockFreq+0x40>
 800036a:	4b39      	ldr	r3, [pc, #228]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 800036c:	689b      	ldr	r3, [r3, #8]
 800036e:	f003 030c 	and.w	r3, r3, #12
 8000372:	2b0c      	cmp	r3, #12
 8000374:	d00e      	beq.n	8000394 <HAL_RCC_GetSysClockFreq+0x34>
 8000376:	4b36      	ldr	r3, [pc, #216]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000378:	689b      	ldr	r3, [r3, #8]
 800037a:	f003 030c 	and.w	r3, r3, #12
 800037e:	2b04      	cmp	r3, #4
 8000380:	d02f      	beq.n	80003e2 <HAL_RCC_GetSysClockFreq+0x82>
 8000382:	4b33      	ldr	r3, [pc, #204]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000384:	689b      	ldr	r3, [r3, #8]
 8000386:	f003 030c 	and.w	r3, r3, #12
 800038a:	2b08      	cmp	r3, #8
 800038c:	d02c      	beq.n	80003e8 <HAL_RCC_GetSysClockFreq+0x88>
 800038e:	2000      	movs	r0, #0
 8000390:	4601      	mov	r1, r0
 8000392:	e018      	b.n	80003c6 <HAL_RCC_GetSysClockFreq+0x66>
 8000394:	4b2e      	ldr	r3, [pc, #184]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000396:	68db      	ldr	r3, [r3, #12]
 8000398:	f003 0303 	and.w	r3, r3, #3
 800039c:	2b01      	cmp	r3, #1
 800039e:	d1ea      	bne.n	8000376 <HAL_RCC_GetSysClockFreq+0x16>
 80003a0:	4b2b      	ldr	r3, [pc, #172]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 80003a2:	681b      	ldr	r3, [r3, #0]
 80003a4:	f013 0f08 	tst.w	r3, #8
 80003a8:	d114      	bne.n	80003d4 <HAL_RCC_GetSysClockFreq+0x74>
 80003aa:	4b29      	ldr	r3, [pc, #164]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 80003ac:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80003b0:	f3c3 2303 	ubfx	r3, r3, #8, #4
 80003b4:	4a27      	ldr	r2, [pc, #156]	; (8000454 <HAL_RCC_GetSysClockFreq+0xf4>)
 80003b6:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 80003ba:	4b25      	ldr	r3, [pc, #148]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 80003bc:	689b      	ldr	r3, [r3, #8]
 80003be:	f013 0f0c 	tst.w	r3, #12
 80003c2:	d00c      	beq.n	80003de <HAL_RCC_GetSysClockFreq+0x7e>
 80003c4:	2000      	movs	r0, #0
 80003c6:	4a22      	ldr	r2, [pc, #136]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 80003c8:	6893      	ldr	r3, [r2, #8]
 80003ca:	f003 030c 	and.w	r3, r3, #12
 80003ce:	2b0c      	cmp	r3, #12
 80003d0:	d00d      	beq.n	80003ee <HAL_RCC_GetSysClockFreq+0x8e>
 80003d2:	4770      	bx	lr
 80003d4:	4b1e      	ldr	r3, [pc, #120]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 80003d6:	681b      	ldr	r3, [r3, #0]
 80003d8:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80003dc:	e7ea      	b.n	80003b4 <HAL_RCC_GetSysClockFreq+0x54>
 80003de:	4608      	mov	r0, r1
 80003e0:	e7f1      	b.n	80003c6 <HAL_RCC_GetSysClockFreq+0x66>
 80003e2:	481d      	ldr	r0, [pc, #116]	; (8000458 <HAL_RCC_GetSysClockFreq+0xf8>)
 80003e4:	2100      	movs	r1, #0
 80003e6:	e7ee      	b.n	80003c6 <HAL_RCC_GetSysClockFreq+0x66>
 80003e8:	481c      	ldr	r0, [pc, #112]	; (800045c <HAL_RCC_GetSysClockFreq+0xfc>)
 80003ea:	2100      	movs	r1, #0
 80003ec:	e7eb      	b.n	80003c6 <HAL_RCC_GetSysClockFreq+0x66>
 80003ee:	4613      	mov	r3, r2
 80003f0:	68d2      	ldr	r2, [r2, #12]
 80003f2:	f002 0203 	and.w	r2, r2, #3
 80003f6:	68db      	ldr	r3, [r3, #12]
 80003f8:	f3c3 1302 	ubfx	r3, r3, #4, #3
 80003fc:	3301      	adds	r3, #1
 80003fe:	2a02      	cmp	r2, #2
 8000400:	d00a      	beq.n	8000418 <HAL_RCC_GetSysClockFreq+0xb8>
 8000402:	2a03      	cmp	r2, #3
 8000404:	d01a      	beq.n	800043c <HAL_RCC_GetSysClockFreq+0xdc>
 8000406:	fbb1 f3f3 	udiv	r3, r1, r3
 800040a:	4a11      	ldr	r2, [pc, #68]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 800040c:	68d0      	ldr	r0, [r2, #12]
 800040e:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8000412:	fb00 f003 	mul.w	r0, r0, r3
 8000416:	e008      	b.n	800042a <HAL_RCC_GetSysClockFreq+0xca>
 8000418:	480f      	ldr	r0, [pc, #60]	; (8000458 <HAL_RCC_GetSysClockFreq+0xf8>)
 800041a:	fbb0 f3f3 	udiv	r3, r0, r3
 800041e:	4a0c      	ldr	r2, [pc, #48]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000420:	68d0      	ldr	r0, [r2, #12]
 8000422:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8000426:	fb00 f003 	mul.w	r0, r0, r3
 800042a:	4b09      	ldr	r3, [pc, #36]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 800042c:	68db      	ldr	r3, [r3, #12]
 800042e:	f3c3 6341 	ubfx	r3, r3, #25, #2
 8000432:	3301      	adds	r3, #1
 8000434:	005b      	lsls	r3, r3, #1
 8000436:	fbb0 f0f3 	udiv	r0, r0, r3
 800043a:	e7ca      	b.n	80003d2 <HAL_RCC_GetSysClockFreq+0x72>
 800043c:	4807      	ldr	r0, [pc, #28]	; (800045c <HAL_RCC_GetSysClockFreq+0xfc>)
 800043e:	fbb0 f3f3 	udiv	r3, r0, r3
 8000442:	4a03      	ldr	r2, [pc, #12]	; (8000450 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000444:	68d0      	ldr	r0, [r2, #12]
 8000446:	f3c0 2006 	ubfx	r0, r0, #8, #7
 800044a:	fb00 f003 	mul.w	r0, r0, r3
 800044e:	e7ec      	b.n	800042a <HAL_RCC_GetSysClockFreq+0xca>
 8000450:	40021000 	.word	0x40021000
 8000454:	08003df8 	.word	0x08003df8
 8000458:	00f42400 	.word	0x00f42400
 800045c:	007a1200 	.word	0x007a1200

08000460 <HAL_RCC_GetHCLKFreq>:
 8000460:	4b01      	ldr	r3, [pc, #4]	; (8000468 <HAL_RCC_GetHCLKFreq+0x8>)
 8000462:	6818      	ldr	r0, [r3, #0]
 8000464:	4770      	bx	lr
 8000466:	bf00      	nop
 8000468:	20000000 	.word	0x20000000

0800046c <HAL_RCC_GetPCLK1Freq>:
 800046c:	b508      	push	{r3, lr}
 800046e:	f7ff fff7 	bl	8000460 <HAL_RCC_GetHCLKFreq>
 8000472:	4b04      	ldr	r3, [pc, #16]	; (8000484 <HAL_RCC_GetPCLK1Freq+0x18>)
 8000474:	689b      	ldr	r3, [r3, #8]
 8000476:	f3c3 2302 	ubfx	r3, r3, #8, #3
 800047a:	4a03      	ldr	r2, [pc, #12]	; (8000488 <HAL_RCC_GetPCLK1Freq+0x1c>)
 800047c:	5cd3      	ldrb	r3, [r2, r3]
 800047e:	40d8      	lsrs	r0, r3
 8000480:	bd08      	pop	{r3, pc}
 8000482:	bf00      	nop
 8000484:	40021000 	.word	0x40021000
 8000488:	08003df0 	.word	0x08003df0

0800048c <HAL_RCC_GetPCLK2Freq>:
 800048c:	b508      	push	{r3, lr}
 800048e:	f7ff ffe7 	bl	8000460 <HAL_RCC_GetHCLKFreq>
 8000492:	4b04      	ldr	r3, [pc, #16]	; (80004a4 <HAL_RCC_GetPCLK2Freq+0x18>)
 8000494:	689b      	ldr	r3, [r3, #8]
 8000496:	f3c3 23c2 	ubfx	r3, r3, #11, #3
 800049a:	4a03      	ldr	r2, [pc, #12]	; (80004a8 <HAL_RCC_GetPCLK2Freq+0x1c>)
 800049c:	5cd3      	ldrb	r3, [r2, r3]
 800049e:	40d8      	lsrs	r0, r3
 80004a0:	bd08      	pop	{r3, pc}
 80004a2:	bf00      	nop
 80004a4:	40021000 	.word	0x40021000
 80004a8:	08003df0 	.word	0x08003df0

080004ac <HAL_MspInit>:
 80004ac:	b500      	push	{lr}
 80004ae:	b083      	sub	sp, #12
 80004b0:	4b21      	ldr	r3, [pc, #132]	; (8000538 <HAL_MspInit+0x8c>)
 80004b2:	6e1a      	ldr	r2, [r3, #96]	; 0x60
 80004b4:	f042 0201 	orr.w	r2, r2, #1
 80004b8:	661a      	str	r2, [r3, #96]	; 0x60
 80004ba:	6e1a      	ldr	r2, [r3, #96]	; 0x60
 80004bc:	f002 0201 	and.w	r2, r2, #1
 80004c0:	9200      	str	r2, [sp, #0]
 80004c2:	9a00      	ldr	r2, [sp, #0]
 80004c4:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 80004c6:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 80004ca:	659a      	str	r2, [r3, #88]	; 0x58
 80004cc:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80004ce:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 80004d2:	9301      	str	r3, [sp, #4]
 80004d4:	9b01      	ldr	r3, [sp, #4]
 80004d6:	2003      	movs	r0, #3
 80004d8:	f7ff fee2 	bl	80002a0 <HAL_NVIC_SetPriorityGrouping>
 80004dc:	2200      	movs	r2, #0
 80004de:	4611      	mov	r1, r2
 80004e0:	f06f 000b 	mvn.w	r0, #11
 80004e4:	f7ff feee 	bl	80002c4 <HAL_NVIC_SetPriority>
 80004e8:	2200      	movs	r2, #0
 80004ea:	4611      	mov	r1, r2
 80004ec:	f06f 000a 	mvn.w	r0, #10
 80004f0:	f7ff fee8 	bl	80002c4 <HAL_NVIC_SetPriority>
 80004f4:	2200      	movs	r2, #0
 80004f6:	4611      	mov	r1, r2
 80004f8:	f06f 0009 	mvn.w	r0, #9
 80004fc:	f7ff fee2 	bl	80002c4 <HAL_NVIC_SetPriority>
 8000500:	2200      	movs	r2, #0
 8000502:	4611      	mov	r1, r2
 8000504:	f06f 0004 	mvn.w	r0, #4
 8000508:	f7ff fedc 	bl	80002c4 <HAL_NVIC_SetPriority>
 800050c:	2200      	movs	r2, #0
 800050e:	4611      	mov	r1, r2
 8000510:	f06f 0003 	mvn.w	r0, #3
 8000514:	f7ff fed6 	bl	80002c4 <HAL_NVIC_SetPriority>
 8000518:	2200      	movs	r2, #0
 800051a:	4611      	mov	r1, r2
 800051c:	f06f 0001 	mvn.w	r0, #1
 8000520:	f7ff fed0 	bl	80002c4 <HAL_NVIC_SetPriority>
 8000524:	2200      	movs	r2, #0
 8000526:	4611      	mov	r1, r2
 8000528:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800052c:	f7ff feca 	bl	80002c4 <HAL_NVIC_SetPriority>
 8000530:	b003      	add	sp, #12
 8000532:	f85d fb04 	ldr.w	pc, [sp], #4
 8000536:	bf00      	nop
 8000538:	40021000 	.word	0x40021000

0800053c <HAL_SAI_MspInit>:
 800053c:	6802      	ldr	r2, [r0, #0]
 800053e:	4b13      	ldr	r3, [pc, #76]	; (800058c <HAL_SAI_MspInit+0x50>)
 8000540:	429a      	cmp	r2, r3
 8000542:	d000      	beq.n	8000546 <HAL_SAI_MspInit+0xa>
 8000544:	4770      	bx	lr
 8000546:	b500      	push	{lr}
 8000548:	b087      	sub	sp, #28
 800054a:	4b11      	ldr	r3, [pc, #68]	; (8000590 <HAL_SAI_MspInit+0x54>)
 800054c:	681b      	ldr	r3, [r3, #0]
 800054e:	b94b      	cbnz	r3, 8000564 <HAL_SAI_MspInit+0x28>
 8000550:	4a10      	ldr	r2, [pc, #64]	; (8000594 <HAL_SAI_MspInit+0x58>)
 8000552:	6e11      	ldr	r1, [r2, #96]	; 0x60
 8000554:	f441 1100 	orr.w	r1, r1, #2097152	; 0x200000
 8000558:	6611      	str	r1, [r2, #96]	; 0x60
 800055a:	6e12      	ldr	r2, [r2, #96]	; 0x60
 800055c:	f402 1200 	and.w	r2, r2, #2097152	; 0x200000
 8000560:	9200      	str	r2, [sp, #0]
 8000562:	9a00      	ldr	r2, [sp, #0]
 8000564:	3301      	adds	r3, #1
 8000566:	4a0a      	ldr	r2, [pc, #40]	; (8000590 <HAL_SAI_MspInit+0x54>)
 8000568:	6013      	str	r3, [r2, #0]
 800056a:	2378      	movs	r3, #120	; 0x78
 800056c:	9301      	str	r3, [sp, #4]
 800056e:	2302      	movs	r3, #2
 8000570:	9302      	str	r3, [sp, #8]
 8000572:	2300      	movs	r3, #0
 8000574:	9303      	str	r3, [sp, #12]
 8000576:	9304      	str	r3, [sp, #16]
 8000578:	230d      	movs	r3, #13
 800057a:	9305      	str	r3, [sp, #20]
 800057c:	a901      	add	r1, sp, #4
 800057e:	4806      	ldr	r0, [pc, #24]	; (8000598 <HAL_SAI_MspInit+0x5c>)
 8000580:	f000 ffb2 	bl	80014e8 <HAL_GPIO_Init>
 8000584:	b007      	add	sp, #28
 8000586:	f85d fb04 	ldr.w	pc, [sp], #4
 800058a:	bf00      	nop
 800058c:	40015424 	.word	0x40015424
 8000590:	2000008c 	.word	0x2000008c
 8000594:	40021000 	.word	0x40021000
 8000598:	48000400 	.word	0x48000400

0800059c <SystemInit>:
 800059c:	490f      	ldr	r1, [pc, #60]	; (80005dc <SystemInit+0x40>)
 800059e:	f8d1 3088 	ldr.w	r3, [r1, #136]	; 0x88
 80005a2:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80005a6:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 80005aa:	4b0d      	ldr	r3, [pc, #52]	; (80005e0 <SystemInit+0x44>)
 80005ac:	681a      	ldr	r2, [r3, #0]
 80005ae:	f042 0201 	orr.w	r2, r2, #1
 80005b2:	601a      	str	r2, [r3, #0]
 80005b4:	2000      	movs	r0, #0
 80005b6:	6098      	str	r0, [r3, #8]
 80005b8:	681a      	ldr	r2, [r3, #0]
 80005ba:	f022 52a8 	bic.w	r2, r2, #352321536	; 0x15000000
 80005be:	f422 2210 	bic.w	r2, r2, #589824	; 0x90000
 80005c2:	601a      	str	r2, [r3, #0]
 80005c4:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80005c8:	60da      	str	r2, [r3, #12]
 80005ca:	681a      	ldr	r2, [r3, #0]
 80005cc:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80005d0:	601a      	str	r2, [r3, #0]
 80005d2:	6198      	str	r0, [r3, #24]
 80005d4:	f04f 6300 	mov.w	r3, #134217728	; 0x8000000
 80005d8:	608b      	str	r3, [r1, #8]
 80005da:	4770      	bx	lr
 80005dc:	e000ed00 	.word	0xe000ed00
 80005e0:	40021000 	.word	0x40021000

080005e4 <MX_GPIO_Init>:
 80005e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80005e8:	b08d      	sub	sp, #52	; 0x34
 80005ea:	4b3f      	ldr	r3, [pc, #252]	; (80006e8 <MX_GPIO_Init+0x104>)
 80005ec:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 80005ee:	f042 0204 	orr.w	r2, r2, #4
 80005f2:	64da      	str	r2, [r3, #76]	; 0x4c
 80005f4:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 80005f6:	f002 0204 	and.w	r2, r2, #4
 80005fa:	9205      	str	r2, [sp, #20]
 80005fc:	9a05      	ldr	r2, [sp, #20]
 80005fe:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 8000600:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000604:	64da      	str	r2, [r3, #76]	; 0x4c
 8000606:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 8000608:	f002 0280 	and.w	r2, r2, #128	; 0x80
 800060c:	9204      	str	r2, [sp, #16]
 800060e:	9a04      	ldr	r2, [sp, #16]
 8000610:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 8000612:	f042 0201 	orr.w	r2, r2, #1
 8000616:	64da      	str	r2, [r3, #76]	; 0x4c
 8000618:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 800061a:	f002 0201 	and.w	r2, r2, #1
 800061e:	9203      	str	r2, [sp, #12]
 8000620:	9a03      	ldr	r2, [sp, #12]
 8000622:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 8000624:	f042 0202 	orr.w	r2, r2, #2
 8000628:	64da      	str	r2, [r3, #76]	; 0x4c
 800062a:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 800062c:	f002 0202 	and.w	r2, r2, #2
 8000630:	9202      	str	r2, [sp, #8]
 8000632:	9a02      	ldr	r2, [sp, #8]
 8000634:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 8000636:	f042 0208 	orr.w	r2, r2, #8
 800063a:	64da      	str	r2, [r3, #76]	; 0x4c
 800063c:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800063e:	f003 0308 	and.w	r3, r3, #8
 8000642:	9301      	str	r3, [sp, #4]
 8000644:	9b01      	ldr	r3, [sp, #4]
 8000646:	4e29      	ldr	r6, [pc, #164]	; (80006ec <MX_GPIO_Init+0x108>)
 8000648:	f44f 437f 	mov.w	r3, #65280	; 0xff00
 800064c:	62b3      	str	r3, [r6, #40]	; 0x28
 800064e:	f8df a0a8 	ldr.w	sl, [pc, #168]	; 80006f8 <MX_GPIO_Init+0x114>
 8000652:	f04f 0b03 	mov.w	fp, #3
 8000656:	f8ca b028 	str.w	fp, [sl, #40]	; 0x28
 800065a:	f04f 0906 	mov.w	r9, #6
 800065e:	4a24      	ldr	r2, [pc, #144]	; (80006f0 <MX_GPIO_Init+0x10c>)
 8000660:	f8c2 9028 	str.w	r9, [r2, #40]	; 0x28
 8000664:	f04f 4890 	mov.w	r8, #1207959552	; 0x48000000
 8000668:	f44f 4750 	mov.w	r7, #53248	; 0xd000
 800066c:	f8c8 7028 	str.w	r7, [r8, #40]	; 0x28
 8000670:	9306      	str	r3, [sp, #24]
 8000672:	2501      	movs	r5, #1
 8000674:	9507      	str	r5, [sp, #28]
 8000676:	2400      	movs	r4, #0
 8000678:	9408      	str	r4, [sp, #32]
 800067a:	9409      	str	r4, [sp, #36]	; 0x24
 800067c:	940a      	str	r4, [sp, #40]	; 0x28
 800067e:	a906      	add	r1, sp, #24
 8000680:	4630      	mov	r0, r6
 8000682:	f001 fc23 	bl	8001ecc <LL_GPIO_Init>
 8000686:	f8cd b018 	str.w	fp, [sp, #24]
 800068a:	9507      	str	r5, [sp, #28]
 800068c:	9408      	str	r4, [sp, #32]
 800068e:	9409      	str	r4, [sp, #36]	; 0x24
 8000690:	940a      	str	r4, [sp, #40]	; 0x28
 8000692:	a906      	add	r1, sp, #24
 8000694:	4650      	mov	r0, sl
 8000696:	f001 fc19 	bl	8001ecc <LL_GPIO_Init>
 800069a:	23fe      	movs	r3, #254	; 0xfe
 800069c:	9306      	str	r3, [sp, #24]
 800069e:	9407      	str	r4, [sp, #28]
 80006a0:	950a      	str	r5, [sp, #40]	; 0x28
 80006a2:	a906      	add	r1, sp, #24
 80006a4:	4630      	mov	r0, r6
 80006a6:	f001 fc11 	bl	8001ecc <LL_GPIO_Init>
 80006aa:	f8cd 9018 	str.w	r9, [sp, #24]
 80006ae:	9507      	str	r5, [sp, #28]
 80006b0:	9408      	str	r4, [sp, #32]
 80006b2:	9409      	str	r4, [sp, #36]	; 0x24
 80006b4:	940a      	str	r4, [sp, #40]	; 0x28
 80006b6:	a906      	add	r1, sp, #24
 80006b8:	480d      	ldr	r0, [pc, #52]	; (80006f0 <MX_GPIO_Init+0x10c>)
 80006ba:	f001 fc07 	bl	8001ecc <LL_GPIO_Init>
 80006be:	9706      	str	r7, [sp, #24]
 80006c0:	9507      	str	r5, [sp, #28]
 80006c2:	9408      	str	r4, [sp, #32]
 80006c4:	9409      	str	r4, [sp, #36]	; 0x24
 80006c6:	940a      	str	r4, [sp, #40]	; 0x28
 80006c8:	a906      	add	r1, sp, #24
 80006ca:	4640      	mov	r0, r8
 80006cc:	f001 fbfe 	bl	8001ecc <LL_GPIO_Init>
 80006d0:	2304      	movs	r3, #4
 80006d2:	9306      	str	r3, [sp, #24]
 80006d4:	9407      	str	r4, [sp, #28]
 80006d6:	950a      	str	r5, [sp, #40]	; 0x28
 80006d8:	a906      	add	r1, sp, #24
 80006da:	4806      	ldr	r0, [pc, #24]	; (80006f4 <MX_GPIO_Init+0x110>)
 80006dc:	f001 fbf6 	bl	8001ecc <LL_GPIO_Init>
 80006e0:	b00d      	add	sp, #52	; 0x34
 80006e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80006e6:	bf00      	nop
 80006e8:	40021000 	.word	0x40021000
 80006ec:	48000800 	.word	0x48000800
 80006f0:	48000400 	.word	0x48000400
 80006f4:	48000c00 	.word	0x48000c00
 80006f8:	48001c00 	.word	0x48001c00

080006fc <MX_LPTIM1_Init>:
 80006fc:	b570      	push	{r4, r5, r6, lr}
 80006fe:	b088      	sub	sp, #32
 8000700:	4b22      	ldr	r3, [pc, #136]	; (800078c <MX_LPTIM1_Init+0x90>)
 8000702:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 8000704:	f042 4200 	orr.w	r2, r2, #2147483648	; 0x80000000
 8000708:	659a      	str	r2, [r3, #88]	; 0x58
 800070a:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 800070c:	f003 4300 	and.w	r3, r3, #2147483648	; 0x80000000
 8000710:	9301      	str	r3, [sp, #4]
 8000712:	9b01      	ldr	r3, [sp, #4]
 8000714:	2601      	movs	r6, #1
 8000716:	9602      	str	r6, [sp, #8]
 8000718:	2502      	movs	r5, #2
 800071a:	9503      	str	r5, [sp, #12]
 800071c:	2400      	movs	r4, #0
 800071e:	9404      	str	r4, [sp, #16]
 8000720:	9405      	str	r4, [sp, #20]
 8000722:	9406      	str	r4, [sp, #24]
 8000724:	9607      	str	r6, [sp, #28]
 8000726:	a902      	add	r1, sp, #8
 8000728:	4819      	ldr	r0, [pc, #100]	; (8000790 <MX_LPTIM1_Init+0x94>)
 800072a:	f001 fbcf 	bl	8001ecc <LL_GPIO_Init>
 800072e:	2380      	movs	r3, #128	; 0x80
 8000730:	9302      	str	r3, [sp, #8]
 8000732:	9503      	str	r5, [sp, #12]
 8000734:	9404      	str	r4, [sp, #16]
 8000736:	9405      	str	r4, [sp, #20]
 8000738:	9406      	str	r4, [sp, #24]
 800073a:	9607      	str	r6, [sp, #28]
 800073c:	a902      	add	r1, sp, #8
 800073e:	4815      	ldr	r0, [pc, #84]	; (8000794 <MX_LPTIM1_Init+0x98>)
 8000740:	f001 fbc4 	bl	8001ecc <LL_GPIO_Init>
 8000744:	4b14      	ldr	r3, [pc, #80]	; (8000798 <MX_LPTIM1_Init+0x9c>)
 8000746:	68db      	ldr	r3, [r3, #12]
 8000748:	4b14      	ldr	r3, [pc, #80]	; (800079c <MX_LPTIM1_Init+0xa0>)
 800074a:	f883 4341 	strb.w	r4, [r3, #833]	; 0x341
 800074e:	609d      	str	r5, [r3, #8]
 8000750:	4b13      	ldr	r3, [pc, #76]	; (80007a0 <MX_LPTIM1_Init+0xa4>)
 8000752:	68da      	ldr	r2, [r3, #12]
 8000754:	f022 0201 	bic.w	r2, r2, #1
 8000758:	60da      	str	r2, [r3, #12]
 800075a:	68da      	ldr	r2, [r3, #12]
 800075c:	f422 6260 	bic.w	r2, r2, #3584	; 0xe00
 8000760:	60da      	str	r2, [r3, #12]
 8000762:	68da      	ldr	r2, [r3, #12]
 8000764:	f422 1200 	bic.w	r2, r2, #2097152	; 0x200000
 8000768:	60da      	str	r2, [r3, #12]
 800076a:	68da      	ldr	r2, [r3, #12]
 800076c:	f422 0280 	bic.w	r2, r2, #4194304	; 0x400000
 8000770:	60da      	str	r2, [r3, #12]
 8000772:	68da      	ldr	r2, [r3, #12]
 8000774:	f442 0200 	orr.w	r2, r2, #8388608	; 0x800000
 8000778:	60da      	str	r2, [r3, #12]
 800077a:	68da      	ldr	r2, [r3, #12]
 800077c:	f422 22c0 	bic.w	r2, r2, #393216	; 0x60000
 8000780:	60da      	str	r2, [r3, #12]
 8000782:	621c      	str	r4, [r3, #32]
 8000784:	621c      	str	r4, [r3, #32]
 8000786:	b008      	add	sp, #32
 8000788:	bd70      	pop	{r4, r5, r6, pc}
 800078a:	bf00      	nop
 800078c:	40021000 	.word	0x40021000
 8000790:	48000800 	.word	0x48000800
 8000794:	48000400 	.word	0x48000400
 8000798:	e000ed00 	.word	0xe000ed00
 800079c:	e000e100 	.word	0xe000e100
 80007a0:	40007c00 	.word	0x40007c00

080007a4 <MX_TIM1_Init>:
 80007a4:	b510      	push	{r4, lr}
 80007a6:	b08c      	sub	sp, #48	; 0x30
 80007a8:	4b29      	ldr	r3, [pc, #164]	; (8000850 <MX_TIM1_Init+0xac>)
 80007aa:	6e1a      	ldr	r2, [r3, #96]	; 0x60
 80007ac:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 80007b0:	661a      	str	r2, [r3, #96]	; 0x60
 80007b2:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 80007b4:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 80007b8:	9300      	str	r3, [sp, #0]
 80007ba:	9b00      	ldr	r3, [sp, #0]
 80007bc:	f44f 7340 	mov.w	r3, #768	; 0x300
 80007c0:	9301      	str	r3, [sp, #4]
 80007c2:	2302      	movs	r3, #2
 80007c4:	9302      	str	r3, [sp, #8]
 80007c6:	2400      	movs	r4, #0
 80007c8:	9403      	str	r4, [sp, #12]
 80007ca:	9404      	str	r4, [sp, #16]
 80007cc:	9405      	str	r4, [sp, #20]
 80007ce:	2301      	movs	r3, #1
 80007d0:	9306      	str	r3, [sp, #24]
 80007d2:	a901      	add	r1, sp, #4
 80007d4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80007d8:	f001 fb78 	bl	8001ecc <LL_GPIO_Init>
 80007dc:	f8ad 401c 	strh.w	r4, [sp, #28]
 80007e0:	9408      	str	r4, [sp, #32]
 80007e2:	9409      	str	r4, [sp, #36]	; 0x24
 80007e4:	940a      	str	r4, [sp, #40]	; 0x28
 80007e6:	f88d 402c 	strb.w	r4, [sp, #44]	; 0x2c
 80007ea:	4c1a      	ldr	r4, [pc, #104]	; (8000854 <MX_TIM1_Init+0xb0>)
 80007ec:	a907      	add	r1, sp, #28
 80007ee:	4620      	mov	r0, r4
 80007f0:	f002 f876 	bl	80028e0 <LL_TIM_Init>
 80007f4:	6823      	ldr	r3, [r4, #0]
 80007f6:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80007fa:	6023      	str	r3, [r4, #0]
 80007fc:	68a3      	ldr	r3, [r4, #8]
 80007fe:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000802:	f023 0307 	bic.w	r3, r3, #7
 8000806:	f043 0301 	orr.w	r3, r3, #1
 800080a:	60a3      	str	r3, [r4, #8]
 800080c:	69a3      	ldr	r3, [r4, #24]
 800080e:	f023 0303 	bic.w	r3, r3, #3
 8000812:	f043 0301 	orr.w	r3, r3, #1
 8000816:	6a22      	ldr	r2, [r4, #32]
 8000818:	f022 020a 	bic.w	r2, r2, #10
 800081c:	6222      	str	r2, [r4, #32]
 800081e:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8000822:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8000826:	f423 437c 	bic.w	r3, r3, #64512	; 0xfc00
 800082a:	61a3      	str	r3, [r4, #24]
 800082c:	6a23      	ldr	r3, [r4, #32]
 800082e:	f023 03a0 	bic.w	r3, r3, #160	; 0xa0
 8000832:	6223      	str	r3, [r4, #32]
 8000834:	6863      	ldr	r3, [r4, #4]
 8000836:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800083a:	6063      	str	r3, [r4, #4]
 800083c:	6863      	ldr	r3, [r4, #4]
 800083e:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 8000842:	6063      	str	r3, [r4, #4]
 8000844:	68a3      	ldr	r3, [r4, #8]
 8000846:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800084a:	60a3      	str	r3, [r4, #8]
 800084c:	b00c      	add	sp, #48	; 0x30
 800084e:	bd10      	pop	{r4, pc}
 8000850:	40021000 	.word	0x40021000
 8000854:	40012c00 	.word	0x40012c00

08000858 <MX_TIM2_Init>:
 8000858:	b510      	push	{r4, lr}
 800085a:	b08c      	sub	sp, #48	; 0x30
 800085c:	4b2b      	ldr	r3, [pc, #172]	; (800090c <MX_TIM2_Init+0xb4>)
 800085e:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 8000860:	f042 0201 	orr.w	r2, r2, #1
 8000864:	659a      	str	r2, [r3, #88]	; 0x58
 8000866:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000868:	f003 0301 	and.w	r3, r3, #1
 800086c:	9300      	str	r3, [sp, #0]
 800086e:	9b00      	ldr	r3, [sp, #0]
 8000870:	2303      	movs	r3, #3
 8000872:	9301      	str	r3, [sp, #4]
 8000874:	2302      	movs	r3, #2
 8000876:	9302      	str	r3, [sp, #8]
 8000878:	2400      	movs	r4, #0
 800087a:	9403      	str	r4, [sp, #12]
 800087c:	9404      	str	r4, [sp, #16]
 800087e:	9405      	str	r4, [sp, #20]
 8000880:	2301      	movs	r3, #1
 8000882:	9306      	str	r3, [sp, #24]
 8000884:	a901      	add	r1, sp, #4
 8000886:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800088a:	f001 fb1f 	bl	8001ecc <LL_GPIO_Init>
 800088e:	4b20      	ldr	r3, [pc, #128]	; (8000910 <MX_TIM2_Init+0xb8>)
 8000890:	68db      	ldr	r3, [r3, #12]
 8000892:	4b20      	ldr	r3, [pc, #128]	; (8000914 <MX_TIM2_Init+0xbc>)
 8000894:	f883 431c 	strb.w	r4, [r3, #796]	; 0x31c
 8000898:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800089c:	601a      	str	r2, [r3, #0]
 800089e:	f8ad 401c 	strh.w	r4, [sp, #28]
 80008a2:	9408      	str	r4, [sp, #32]
 80008a4:	9409      	str	r4, [sp, #36]	; 0x24
 80008a6:	940a      	str	r4, [sp, #40]	; 0x28
 80008a8:	a907      	add	r1, sp, #28
 80008aa:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80008ae:	f002 f817 	bl	80028e0 <LL_TIM_Init>
 80008b2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80008b6:	681a      	ldr	r2, [r3, #0]
 80008b8:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 80008bc:	601a      	str	r2, [r3, #0]
 80008be:	689a      	ldr	r2, [r3, #8]
 80008c0:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80008c4:	f022 0207 	bic.w	r2, r2, #7
 80008c8:	f042 0201 	orr.w	r2, r2, #1
 80008cc:	609a      	str	r2, [r3, #8]
 80008ce:	699a      	ldr	r2, [r3, #24]
 80008d0:	f022 0203 	bic.w	r2, r2, #3
 80008d4:	f042 0201 	orr.w	r2, r2, #1
 80008d8:	6a19      	ldr	r1, [r3, #32]
 80008da:	f021 010a 	bic.w	r1, r1, #10
 80008de:	6219      	str	r1, [r3, #32]
 80008e0:	f422 727f 	bic.w	r2, r2, #1020	; 0x3fc
 80008e4:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80008e8:	f422 427c 	bic.w	r2, r2, #64512	; 0xfc00
 80008ec:	619a      	str	r2, [r3, #24]
 80008ee:	6a1a      	ldr	r2, [r3, #32]
 80008f0:	f022 02a0 	bic.w	r2, r2, #160	; 0xa0
 80008f4:	621a      	str	r2, [r3, #32]
 80008f6:	685a      	ldr	r2, [r3, #4]
 80008f8:	f022 0270 	bic.w	r2, r2, #112	; 0x70
 80008fc:	605a      	str	r2, [r3, #4]
 80008fe:	689a      	ldr	r2, [r3, #8]
 8000900:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8000904:	609a      	str	r2, [r3, #8]
 8000906:	b00c      	add	sp, #48	; 0x30
 8000908:	bd10      	pop	{r4, pc}
 800090a:	bf00      	nop
 800090c:	40021000 	.word	0x40021000
 8000910:	e000ed00 	.word	0xe000ed00
 8000914:	e000e100 	.word	0xe000e100

08000918 <MX_TIM3_Init>:
 8000918:	b510      	push	{r4, lr}
 800091a:	b08c      	sub	sp, #48	; 0x30
 800091c:	4b29      	ldr	r3, [pc, #164]	; (80009c4 <MX_TIM3_Init+0xac>)
 800091e:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 8000920:	f042 0202 	orr.w	r2, r2, #2
 8000924:	659a      	str	r2, [r3, #88]	; 0x58
 8000926:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000928:	f003 0302 	and.w	r3, r3, #2
 800092c:	9300      	str	r3, [sp, #0]
 800092e:	9b00      	ldr	r3, [sp, #0]
 8000930:	23c0      	movs	r3, #192	; 0xc0
 8000932:	9301      	str	r3, [sp, #4]
 8000934:	2302      	movs	r3, #2
 8000936:	9302      	str	r3, [sp, #8]
 8000938:	2400      	movs	r4, #0
 800093a:	9403      	str	r4, [sp, #12]
 800093c:	9404      	str	r4, [sp, #16]
 800093e:	9405      	str	r4, [sp, #20]
 8000940:	9306      	str	r3, [sp, #24]
 8000942:	a901      	add	r1, sp, #4
 8000944:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000948:	f001 fac0 	bl	8001ecc <LL_GPIO_Init>
 800094c:	4b1e      	ldr	r3, [pc, #120]	; (80009c8 <MX_TIM3_Init+0xb0>)
 800094e:	68db      	ldr	r3, [r3, #12]
 8000950:	4b1e      	ldr	r3, [pc, #120]	; (80009cc <MX_TIM3_Init+0xb4>)
 8000952:	f883 431d 	strb.w	r4, [r3, #797]	; 0x31d
 8000956:	f04f 5200 	mov.w	r2, #536870912	; 0x20000000
 800095a:	601a      	str	r2, [r3, #0]
 800095c:	f8ad 401c 	strh.w	r4, [sp, #28]
 8000960:	9408      	str	r4, [sp, #32]
 8000962:	9409      	str	r4, [sp, #36]	; 0x24
 8000964:	940a      	str	r4, [sp, #40]	; 0x28
 8000966:	4c1a      	ldr	r4, [pc, #104]	; (80009d0 <MX_TIM3_Init+0xb8>)
 8000968:	a907      	add	r1, sp, #28
 800096a:	4620      	mov	r0, r4
 800096c:	f001 ffb8 	bl	80028e0 <LL_TIM_Init>
 8000970:	6823      	ldr	r3, [r4, #0]
 8000972:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000976:	6023      	str	r3, [r4, #0]
 8000978:	68a3      	ldr	r3, [r4, #8]
 800097a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 800097e:	f023 0307 	bic.w	r3, r3, #7
 8000982:	f043 0301 	orr.w	r3, r3, #1
 8000986:	60a3      	str	r3, [r4, #8]
 8000988:	69a3      	ldr	r3, [r4, #24]
 800098a:	f023 0303 	bic.w	r3, r3, #3
 800098e:	f043 0301 	orr.w	r3, r3, #1
 8000992:	6a22      	ldr	r2, [r4, #32]
 8000994:	f022 020a 	bic.w	r2, r2, #10
 8000998:	6222      	str	r2, [r4, #32]
 800099a:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 800099e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80009a2:	f423 437c 	bic.w	r3, r3, #64512	; 0xfc00
 80009a6:	61a3      	str	r3, [r4, #24]
 80009a8:	6a23      	ldr	r3, [r4, #32]
 80009aa:	f023 03a0 	bic.w	r3, r3, #160	; 0xa0
 80009ae:	6223      	str	r3, [r4, #32]
 80009b0:	6863      	ldr	r3, [r4, #4]
 80009b2:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80009b6:	6063      	str	r3, [r4, #4]
 80009b8:	68a3      	ldr	r3, [r4, #8]
 80009ba:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80009be:	60a3      	str	r3, [r4, #8]
 80009c0:	b00c      	add	sp, #48	; 0x30
 80009c2:	bd10      	pop	{r4, pc}
 80009c4:	40021000 	.word	0x40021000
 80009c8:	e000ed00 	.word	0xe000ed00
 80009cc:	e000e100 	.word	0xe000e100
 80009d0:	40000400 	.word	0x40000400

080009d4 <MX_TIM4_Init>:
 80009d4:	b570      	push	{r4, r5, r6, lr}
 80009d6:	b094      	sub	sp, #80	; 0x50
 80009d8:	4b33      	ldr	r3, [pc, #204]	; (8000aa8 <MX_TIM4_Init+0xd4>)
 80009da:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 80009dc:	f042 0204 	orr.w	r2, r2, #4
 80009e0:	659a      	str	r2, [r3, #88]	; 0x58
 80009e2:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80009e4:	f003 0304 	and.w	r3, r3, #4
 80009e8:	9300      	str	r3, [sp, #0]
 80009ea:	9b00      	ldr	r3, [sp, #0]
 80009ec:	4b2f      	ldr	r3, [pc, #188]	; (8000aac <MX_TIM4_Init+0xd8>)
 80009ee:	68db      	ldr	r3, [r3, #12]
 80009f0:	4b2f      	ldr	r3, [pc, #188]	; (8000ab0 <MX_TIM4_Init+0xdc>)
 80009f2:	2500      	movs	r5, #0
 80009f4:	f883 531e 	strb.w	r5, [r3, #798]	; 0x31e
 80009f8:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80009fc:	601a      	str	r2, [r3, #0]
 80009fe:	f8ad 503c 	strh.w	r5, [sp, #60]	; 0x3c
 8000a02:	9510      	str	r5, [sp, #64]	; 0x40
 8000a04:	9511      	str	r5, [sp, #68]	; 0x44
 8000a06:	9512      	str	r5, [sp, #72]	; 0x48
 8000a08:	4c2a      	ldr	r4, [pc, #168]	; (8000ab4 <MX_TIM4_Init+0xe0>)
 8000a0a:	a90f      	add	r1, sp, #60	; 0x3c
 8000a0c:	4620      	mov	r0, r4
 8000a0e:	f001 ff67 	bl	80028e0 <LL_TIM_Init>
 8000a12:	6823      	ldr	r3, [r4, #0]
 8000a14:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000a18:	6023      	str	r3, [r4, #0]
 8000a1a:	4e27      	ldr	r6, [pc, #156]	; (8000ab8 <MX_TIM4_Init+0xe4>)
 8000a1c:	6873      	ldr	r3, [r6, #4]
 8000a1e:	f043 0308 	orr.w	r3, r3, #8
 8000a22:	6073      	str	r3, [r6, #4]
 8000a24:	2360      	movs	r3, #96	; 0x60
 8000a26:	9307      	str	r3, [sp, #28]
 8000a28:	9508      	str	r5, [sp, #32]
 8000a2a:	9509      	str	r5, [sp, #36]	; 0x24
 8000a2c:	950a      	str	r5, [sp, #40]	; 0x28
 8000a2e:	950b      	str	r5, [sp, #44]	; 0x2c
 8000a30:	aa07      	add	r2, sp, #28
 8000a32:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000a36:	4620      	mov	r0, r4
 8000a38:	f001 ffb6 	bl	80029a8 <LL_TIM_OC_Init>
 8000a3c:	6873      	ldr	r3, [r6, #4]
 8000a3e:	f023 0304 	bic.w	r3, r3, #4
 8000a42:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8000a46:	6073      	str	r3, [r6, #4]
 8000a48:	9508      	str	r5, [sp, #32]
 8000a4a:	9509      	str	r5, [sp, #36]	; 0x24
 8000a4c:	aa07      	add	r2, sp, #28
 8000a4e:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8000a52:	4620      	mov	r0, r4
 8000a54:	f001 ffa8 	bl	80029a8 <LL_TIM_OC_Init>
 8000a58:	6873      	ldr	r3, [r6, #4]
 8000a5a:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8000a5e:	6073      	str	r3, [r6, #4]
 8000a60:	68a3      	ldr	r3, [r4, #8]
 8000a62:	f023 0308 	bic.w	r3, r3, #8
 8000a66:	60a3      	str	r3, [r4, #8]
 8000a68:	68a3      	ldr	r3, [r4, #8]
 8000a6a:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000a6e:	60a3      	str	r3, [r4, #8]
 8000a70:	68a3      	ldr	r3, [r4, #8]
 8000a72:	f423 433f 	bic.w	r3, r3, #48896	; 0xbf00
 8000a76:	60a3      	str	r3, [r4, #8]
 8000a78:	6863      	ldr	r3, [r4, #4]
 8000a7a:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000a7e:	6063      	str	r3, [r4, #4]
 8000a80:	68a3      	ldr	r3, [r4, #8]
 8000a82:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000a86:	60a3      	str	r3, [r4, #8]
 8000a88:	f44f 7340 	mov.w	r3, #768	; 0x300
 8000a8c:	9301      	str	r3, [sp, #4]
 8000a8e:	2302      	movs	r3, #2
 8000a90:	9302      	str	r3, [sp, #8]
 8000a92:	9503      	str	r5, [sp, #12]
 8000a94:	9504      	str	r5, [sp, #16]
 8000a96:	9505      	str	r5, [sp, #20]
 8000a98:	9306      	str	r3, [sp, #24]
 8000a9a:	a901      	add	r1, sp, #4
 8000a9c:	4807      	ldr	r0, [pc, #28]	; (8000abc <MX_TIM4_Init+0xe8>)
 8000a9e:	f001 fa15 	bl	8001ecc <LL_GPIO_Init>
 8000aa2:	b014      	add	sp, #80	; 0x50
 8000aa4:	bd70      	pop	{r4, r5, r6, pc}
 8000aa6:	bf00      	nop
 8000aa8:	40021000 	.word	0x40021000
 8000aac:	e000ed00 	.word	0xe000ed00
 8000ab0:	e000e100 	.word	0xe000e100
 8000ab4:	40000800 	.word	0x40000800
 8000ab8:	40000818 	.word	0x40000818
 8000abc:	48000400 	.word	0x48000400

08000ac0 <MX_ADC2_Init>:
 8000ac0:	b530      	push	{r4, r5, lr}
 8000ac2:	b095      	sub	sp, #84	; 0x54
 8000ac4:	4b3a      	ldr	r3, [pc, #232]	; (8000bb0 <MX_ADC2_Init+0xf0>)
 8000ac6:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 8000ac8:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8000acc:	64da      	str	r2, [r3, #76]	; 0x4c
 8000ace:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8000ad0:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 8000ad4:	9300      	str	r3, [sp, #0]
 8000ad6:	9b00      	ldr	r3, [sp, #0]
 8000ad8:	2310      	movs	r3, #16
 8000ada:	9301      	str	r3, [sp, #4]
 8000adc:	2303      	movs	r3, #3
 8000ade:	9302      	str	r3, [sp, #8]
 8000ae0:	2500      	movs	r5, #0
 8000ae2:	9505      	str	r5, [sp, #20]
 8000ae4:	a901      	add	r1, sp, #4
 8000ae6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000aea:	f001 f9ef 	bl	8001ecc <LL_GPIO_Init>
 8000aee:	f04f 4290 	mov.w	r2, #1207959552	; 0x48000000
 8000af2:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
 8000af4:	f043 0310 	orr.w	r3, r3, #16
 8000af8:	62d3      	str	r3, [r2, #44]	; 0x2c
 8000afa:	4b2e      	ldr	r3, [pc, #184]	; (8000bb4 <MX_ADC2_Init+0xf4>)
 8000afc:	68db      	ldr	r3, [r3, #12]
 8000afe:	4b2e      	ldr	r3, [pc, #184]	; (8000bb8 <MX_ADC2_Init+0xf8>)
 8000b00:	f883 5312 	strb.w	r5, [r3, #786]	; 0x312
 8000b04:	f44f 2280 	mov.w	r2, #262144	; 0x40000
 8000b08:	601a      	str	r2, [r3, #0]
 8000b0a:	9511      	str	r5, [sp, #68]	; 0x44
 8000b0c:	9512      	str	r5, [sp, #72]	; 0x48
 8000b0e:	9513      	str	r5, [sp, #76]	; 0x4c
 8000b10:	4c2a      	ldr	r4, [pc, #168]	; (8000bbc <MX_ADC2_Init+0xfc>)
 8000b12:	a911      	add	r1, sp, #68	; 0x44
 8000b14:	4620      	mov	r0, r4
 8000b16:	f001 ffd9 	bl	8002acc <LL_ADC_Init>
 8000b1a:	950b      	str	r5, [sp, #44]	; 0x2c
 8000b1c:	950c      	str	r5, [sp, #48]	; 0x30
 8000b1e:	950d      	str	r5, [sp, #52]	; 0x34
 8000b20:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8000b24:	930e      	str	r3, [sp, #56]	; 0x38
 8000b26:	2301      	movs	r3, #1
 8000b28:	930f      	str	r3, [sp, #60]	; 0x3c
 8000b2a:	9510      	str	r5, [sp, #64]	; 0x40
 8000b2c:	a90b      	add	r1, sp, #44	; 0x2c
 8000b2e:	4620      	mov	r0, r4
 8000b30:	f001 ffe4 	bl	8002afc <LL_ADC_REG_Init>
 8000b34:	6923      	ldr	r3, [r4, #16]
 8000b36:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8000b3a:	f023 0303 	bic.w	r3, r3, #3
 8000b3e:	6123      	str	r3, [r4, #16]
 8000b40:	a914      	add	r1, sp, #80	; 0x50
 8000b42:	f44f 13c0 	mov.w	r3, #1572864	; 0x180000
 8000b46:	f841 3d34 	str.w	r3, [r1, #-52]!
 8000b4a:	481d      	ldr	r0, [pc, #116]	; (8000bc0 <MX_ADC2_Init+0x100>)
 8000b4c:	f001 ff8c 	bl	8002a68 <LL_ADC_CommonInit>
 8000b50:	6863      	ldr	r3, [r4, #4]
 8000b52:	f043 0304 	orr.w	r3, r3, #4
 8000b56:	6063      	str	r3, [r4, #4]
 8000b58:	6863      	ldr	r3, [r4, #4]
 8000b5a:	f023 0308 	bic.w	r3, r3, #8
 8000b5e:	6063      	str	r3, [r4, #4]
 8000b60:	f44f 7340 	mov.w	r3, #768	; 0x300
 8000b64:	fa93 f3a3 	rbit	r3, r3
 8000b68:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8000b6a:	f423 63f8 	bic.w	r3, r3, #1984	; 0x7c0
 8000b6e:	f443 7310 	orr.w	r3, r3, #576	; 0x240
 8000b72:	6323      	str	r3, [r4, #48]	; 0x30
 8000b74:	f04f 7300 	mov.w	r3, #33554432	; 0x2000000
 8000b78:	fa93 f3a3 	rbit	r3, r3
 8000b7c:	6963      	ldr	r3, [r4, #20]
 8000b7e:	f04f 72f8 	mov.w	r2, #32505856	; 0x1f00000
 8000b82:	fa92 f0a2 	rbit	r0, r2
 8000b86:	fab0 f080 	clz	r0, r0
 8000b8a:	f04f 71d8 	mov.w	r1, #28311552	; 0x1b00000
 8000b8e:	fa21 f000 	lsr.w	r0, r1, r0
 8000b92:	2107      	movs	r1, #7
 8000b94:	4081      	lsls	r1, r0
 8000b96:	ea23 0301 	bic.w	r3, r3, r1
 8000b9a:	fa92 f2a2 	rbit	r2, r2
 8000b9e:	6163      	str	r3, [r4, #20]
 8000ba0:	f8d4 30b0 	ldr.w	r3, [r4, #176]	; 0xb0
 8000ba4:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8000ba8:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
 8000bac:	b015      	add	sp, #84	; 0x54
 8000bae:	bd30      	pop	{r4, r5, pc}
 8000bb0:	40021000 	.word	0x40021000
 8000bb4:	e000ed00 	.word	0xe000ed00
 8000bb8:	e000e100 	.word	0xe000e100
 8000bbc:	50040100 	.word	0x50040100
 8000bc0:	50040300 	.word	0x50040300

08000bc4 <MX_SPI2_Init>:
 8000bc4:	b510      	push	{r4, lr}
 8000bc6:	b092      	sub	sp, #72	; 0x48
 8000bc8:	4b1c      	ldr	r3, [pc, #112]	; (8000c3c <MX_SPI2_Init+0x78>)
 8000bca:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 8000bcc:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 8000bd0:	659a      	str	r2, [r3, #88]	; 0x58
 8000bd2:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000bd4:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8000bd8:	9301      	str	r3, [sp, #4]
 8000bda:	9b01      	ldr	r3, [sp, #4]
 8000bdc:	f44f 4360 	mov.w	r3, #57344	; 0xe000
 8000be0:	9302      	str	r3, [sp, #8]
 8000be2:	2302      	movs	r3, #2
 8000be4:	9303      	str	r3, [sp, #12]
 8000be6:	2303      	movs	r3, #3
 8000be8:	9304      	str	r3, [sp, #16]
 8000bea:	2400      	movs	r4, #0
 8000bec:	9405      	str	r4, [sp, #20]
 8000bee:	9406      	str	r4, [sp, #24]
 8000bf0:	2305      	movs	r3, #5
 8000bf2:	9307      	str	r3, [sp, #28]
 8000bf4:	a902      	add	r1, sp, #8
 8000bf6:	4812      	ldr	r0, [pc, #72]	; (8000c40 <MX_SPI2_Init+0x7c>)
 8000bf8:	f001 f968 	bl	8001ecc <LL_GPIO_Init>
 8000bfc:	9408      	str	r4, [sp, #32]
 8000bfe:	f44f 7382 	mov.w	r3, #260	; 0x104
 8000c02:	9309      	str	r3, [sp, #36]	; 0x24
 8000c04:	f44f 7340 	mov.w	r3, #768	; 0x300
 8000c08:	930a      	str	r3, [sp, #40]	; 0x28
 8000c0a:	940b      	str	r4, [sp, #44]	; 0x2c
 8000c0c:	940c      	str	r4, [sp, #48]	; 0x30
 8000c0e:	f44f 7300 	mov.w	r3, #512	; 0x200
 8000c12:	930d      	str	r3, [sp, #52]	; 0x34
 8000c14:	940e      	str	r4, [sp, #56]	; 0x38
 8000c16:	940f      	str	r4, [sp, #60]	; 0x3c
 8000c18:	9410      	str	r4, [sp, #64]	; 0x40
 8000c1a:	2307      	movs	r3, #7
 8000c1c:	9311      	str	r3, [sp, #68]	; 0x44
 8000c1e:	4c09      	ldr	r4, [pc, #36]	; (8000c44 <MX_SPI2_Init+0x80>)
 8000c20:	a908      	add	r1, sp, #32
 8000c22:	4620      	mov	r0, r4
 8000c24:	f001 fc08 	bl	8002438 <LL_SPI_Init>
 8000c28:	6863      	ldr	r3, [r4, #4]
 8000c2a:	f023 0310 	bic.w	r3, r3, #16
 8000c2e:	6063      	str	r3, [r4, #4]
 8000c30:	6863      	ldr	r3, [r4, #4]
 8000c32:	f043 0308 	orr.w	r3, r3, #8
 8000c36:	6063      	str	r3, [r4, #4]
 8000c38:	b012      	add	sp, #72	; 0x48
 8000c3a:	bd10      	pop	{r4, pc}
 8000c3c:	40021000 	.word	0x40021000
 8000c40:	48000400 	.word	0x48000400
 8000c44:	40003800 	.word	0x40003800

08000c48 <MX_USART3_Init>:
 8000c48:	b530      	push	{r4, r5, lr}
 8000c4a:	b093      	sub	sp, #76	; 0x4c
 8000c4c:	4b22      	ldr	r3, [pc, #136]	; (8000cd8 <MX_USART3_Init+0x90>)
 8000c4e:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 8000c50:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
 8000c54:	659a      	str	r2, [r3, #88]	; 0x58
 8000c56:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000c58:	f403 2380 	and.w	r3, r3, #262144	; 0x40000
 8000c5c:	9300      	str	r3, [sp, #0]
 8000c5e:	9b00      	ldr	r3, [sp, #0]
 8000c60:	f640 4301 	movw	r3, #3073	; 0xc01
 8000c64:	9301      	str	r3, [sp, #4]
 8000c66:	2302      	movs	r3, #2
 8000c68:	9302      	str	r3, [sp, #8]
 8000c6a:	2303      	movs	r3, #3
 8000c6c:	9303      	str	r3, [sp, #12]
 8000c6e:	2500      	movs	r5, #0
 8000c70:	9504      	str	r5, [sp, #16]
 8000c72:	9505      	str	r5, [sp, #20]
 8000c74:	2307      	movs	r3, #7
 8000c76:	9306      	str	r3, [sp, #24]
 8000c78:	a901      	add	r1, sp, #4
 8000c7a:	4818      	ldr	r0, [pc, #96]	; (8000cdc <MX_USART3_Init+0x94>)
 8000c7c:	f001 f926 	bl	8001ecc <LL_GPIO_Init>
 8000c80:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8000c84:	930b      	str	r3, [sp, #44]	; 0x2c
 8000c86:	f04f 5380 	mov.w	r3, #268435456	; 0x10000000
 8000c8a:	930c      	str	r3, [sp, #48]	; 0x30
 8000c8c:	950d      	str	r5, [sp, #52]	; 0x34
 8000c8e:	950e      	str	r5, [sp, #56]	; 0x38
 8000c90:	230c      	movs	r3, #12
 8000c92:	930f      	str	r3, [sp, #60]	; 0x3c
 8000c94:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8000c98:	9311      	str	r3, [sp, #68]	; 0x44
 8000c9a:	4c11      	ldr	r4, [pc, #68]	; (8000ce0 <MX_USART3_Init+0x98>)
 8000c9c:	a90b      	add	r1, sp, #44	; 0x2c
 8000c9e:	4620      	mov	r0, r4
 8000ca0:	f001 fbfe 	bl	80024a0 <LL_USART_Init>
 8000ca4:	9508      	str	r5, [sp, #32]
 8000ca6:	9509      	str	r5, [sp, #36]	; 0x24
 8000ca8:	950a      	str	r5, [sp, #40]	; 0x28
 8000caa:	a907      	add	r1, sp, #28
 8000cac:	4620      	mov	r0, r4
 8000cae:	f001 fc6b 	bl	8002588 <LL_USART_ClockInit>
 8000cb2:	6863      	ldr	r3, [r4, #4]
 8000cb4:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000cb8:	6063      	str	r3, [r4, #4]
 8000cba:	68a3      	ldr	r3, [r4, #8]
 8000cbc:	f023 032a 	bic.w	r3, r3, #42	; 0x2a
 8000cc0:	60a3      	str	r3, [r4, #8]
 8000cc2:	6863      	ldr	r3, [r4, #4]
 8000cc4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8000cc8:	6063      	str	r3, [r4, #4]
 8000cca:	6823      	ldr	r3, [r4, #0]
 8000ccc:	f043 0301 	orr.w	r3, r3, #1
 8000cd0:	6023      	str	r3, [r4, #0]
 8000cd2:	b013      	add	sp, #76	; 0x4c
 8000cd4:	bd30      	pop	{r4, r5, pc}
 8000cd6:	bf00      	nop
 8000cd8:	40021000 	.word	0x40021000
 8000cdc:	48000400 	.word	0x48000400
 8000ce0:	40004800 	.word	0x40004800

08000ce4 <MX_DAC1_Init>:
 8000ce4:	b510      	push	{r4, lr}
 8000ce6:	b08e      	sub	sp, #56	; 0x38
 8000ce8:	4b13      	ldr	r3, [pc, #76]	; (8000d38 <MX_DAC1_Init+0x54>)
 8000cea:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 8000cec:	f042 5200 	orr.w	r2, r2, #536870912	; 0x20000000
 8000cf0:	659a      	str	r2, [r3, #88]	; 0x58
 8000cf2:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000cf4:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
 8000cf8:	9301      	str	r3, [sp, #4]
 8000cfa:	9b01      	ldr	r3, [sp, #4]
 8000cfc:	2320      	movs	r3, #32
 8000cfe:	9302      	str	r3, [sp, #8]
 8000d00:	2303      	movs	r3, #3
 8000d02:	9303      	str	r3, [sp, #12]
 8000d04:	2400      	movs	r4, #0
 8000d06:	9406      	str	r4, [sp, #24]
 8000d08:	a902      	add	r1, sp, #8
 8000d0a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000d0e:	f001 f8dd 	bl	8001ecc <LL_GPIO_Init>
 8000d12:	2338      	movs	r3, #56	; 0x38
 8000d14:	9308      	str	r3, [sp, #32]
 8000d16:	9409      	str	r4, [sp, #36]	; 0x24
 8000d18:	940b      	str	r4, [sp, #44]	; 0x2c
 8000d1a:	940c      	str	r4, [sp, #48]	; 0x30
 8000d1c:	940d      	str	r4, [sp, #52]	; 0x34
 8000d1e:	4c07      	ldr	r4, [pc, #28]	; (8000d3c <MX_DAC1_Init+0x58>)
 8000d20:	aa08      	add	r2, sp, #32
 8000d22:	4907      	ldr	r1, [pc, #28]	; (8000d40 <MX_DAC1_Init+0x5c>)
 8000d24:	4620      	mov	r0, r4
 8000d26:	f001 fe6b 	bl	8002a00 <LL_DAC_Init>
 8000d2a:	6823      	ldr	r3, [r4, #0]
 8000d2c:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8000d30:	6023      	str	r3, [r4, #0]
 8000d32:	b00e      	add	sp, #56	; 0x38
 8000d34:	bd10      	pop	{r4, pc}
 8000d36:	bf00      	nop
 8000d38:	40021000 	.word	0x40021000
 8000d3c:	40007400 	.word	0x40007400
 8000d40:	15431012 	.word	0x15431012

08000d44 <_Error_Handler>:
 8000d44:	b508      	push	{r3, lr}
 8000d46:	460a      	mov	r2, r1
 8000d48:	4601      	mov	r1, r0
 8000d4a:	4802      	ldr	r0, [pc, #8]	; (8000d54 <_Error_Handler+0x10>)
 8000d4c:	f002 f904 	bl	8002f58 <iprintf>
 8000d50:	bd08      	pop	{r3, pc}
 8000d52:	bf00      	nop
 8000d54:	08003e34 	.word	0x08003e34

08000d58 <MX_SAI1_Init>:
 8000d58:	b508      	push	{r3, lr}
 8000d5a:	480e      	ldr	r0, [pc, #56]	; (8000d94 <MX_SAI1_Init+0x3c>)
 8000d5c:	4b0e      	ldr	r3, [pc, #56]	; (8000d98 <MX_SAI1_Init+0x40>)
 8000d5e:	6003      	str	r3, [r0, #0]
 8000d60:	2100      	movs	r1, #0
 8000d62:	6041      	str	r1, [r0, #4]
 8000d64:	6081      	str	r1, [r0, #8]
 8000d66:	6101      	str	r1, [r0, #16]
 8000d68:	6141      	str	r1, [r0, #20]
 8000d6a:	6181      	str	r1, [r0, #24]
 8000d6c:	f64a 4344 	movw	r3, #44100	; 0xac44
 8000d70:	61c3      	str	r3, [r0, #28]
 8000d72:	60c1      	str	r1, [r0, #12]
 8000d74:	6241      	str	r1, [r0, #36]	; 0x24
 8000d76:	6281      	str	r1, [r0, #40]	; 0x28
 8000d78:	62c1      	str	r1, [r0, #44]	; 0x2c
 8000d7a:	2302      	movs	r3, #2
 8000d7c:	460a      	mov	r2, r1
 8000d7e:	f000 fb75 	bl	800146c <HAL_SAI_InitProtocol>
 8000d82:	b900      	cbnz	r0, 8000d86 <MX_SAI1_Init+0x2e>
 8000d84:	bd08      	pop	{r3, pc}
 8000d86:	f240 11a3 	movw	r1, #419	; 0x1a3
 8000d8a:	4804      	ldr	r0, [pc, #16]	; (8000d9c <MX_SAI1_Init+0x44>)
 8000d8c:	f7ff ffda 	bl	8000d44 <_Error_Handler>
 8000d90:	e7f8      	b.n	8000d84 <MX_SAI1_Init+0x2c>
 8000d92:	bf00      	nop
 8000d94:	200177a4 	.word	0x200177a4
 8000d98:	40015424 	.word	0x40015424
 8000d9c:	08003e28 	.word	0x08003e28

08000da0 <SystemClock_Config>:
 8000da0:	b538      	push	{r3, r4, r5, lr}
 8000da2:	4a65      	ldr	r2, [pc, #404]	; (8000f38 <SystemClock_Config+0x198>)
 8000da4:	6813      	ldr	r3, [r2, #0]
 8000da6:	f023 0307 	bic.w	r3, r3, #7
 8000daa:	f043 0303 	orr.w	r3, r3, #3
 8000dae:	6013      	str	r3, [r2, #0]
 8000db0:	6813      	ldr	r3, [r2, #0]
 8000db2:	f003 0307 	and.w	r3, r3, #7
 8000db6:	2b03      	cmp	r3, #3
 8000db8:	d003      	beq.n	8000dc2 <SystemClock_Config+0x22>
 8000dba:	21b1      	movs	r1, #177	; 0xb1
 8000dbc:	485f      	ldr	r0, [pc, #380]	; (8000f3c <SystemClock_Config+0x19c>)
 8000dbe:	f7ff ffc1 	bl	8000d44 <_Error_Handler>
 8000dc2:	4a5f      	ldr	r2, [pc, #380]	; (8000f40 <SystemClock_Config+0x1a0>)
 8000dc4:	6813      	ldr	r3, [r2, #0]
 8000dc6:	f423 63c0 	bic.w	r3, r3, #1536	; 0x600
 8000dca:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000dce:	6013      	str	r3, [r2, #0]
 8000dd0:	f502 32d0 	add.w	r2, r2, #106496	; 0x1a000
 8000dd4:	6813      	ldr	r3, [r2, #0]
 8000dd6:	f043 0301 	orr.w	r3, r3, #1
 8000dda:	6013      	str	r3, [r2, #0]
 8000ddc:	4b59      	ldr	r3, [pc, #356]	; (8000f44 <SystemClock_Config+0x1a4>)
 8000dde:	681b      	ldr	r3, [r3, #0]
 8000de0:	f013 0f02 	tst.w	r3, #2
 8000de4:	d0fa      	beq.n	8000ddc <SystemClock_Config+0x3c>
 8000de6:	4b57      	ldr	r3, [pc, #348]	; (8000f44 <SystemClock_Config+0x1a4>)
 8000de8:	681a      	ldr	r2, [r3, #0]
 8000dea:	f042 0208 	orr.w	r2, r2, #8
 8000dee:	601a      	str	r2, [r3, #0]
 8000df0:	681a      	ldr	r2, [r3, #0]
 8000df2:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8000df6:	f042 0260 	orr.w	r2, r2, #96	; 0x60
 8000dfa:	601a      	str	r2, [r3, #0]
 8000dfc:	685a      	ldr	r2, [r3, #4]
 8000dfe:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
 8000e02:	605a      	str	r2, [r3, #4]
 8000e04:	68d9      	ldr	r1, [r3, #12]
 8000e06:	4a50      	ldr	r2, [pc, #320]	; (8000f48 <SystemClock_Config+0x1a8>)
 8000e08:	400a      	ands	r2, r1
 8000e0a:	f442 5220 	orr.w	r2, r2, #10240	; 0x2800
 8000e0e:	f042 0201 	orr.w	r2, r2, #1
 8000e12:	60da      	str	r2, [r3, #12]
 8000e14:	68da      	ldr	r2, [r3, #12]
 8000e16:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8000e1a:	60da      	str	r2, [r3, #12]
 8000e1c:	681a      	ldr	r2, [r3, #0]
 8000e1e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8000e22:	601a      	str	r2, [r3, #0]
 8000e24:	4b47      	ldr	r3, [pc, #284]	; (8000f44 <SystemClock_Config+0x1a4>)
 8000e26:	681b      	ldr	r3, [r3, #0]
 8000e28:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 8000e2c:	d0fa      	beq.n	8000e24 <SystemClock_Config+0x84>
 8000e2e:	4a45      	ldr	r2, [pc, #276]	; (8000f44 <SystemClock_Config+0x1a4>)
 8000e30:	68d3      	ldr	r3, [r2, #12]
 8000e32:	f023 0373 	bic.w	r3, r3, #115	; 0x73
 8000e36:	f043 0301 	orr.w	r3, r3, #1
 8000e3a:	60d3      	str	r3, [r2, #12]
 8000e3c:	6913      	ldr	r3, [r2, #16]
 8000e3e:	f023 63c0 	bic.w	r3, r3, #100663296	; 0x6000000
 8000e42:	f423 43fe 	bic.w	r3, r3, #32512	; 0x7f00
 8000e46:	f043 63c0 	orr.w	r3, r3, #100663296	; 0x6000000
 8000e4a:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 8000e4e:	6113      	str	r3, [r2, #16]
 8000e50:	6913      	ldr	r3, [r2, #16]
 8000e52:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000e56:	6113      	str	r3, [r2, #16]
 8000e58:	6813      	ldr	r3, [r2, #0]
 8000e5a:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 8000e5e:	6013      	str	r3, [r2, #0]
 8000e60:	4b38      	ldr	r3, [pc, #224]	; (8000f44 <SystemClock_Config+0x1a4>)
 8000e62:	681b      	ldr	r3, [r3, #0]
 8000e64:	f013 6f00 	tst.w	r3, #134217728	; 0x8000000
 8000e68:	d0fa      	beq.n	8000e60 <SystemClock_Config+0xc0>
 8000e6a:	4b36      	ldr	r3, [pc, #216]	; (8000f44 <SystemClock_Config+0x1a4>)
 8000e6c:	68da      	ldr	r2, [r3, #12]
 8000e6e:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8000e72:	f042 0201 	orr.w	r2, r2, #1
 8000e76:	60da      	str	r2, [r3, #12]
 8000e78:	695a      	ldr	r2, [r3, #20]
 8000e7a:	f422 321f 	bic.w	r2, r2, #162816	; 0x27c00
 8000e7e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8000e82:	f442 52e0 	orr.w	r2, r2, #7168	; 0x1c00
 8000e86:	615a      	str	r2, [r3, #20]
 8000e88:	695a      	ldr	r2, [r3, #20]
 8000e8a:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8000e8e:	615a      	str	r2, [r3, #20]
 8000e90:	681a      	ldr	r2, [r3, #0]
 8000e92:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 8000e96:	601a      	str	r2, [r3, #0]
 8000e98:	4b2a      	ldr	r3, [pc, #168]	; (8000f44 <SystemClock_Config+0x1a4>)
 8000e9a:	681b      	ldr	r3, [r3, #0]
 8000e9c:	f013 5f00 	tst.w	r3, #536870912	; 0x20000000
 8000ea0:	d0fa      	beq.n	8000e98 <SystemClock_Config+0xf8>
 8000ea2:	4a28      	ldr	r2, [pc, #160]	; (8000f44 <SystemClock_Config+0x1a4>)
 8000ea4:	6893      	ldr	r3, [r2, #8]
 8000ea6:	f043 0303 	orr.w	r3, r3, #3
 8000eaa:	6093      	str	r3, [r2, #8]
 8000eac:	4b25      	ldr	r3, [pc, #148]	; (8000f44 <SystemClock_Config+0x1a4>)
 8000eae:	689b      	ldr	r3, [r3, #8]
 8000eb0:	f003 030c 	and.w	r3, r3, #12
 8000eb4:	2b0c      	cmp	r3, #12
 8000eb6:	d1f9      	bne.n	8000eac <SystemClock_Config+0x10c>
 8000eb8:	4c22      	ldr	r4, [pc, #136]	; (8000f44 <SystemClock_Config+0x1a4>)
 8000eba:	68a3      	ldr	r3, [r4, #8]
 8000ebc:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8000ec0:	60a3      	str	r3, [r4, #8]
 8000ec2:	68a3      	ldr	r3, [r4, #8]
 8000ec4:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 8000ec8:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
 8000ecc:	60a3      	str	r3, [r4, #8]
 8000ece:	68a3      	ldr	r3, [r4, #8]
 8000ed0:	f423 5360 	bic.w	r3, r3, #14336	; 0x3800
 8000ed4:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
 8000ed8:	60a3      	str	r3, [r4, #8]
 8000eda:	4d1c      	ldr	r5, [pc, #112]	; (8000f4c <SystemClock_Config+0x1ac>)
 8000edc:	4628      	mov	r0, r5
 8000ede:	f000 ffc9 	bl	8001e74 <LL_Init1msTick>
 8000ee2:	4a1b      	ldr	r2, [pc, #108]	; (8000f50 <SystemClock_Config+0x1b0>)
 8000ee4:	6813      	ldr	r3, [r2, #0]
 8000ee6:	f043 0304 	orr.w	r3, r3, #4
 8000eea:	6013      	str	r3, [r2, #0]
 8000eec:	4628      	mov	r0, r5
 8000eee:	f000 ffe7 	bl	8001ec0 <LL_SetSystemCoreClock>
 8000ef2:	f8d4 3088 	ldr.w	r3, [r4, #136]	; 0x88
 8000ef6:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 8000efa:	f8c4 3088 	str.w	r3, [r4, #136]	; 0x88
 8000efe:	f8d4 3088 	ldr.w	r3, [r4, #136]	; 0x88
 8000f02:	f423 2340 	bic.w	r3, r3, #786432	; 0xc0000
 8000f06:	f8c4 3088 	str.w	r3, [r4, #136]	; 0x88
 8000f0a:	f8d4 3088 	ldr.w	r3, [r4, #136]	; 0x88
 8000f0e:	f423 0340 	bic.w	r3, r3, #12582912	; 0xc00000
 8000f12:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8000f16:	f8c4 3088 	str.w	r3, [r4, #136]	; 0x88
 8000f1a:	f8d4 3088 	ldr.w	r3, [r4, #136]	; 0x88
 8000f1e:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
 8000f22:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8000f26:	f8c4 3088 	str.w	r3, [r4, #136]	; 0x88
 8000f2a:	4b0a      	ldr	r3, [pc, #40]	; (8000f54 <SystemClock_Config+0x1b4>)
 8000f2c:	68da      	ldr	r2, [r3, #12]
 8000f2e:	2200      	movs	r2, #0
 8000f30:	f883 2023 	strb.w	r2, [r3, #35]	; 0x23
 8000f34:	bd38      	pop	{r3, r4, r5, pc}
 8000f36:	bf00      	nop
 8000f38:	40022000 	.word	0x40022000
 8000f3c:	08003e28 	.word	0x08003e28
 8000f40:	40007000 	.word	0x40007000
 8000f44:	40021000 	.word	0x40021000
 8000f48:	f9ff808c 	.word	0xf9ff808c
 8000f4c:	04c4b400 	.word	0x04c4b400
 8000f50:	e000e010 	.word	0xe000e010
 8000f54:	e000ed00 	.word	0xe000ed00

08000f58 <main>:
 8000f58:	b530      	push	{r4, r5, lr}
 8000f5a:	b099      	sub	sp, #100	; 0x64
 8000f5c:	f000 f8a6 	bl	80010ac <HAL_Init>
 8000f60:	f7ff ff1e 	bl	8000da0 <SystemClock_Config>
 8000f64:	f7ff fb3e 	bl	80005e4 <MX_GPIO_Init>
 8000f68:	f7ff fef6 	bl	8000d58 <MX_SAI1_Init>
 8000f6c:	f7ff fbc6 	bl	80006fc <MX_LPTIM1_Init>
 8000f70:	f7ff fc18 	bl	80007a4 <MX_TIM1_Init>
 8000f74:	f7ff fc70 	bl	8000858 <MX_TIM2_Init>
 8000f78:	f7ff fcce 	bl	8000918 <MX_TIM3_Init>
 8000f7c:	f7ff fd2a 	bl	80009d4 <MX_TIM4_Init>
 8000f80:	f7ff fd9e 	bl	8000ac0 <MX_ADC2_Init>
 8000f84:	f7ff fe1e 	bl	8000bc4 <MX_SPI2_Init>
 8000f88:	f7ff fe5e 	bl	8000c48 <MX_USART3_Init>
 8000f8c:	f7ff feaa 	bl	8000ce4 <MX_DAC1_Init>
 8000f90:	f001 fe40 	bl	8002c14 <init_LCD>
 8000f94:	f001 fe88 	bl	8002ca8 <effects_init>
 8000f98:	ac12      	add	r4, sp, #72	; 0x48
 8000f9a:	4d34      	ldr	r5, [pc, #208]	; (800106c <main+0x114>)
 8000f9c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000f9e:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000fa0:	e895 0003 	ldmia.w	r5, {r0, r1}
 8000fa4:	f844 0b04 	str.w	r0, [r4], #4
 8000fa8:	7021      	strb	r1, [r4, #0]
 8000faa:	2400      	movs	r4, #0
 8000fac:	e006      	b.n	8000fbc <main+0x64>
 8000fae:	ab18      	add	r3, sp, #96	; 0x60
 8000fb0:	4423      	add	r3, r4
 8000fb2:	f813 0c18 	ldrb.w	r0, [r3, #-24]
 8000fb6:	f001 fdd1 	bl	8002b5c <LCD_write_data>
 8000fba:	3401      	adds	r4, #1
 8000fbc:	2c13      	cmp	r4, #19
 8000fbe:	d9f6      	bls.n	8000fae <main+0x56>
 8000fc0:	2101      	movs	r1, #1
 8000fc2:	2002      	movs	r0, #2
 8000fc4:	f001 fe5a 	bl	8002c7c <LCD_cursor_pos>
 8000fc8:	ac0c      	add	r4, sp, #48	; 0x30
 8000fca:	4d29      	ldr	r5, [pc, #164]	; (8001070 <main+0x118>)
 8000fcc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000fce:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000fd0:	e895 0003 	ldmia.w	r5, {r0, r1}
 8000fd4:	f844 0b04 	str.w	r0, [r4], #4
 8000fd8:	7021      	strb	r1, [r4, #0]
 8000fda:	2400      	movs	r4, #0
 8000fdc:	e006      	b.n	8000fec <main+0x94>
 8000fde:	ab18      	add	r3, sp, #96	; 0x60
 8000fe0:	4423      	add	r3, r4
 8000fe2:	f813 0c30 	ldrb.w	r0, [r3, #-48]
 8000fe6:	f001 fdb9 	bl	8002b5c <LCD_write_data>
 8000fea:	3401      	adds	r4, #1
 8000fec:	2c13      	cmp	r4, #19
 8000fee:	d9f6      	bls.n	8000fde <main+0x86>
 8000ff0:	2101      	movs	r1, #1
 8000ff2:	2003      	movs	r0, #3
 8000ff4:	f001 fe42 	bl	8002c7c <LCD_cursor_pos>
 8000ff8:	ac06      	add	r4, sp, #24
 8000ffa:	4d1e      	ldr	r5, [pc, #120]	; (8001074 <main+0x11c>)
 8000ffc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000ffe:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8001000:	e895 0003 	ldmia.w	r5, {r0, r1}
 8001004:	f844 0b04 	str.w	r0, [r4], #4
 8001008:	7021      	strb	r1, [r4, #0]
 800100a:	2400      	movs	r4, #0
 800100c:	e006      	b.n	800101c <main+0xc4>
 800100e:	ab18      	add	r3, sp, #96	; 0x60
 8001010:	4423      	add	r3, r4
 8001012:	f813 0c48 	ldrb.w	r0, [r3, #-72]
 8001016:	f001 fda1 	bl	8002b5c <LCD_write_data>
 800101a:	3401      	adds	r4, #1
 800101c:	2c13      	cmp	r4, #19
 800101e:	d9f6      	bls.n	800100e <main+0xb6>
 8001020:	2101      	movs	r1, #1
 8001022:	2004      	movs	r0, #4
 8001024:	f001 fe2a 	bl	8002c7c <LCD_cursor_pos>
 8001028:	466c      	mov	r4, sp
 800102a:	4d13      	ldr	r5, [pc, #76]	; (8001078 <main+0x120>)
 800102c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 800102e:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8001030:	e895 0003 	ldmia.w	r5, {r0, r1}
 8001034:	f844 0b04 	str.w	r0, [r4], #4
 8001038:	7021      	strb	r1, [r4, #0]
 800103a:	2400      	movs	r4, #0
 800103c:	e006      	b.n	800104c <main+0xf4>
 800103e:	ab18      	add	r3, sp, #96	; 0x60
 8001040:	4423      	add	r3, r4
 8001042:	f813 0c60 	ldrb.w	r0, [r3, #-96]
 8001046:	f001 fd89 	bl	8002b5c <LCD_write_data>
 800104a:	3401      	adds	r4, #1
 800104c:	2c13      	cmp	r4, #19
 800104e:	d9f6      	bls.n	800103e <main+0xe6>
 8001050:	4c0a      	ldr	r4, [pc, #40]	; (800107c <main+0x124>)
 8001052:	f44f 457f 	mov.w	r5, #65280	; 0xff00
 8001056:	61a5      	str	r5, [r4, #24]
 8001058:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 800105c:	f000 ff1a 	bl	8001e94 <LL_mDelay>
 8001060:	62a5      	str	r5, [r4, #40]	; 0x28
 8001062:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8001066:	f000 ff15 	bl	8001e94 <LL_mDelay>
 800106a:	e7f1      	b.n	8001050 <main+0xf8>
 800106c:	08003e3c 	.word	0x08003e3c
 8001070:	08003e54 	.word	0x08003e54
 8001074:	08003e6c 	.word	0x08003e6c
 8001078:	08003e84 	.word	0x08003e84
 800107c:	48000800 	.word	0x48000800

08001080 <HAL_InitTick>:
 8001080:	b510      	push	{r4, lr}
 8001082:	4604      	mov	r4, r0
 8001084:	4b07      	ldr	r3, [pc, #28]	; (80010a4 <HAL_InitTick+0x24>)
 8001086:	6818      	ldr	r0, [r3, #0]
 8001088:	4b07      	ldr	r3, [pc, #28]	; (80010a8 <HAL_InitTick+0x28>)
 800108a:	fba3 3000 	umull	r3, r0, r3, r0
 800108e:	0980      	lsrs	r0, r0, #6
 8001090:	f7ff f94a 	bl	8000328 <HAL_SYSTICK_Config>
 8001094:	2200      	movs	r2, #0
 8001096:	4621      	mov	r1, r4
 8001098:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800109c:	f7ff f912 	bl	80002c4 <HAL_NVIC_SetPriority>
 80010a0:	2000      	movs	r0, #0
 80010a2:	bd10      	pop	{r4, pc}
 80010a4:	20000000 	.word	0x20000000
 80010a8:	10624dd3 	.word	0x10624dd3

080010ac <HAL_Init>:
 80010ac:	b508      	push	{r3, lr}
 80010ae:	2003      	movs	r0, #3
 80010b0:	f7ff f8f6 	bl	80002a0 <HAL_NVIC_SetPriorityGrouping>
 80010b4:	2000      	movs	r0, #0
 80010b6:	f7ff ffe3 	bl	8001080 <HAL_InitTick>
 80010ba:	f7ff f9f7 	bl	80004ac <HAL_MspInit>
 80010be:	2000      	movs	r0, #0
 80010c0:	bd08      	pop	{r3, pc}
	...

080010c4 <HAL_IncTick>:
 80010c4:	4a02      	ldr	r2, [pc, #8]	; (80010d0 <HAL_IncTick+0xc>)
 80010c6:	6813      	ldr	r3, [r2, #0]
 80010c8:	3301      	adds	r3, #1
 80010ca:	6013      	str	r3, [r2, #0]
 80010cc:	4770      	bx	lr
 80010ce:	bf00      	nop
 80010d0:	20017828 	.word	0x20017828

080010d4 <HAL_GetTick>:
 80010d4:	4b01      	ldr	r3, [pc, #4]	; (80010dc <HAL_GetTick+0x8>)
 80010d6:	6818      	ldr	r0, [r3, #0]
 80010d8:	4770      	bx	lr
 80010da:	bf00      	nop
 80010dc:	20017828 	.word	0x20017828

080010e0 <SAI_InitI2S>:
 80010e0:	b430      	push	{r4, r5}
 80010e2:	2400      	movs	r4, #0
 80010e4:	6304      	str	r4, [r0, #48]	; 0x30
 80010e6:	6384      	str	r4, [r0, #56]	; 0x38
 80010e8:	6844      	ldr	r4, [r0, #4]
 80010ea:	b124      	cbz	r4, 80010f6 <SAI_InitI2S+0x16>
 80010ec:	2c02      	cmp	r4, #2
 80010ee:	d002      	beq.n	80010f6 <SAI_InitI2S+0x16>
 80010f0:	2401      	movs	r4, #1
 80010f2:	63c4      	str	r4, [r0, #60]	; 0x3c
 80010f4:	e001      	b.n	80010fa <SAI_InitI2S+0x1a>
 80010f6:	2400      	movs	r4, #0
 80010f8:	63c4      	str	r4, [r0, #60]	; 0x3c
 80010fa:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 80010fe:	6484      	str	r4, [r0, #72]	; 0x48
 8001100:	f64f 74ff 	movw	r4, #65535	; 0xffff
 8001104:	6604      	str	r4, [r0, #96]	; 0x60
 8001106:	2400      	movs	r4, #0
 8001108:	6544      	str	r4, [r0, #84]	; 0x54
 800110a:	65c3      	str	r3, [r0, #92]	; 0x5c
 800110c:	f013 0f01 	tst.w	r3, #1
 8001110:	d14a      	bne.n	80011a8 <SAI_InitI2S+0xc8>
 8001112:	b139      	cbz	r1, 8001124 <SAI_InitI2S+0x44>
 8001114:	2902      	cmp	r1, #2
 8001116:	d84a      	bhi.n	80011ae <SAI_InitI2S+0xce>
 8001118:	f44f 3400 	mov.w	r4, #131072	; 0x20000
 800111c:	64c4      	str	r4, [r0, #76]	; 0x4c
 800111e:	2400      	movs	r4, #0
 8001120:	6504      	str	r4, [r0, #80]	; 0x50
 8001122:	e004      	b.n	800112e <SAI_InitI2S+0x4e>
 8001124:	2400      	movs	r4, #0
 8001126:	64c4      	str	r4, [r0, #76]	; 0x4c
 8001128:	f44f 2480 	mov.w	r4, #262144	; 0x40000
 800112c:	6504      	str	r4, [r0, #80]	; 0x50
 800112e:	2a03      	cmp	r2, #3
 8001130:	d83f      	bhi.n	80011b2 <SAI_InitI2S+0xd2>
 8001132:	e8df f002 	tbb	[pc, r2]
 8001136:	0f02      	.short	0x0f02
 8001138:	2218      	.short	0x2218
 800113a:	2480      	movs	r4, #128	; 0x80
 800113c:	6344      	str	r4, [r0, #52]	; 0x34
 800113e:	085b      	lsrs	r3, r3, #1
 8001140:	015c      	lsls	r4, r3, #5
 8001142:	6404      	str	r4, [r0, #64]	; 0x40
 8001144:	011b      	lsls	r3, r3, #4
 8001146:	6443      	str	r3, [r0, #68]	; 0x44
 8001148:	2340      	movs	r3, #64	; 0x40
 800114a:	6583      	str	r3, [r0, #88]	; 0x58
 800114c:	2902      	cmp	r1, #2
 800114e:	d01e      	beq.n	800118e <SAI_InitI2S+0xae>
 8001150:	2000      	movs	r0, #0
 8001152:	e02a      	b.n	80011aa <SAI_InitI2S+0xca>
 8001154:	2480      	movs	r4, #128	; 0x80
 8001156:	6344      	str	r4, [r0, #52]	; 0x34
 8001158:	085b      	lsrs	r3, r3, #1
 800115a:	019d      	lsls	r5, r3, #6
 800115c:	6405      	str	r5, [r0, #64]	; 0x40
 800115e:	015b      	lsls	r3, r3, #5
 8001160:	6443      	str	r3, [r0, #68]	; 0x44
 8001162:	6584      	str	r4, [r0, #88]	; 0x58
 8001164:	e7f2      	b.n	800114c <SAI_InitI2S+0x6c>
 8001166:	24c0      	movs	r4, #192	; 0xc0
 8001168:	6344      	str	r4, [r0, #52]	; 0x34
 800116a:	085b      	lsrs	r3, r3, #1
 800116c:	019c      	lsls	r4, r3, #6
 800116e:	6404      	str	r4, [r0, #64]	; 0x40
 8001170:	015b      	lsls	r3, r3, #5
 8001172:	6443      	str	r3, [r0, #68]	; 0x44
 8001174:	2380      	movs	r3, #128	; 0x80
 8001176:	6583      	str	r3, [r0, #88]	; 0x58
 8001178:	e7e8      	b.n	800114c <SAI_InitI2S+0x6c>
 800117a:	24e0      	movs	r4, #224	; 0xe0
 800117c:	6344      	str	r4, [r0, #52]	; 0x34
 800117e:	085b      	lsrs	r3, r3, #1
 8001180:	019c      	lsls	r4, r3, #6
 8001182:	6404      	str	r4, [r0, #64]	; 0x40
 8001184:	015b      	lsls	r3, r3, #5
 8001186:	6443      	str	r3, [r0, #68]	; 0x44
 8001188:	2380      	movs	r3, #128	; 0x80
 800118a:	6583      	str	r3, [r0, #88]	; 0x58
 800118c:	e7de      	b.n	800114c <SAI_InitI2S+0x6c>
 800118e:	2a01      	cmp	r2, #1
 8001190:	d003      	beq.n	800119a <SAI_InitI2S+0xba>
 8001192:	2a02      	cmp	r2, #2
 8001194:	d004      	beq.n	80011a0 <SAI_InitI2S+0xc0>
 8001196:	2000      	movs	r0, #0
 8001198:	e007      	b.n	80011aa <SAI_InitI2S+0xca>
 800119a:	2310      	movs	r3, #16
 800119c:	6543      	str	r3, [r0, #84]	; 0x54
 800119e:	e7f8      	b.n	8001192 <SAI_InitI2S+0xb2>
 80011a0:	2308      	movs	r3, #8
 80011a2:	6543      	str	r3, [r0, #84]	; 0x54
 80011a4:	2000      	movs	r0, #0
 80011a6:	e000      	b.n	80011aa <SAI_InitI2S+0xca>
 80011a8:	2001      	movs	r0, #1
 80011aa:	bc30      	pop	{r4, r5}
 80011ac:	4770      	bx	lr
 80011ae:	2001      	movs	r0, #1
 80011b0:	e7fb      	b.n	80011aa <SAI_InitI2S+0xca>
 80011b2:	2001      	movs	r0, #1
 80011b4:	e7f9      	b.n	80011aa <SAI_InitI2S+0xca>

080011b6 <SAI_InitPCM>:
 80011b6:	b430      	push	{r4, r5}
 80011b8:	2400      	movs	r4, #0
 80011ba:	6304      	str	r4, [r0, #48]	; 0x30
 80011bc:	6384      	str	r4, [r0, #56]	; 0x38
 80011be:	6844      	ldr	r4, [r0, #4]
 80011c0:	b124      	cbz	r4, 80011cc <SAI_InitPCM+0x16>
 80011c2:	2c02      	cmp	r4, #2
 80011c4:	d002      	beq.n	80011cc <SAI_InitPCM+0x16>
 80011c6:	2400      	movs	r4, #0
 80011c8:	63c4      	str	r4, [r0, #60]	; 0x3c
 80011ca:	e001      	b.n	80011d0 <SAI_InitPCM+0x1a>
 80011cc:	2401      	movs	r4, #1
 80011ce:	63c4      	str	r4, [r0, #60]	; 0x3c
 80011d0:	2400      	movs	r4, #0
 80011d2:	6484      	str	r4, [r0, #72]	; 0x48
 80011d4:	f44f 3500 	mov.w	r5, #131072	; 0x20000
 80011d8:	64c5      	str	r5, [r0, #76]	; 0x4c
 80011da:	f44f 2580 	mov.w	r5, #262144	; 0x40000
 80011de:	6505      	str	r5, [r0, #80]	; 0x50
 80011e0:	6544      	str	r4, [r0, #84]	; 0x54
 80011e2:	65c3      	str	r3, [r0, #92]	; 0x5c
 80011e4:	f64f 74ff 	movw	r4, #65535	; 0xffff
 80011e8:	6604      	str	r4, [r0, #96]	; 0x60
 80011ea:	2903      	cmp	r1, #3
 80011ec:	d009      	beq.n	8001202 <SAI_InitPCM+0x4c>
 80011ee:	2904      	cmp	r1, #4
 80011f0:	d129      	bne.n	8001246 <SAI_InitPCM+0x90>
 80011f2:	2101      	movs	r1, #1
 80011f4:	6441      	str	r1, [r0, #68]	; 0x44
 80011f6:	2a03      	cmp	r2, #3
 80011f8:	d828      	bhi.n	800124c <SAI_InitPCM+0x96>
 80011fa:	e8df f002 	tbb	[pc, r2]
 80011fe:	0d05      	.short	0x0d05
 8001200:	1c14      	.short	0x1c14
 8001202:	210d      	movs	r1, #13
 8001204:	6441      	str	r1, [r0, #68]	; 0x44
 8001206:	e7f6      	b.n	80011f6 <SAI_InitPCM+0x40>
 8001208:	2280      	movs	r2, #128	; 0x80
 800120a:	6342      	str	r2, [r0, #52]	; 0x34
 800120c:	011b      	lsls	r3, r3, #4
 800120e:	6403      	str	r3, [r0, #64]	; 0x40
 8001210:	2340      	movs	r3, #64	; 0x40
 8001212:	6583      	str	r3, [r0, #88]	; 0x58
 8001214:	2000      	movs	r0, #0
 8001216:	e017      	b.n	8001248 <SAI_InitPCM+0x92>
 8001218:	2280      	movs	r2, #128	; 0x80
 800121a:	6342      	str	r2, [r0, #52]	; 0x34
 800121c:	015b      	lsls	r3, r3, #5
 800121e:	6403      	str	r3, [r0, #64]	; 0x40
 8001220:	6582      	str	r2, [r0, #88]	; 0x58
 8001222:	2000      	movs	r0, #0
 8001224:	e010      	b.n	8001248 <SAI_InitPCM+0x92>
 8001226:	22c0      	movs	r2, #192	; 0xc0
 8001228:	6342      	str	r2, [r0, #52]	; 0x34
 800122a:	015b      	lsls	r3, r3, #5
 800122c:	6403      	str	r3, [r0, #64]	; 0x40
 800122e:	2380      	movs	r3, #128	; 0x80
 8001230:	6583      	str	r3, [r0, #88]	; 0x58
 8001232:	2000      	movs	r0, #0
 8001234:	e008      	b.n	8001248 <SAI_InitPCM+0x92>
 8001236:	22e0      	movs	r2, #224	; 0xe0
 8001238:	6342      	str	r2, [r0, #52]	; 0x34
 800123a:	015b      	lsls	r3, r3, #5
 800123c:	6403      	str	r3, [r0, #64]	; 0x40
 800123e:	2380      	movs	r3, #128	; 0x80
 8001240:	6583      	str	r3, [r0, #88]	; 0x58
 8001242:	2000      	movs	r0, #0
 8001244:	e000      	b.n	8001248 <SAI_InitPCM+0x92>
 8001246:	2001      	movs	r0, #1
 8001248:	bc30      	pop	{r4, r5}
 800124a:	4770      	bx	lr
 800124c:	2001      	movs	r0, #1
 800124e:	e7fb      	b.n	8001248 <SAI_InitPCM+0x92>

08001250 <SAI_Disable>:
 8001250:	b538      	push	{r3, r4, r5, lr}
 8001252:	4604      	mov	r4, r0
 8001254:	f7ff ff3e 	bl	80010d4 <HAL_GetTick>
 8001258:	4605      	mov	r5, r0
 800125a:	6822      	ldr	r2, [r4, #0]
 800125c:	6813      	ldr	r3, [r2, #0]
 800125e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001262:	6013      	str	r3, [r2, #0]
 8001264:	6823      	ldr	r3, [r4, #0]
 8001266:	681b      	ldr	r3, [r3, #0]
 8001268:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 800126c:	d00c      	beq.n	8001288 <SAI_Disable+0x38>
 800126e:	f7ff ff31 	bl	80010d4 <HAL_GetTick>
 8001272:	1b40      	subs	r0, r0, r5
 8001274:	2804      	cmp	r0, #4
 8001276:	d9f5      	bls.n	8001264 <SAI_Disable+0x14>
 8001278:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
 800127c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001280:	f8c4 3080 	str.w	r3, [r4, #128]	; 0x80
 8001284:	2003      	movs	r0, #3
 8001286:	bd38      	pop	{r3, r4, r5, pc}
 8001288:	2000      	movs	r0, #0
 800128a:	bd38      	pop	{r3, r4, r5, pc}

0800128c <HAL_SAI_Init>:
 800128c:	2800      	cmp	r0, #0
 800128e:	f000 80dd 	beq.w	800144c <HAL_SAI_Init+0x1c0>
 8001292:	b570      	push	{r4, r5, r6, lr}
 8001294:	4604      	mov	r4, r0
 8001296:	f890 307d 	ldrb.w	r3, [r0, #125]	; 0x7d
 800129a:	2b00      	cmp	r3, #0
 800129c:	d04b      	beq.n	8001336 <HAL_SAI_Init+0xaa>
 800129e:	2302      	movs	r3, #2
 80012a0:	f884 307d 	strb.w	r3, [r4, #125]	; 0x7d
 80012a4:	4620      	mov	r0, r4
 80012a6:	f7ff ffd3 	bl	8001250 <SAI_Disable>
 80012aa:	68e3      	ldr	r3, [r4, #12]
 80012ac:	2b01      	cmp	r3, #1
 80012ae:	d049      	beq.n	8001344 <HAL_SAI_Init+0xb8>
 80012b0:	2b02      	cmp	r3, #2
 80012b2:	d045      	beq.n	8001340 <HAL_SAI_Init+0xb4>
 80012b4:	2200      	movs	r2, #0
 80012b6:	68a3      	ldr	r3, [r4, #8]
 80012b8:	2b02      	cmp	r3, #2
 80012ba:	d045      	beq.n	8001348 <HAL_SAI_Init+0xbc>
 80012bc:	2b03      	cmp	r3, #3
 80012be:	d046      	beq.n	800134e <HAL_SAI_Init+0xc2>
 80012c0:	2b01      	cmp	r3, #1
 80012c2:	d049      	beq.n	8001358 <HAL_SAI_Init+0xcc>
 80012c4:	2500      	movs	r5, #0
 80012c6:	6823      	ldr	r3, [r4, #0]
 80012c8:	4961      	ldr	r1, [pc, #388]	; (8001450 <HAL_SAI_Init+0x1c4>)
 80012ca:	428b      	cmp	r3, r1
 80012cc:	d047      	beq.n	800135e <HAL_SAI_Init+0xd2>
 80012ce:	3120      	adds	r1, #32
 80012d0:	428b      	cmp	r3, r1
 80012d2:	d044      	beq.n	800135e <HAL_SAI_Init+0xd2>
 80012d4:	4b5f      	ldr	r3, [pc, #380]	; (8001454 <HAL_SAI_Init+0x1c8>)
 80012d6:	601a      	str	r2, [r3, #0]
 80012d8:	69e3      	ldr	r3, [r4, #28]
 80012da:	b313      	cbz	r3, 8001322 <HAL_SAI_Init+0x96>
 80012dc:	6823      	ldr	r3, [r4, #0]
 80012de:	4a5c      	ldr	r2, [pc, #368]	; (8001450 <HAL_SAI_Init+0x1c4>)
 80012e0:	4293      	cmp	r3, r2
 80012e2:	d03f      	beq.n	8001364 <HAL_SAI_Init+0xd8>
 80012e4:	3220      	adds	r2, #32
 80012e6:	4293      	cmp	r3, r2
 80012e8:	d03c      	beq.n	8001364 <HAL_SAI_Init+0xd8>
 80012ea:	2000      	movs	r0, #0
 80012ec:	6823      	ldr	r3, [r4, #0]
 80012ee:	4a5a      	ldr	r2, [pc, #360]	; (8001458 <HAL_SAI_Init+0x1cc>)
 80012f0:	4293      	cmp	r3, r2
 80012f2:	d03c      	beq.n	800136e <HAL_SAI_Init+0xe2>
 80012f4:	3220      	adds	r2, #32
 80012f6:	4293      	cmp	r3, r2
 80012f8:	d039      	beq.n	800136e <HAL_SAI_Init+0xe2>
 80012fa:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 80012fe:	0041      	lsls	r1, r0, #1
 8001300:	69e3      	ldr	r3, [r4, #28]
 8001302:	025b      	lsls	r3, r3, #9
 8001304:	fbb1 f1f3 	udiv	r1, r1, r3
 8001308:	4b54      	ldr	r3, [pc, #336]	; (800145c <HAL_SAI_Init+0x1d0>)
 800130a:	fba3 2301 	umull	r2, r3, r3, r1
 800130e:	08db      	lsrs	r3, r3, #3
 8001310:	6223      	str	r3, [r4, #32]
 8001312:	eb03 0083 	add.w	r0, r3, r3, lsl #2
 8001316:	0042      	lsls	r2, r0, #1
 8001318:	1a8a      	subs	r2, r1, r2
 800131a:	2a08      	cmp	r2, #8
 800131c:	d901      	bls.n	8001322 <HAL_SAI_Init+0x96>
 800131e:	3301      	adds	r3, #1
 8001320:	6223      	str	r3, [r4, #32]
 8001322:	6863      	ldr	r3, [r4, #4]
 8001324:	b343      	cbz	r3, 8001378 <HAL_SAI_Init+0xec>
 8001326:	2b02      	cmp	r3, #2
 8001328:	d026      	beq.n	8001378 <HAL_SAI_Init+0xec>
 800132a:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 800132c:	2b01      	cmp	r3, #1
 800132e:	f000 808a 	beq.w	8001446 <HAL_SAI_Init+0x1ba>
 8001332:	2300      	movs	r3, #0
 8001334:	e025      	b.n	8001382 <HAL_SAI_Init+0xf6>
 8001336:	f880 307c 	strb.w	r3, [r0, #124]	; 0x7c
 800133a:	f7ff f8ff 	bl	800053c <HAL_SAI_MspInit>
 800133e:	e7ae      	b.n	800129e <HAL_SAI_Init+0x12>
 8001340:	2220      	movs	r2, #32
 8001342:	e7b8      	b.n	80012b6 <HAL_SAI_Init+0x2a>
 8001344:	2210      	movs	r2, #16
 8001346:	e7b6      	b.n	80012b6 <HAL_SAI_Init+0x2a>
 8001348:	f44f 6500 	mov.w	r5, #2048	; 0x800
 800134c:	e7bb      	b.n	80012c6 <HAL_SAI_Init+0x3a>
 800134e:	f042 0201 	orr.w	r2, r2, #1
 8001352:	f44f 6500 	mov.w	r5, #2048	; 0x800
 8001356:	e7b6      	b.n	80012c6 <HAL_SAI_Init+0x3a>
 8001358:	f44f 6580 	mov.w	r5, #1024	; 0x400
 800135c:	e7b3      	b.n	80012c6 <HAL_SAI_Init+0x3a>
 800135e:	4b40      	ldr	r3, [pc, #256]	; (8001460 <HAL_SAI_Init+0x1d4>)
 8001360:	601a      	str	r2, [r3, #0]
 8001362:	e7b9      	b.n	80012d8 <HAL_SAI_Init+0x4c>
 8001364:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8001368:	f000 f9a8 	bl	80016bc <HAL_RCCEx_GetPeriphCLKFreq>
 800136c:	e7be      	b.n	80012ec <HAL_SAI_Init+0x60>
 800136e:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 8001372:	f000 f9a3 	bl	80016bc <HAL_RCCEx_GetPeriphCLKFreq>
 8001376:	e7c0      	b.n	80012fa <HAL_SAI_Init+0x6e>
 8001378:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 800137a:	2b01      	cmp	r3, #1
 800137c:	d061      	beq.n	8001442 <HAL_SAI_Init+0x1b6>
 800137e:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001382:	6822      	ldr	r2, [r4, #0]
 8001384:	6810      	ldr	r0, [r2, #0]
 8001386:	4937      	ldr	r1, [pc, #220]	; (8001464 <HAL_SAI_Init+0x1d8>)
 8001388:	4001      	ands	r1, r0
 800138a:	6011      	str	r1, [r2, #0]
 800138c:	6820      	ldr	r0, [r4, #0]
 800138e:	6801      	ldr	r1, [r0, #0]
 8001390:	6862      	ldr	r2, [r4, #4]
 8001392:	6b26      	ldr	r6, [r4, #48]	; 0x30
 8001394:	4332      	orrs	r2, r6
 8001396:	6b66      	ldr	r6, [r4, #52]	; 0x34
 8001398:	4332      	orrs	r2, r6
 800139a:	6ba6      	ldr	r6, [r4, #56]	; 0x38
 800139c:	4332      	orrs	r2, r6
 800139e:	4313      	orrs	r3, r2
 80013a0:	432b      	orrs	r3, r5
 80013a2:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80013a4:	432b      	orrs	r3, r5
 80013a6:	6925      	ldr	r5, [r4, #16]
 80013a8:	432b      	orrs	r3, r5
 80013aa:	6965      	ldr	r5, [r4, #20]
 80013ac:	432b      	orrs	r3, r5
 80013ae:	6a22      	ldr	r2, [r4, #32]
 80013b0:	ea43 5302 	orr.w	r3, r3, r2, lsl #20
 80013b4:	430b      	orrs	r3, r1
 80013b6:	6003      	str	r3, [r0, #0]
 80013b8:	6822      	ldr	r2, [r4, #0]
 80013ba:	6853      	ldr	r3, [r2, #4]
 80013bc:	f423 4360 	bic.w	r3, r3, #57344	; 0xe000
 80013c0:	f023 030f 	bic.w	r3, r3, #15
 80013c4:	6053      	str	r3, [r2, #4]
 80013c6:	6821      	ldr	r1, [r4, #0]
 80013c8:	684a      	ldr	r2, [r1, #4]
 80013ca:	69a3      	ldr	r3, [r4, #24]
 80013cc:	6aa0      	ldr	r0, [r4, #40]	; 0x28
 80013ce:	4303      	orrs	r3, r0
 80013d0:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 80013d2:	4303      	orrs	r3, r0
 80013d4:	4313      	orrs	r3, r2
 80013d6:	604b      	str	r3, [r1, #4]
 80013d8:	6822      	ldr	r2, [r4, #0]
 80013da:	6891      	ldr	r1, [r2, #8]
 80013dc:	4b22      	ldr	r3, [pc, #136]	; (8001468 <HAL_SAI_Init+0x1dc>)
 80013de:	400b      	ands	r3, r1
 80013e0:	6093      	str	r3, [r2, #8]
 80013e2:	6820      	ldr	r0, [r4, #0]
 80013e4:	6882      	ldr	r2, [r0, #8]
 80013e6:	6c23      	ldr	r3, [r4, #64]	; 0x40
 80013e8:	3b01      	subs	r3, #1
 80013ea:	6d21      	ldr	r1, [r4, #80]	; 0x50
 80013ec:	430b      	orrs	r3, r1
 80013ee:	6ca1      	ldr	r1, [r4, #72]	; 0x48
 80013f0:	430b      	orrs	r3, r1
 80013f2:	6ce1      	ldr	r1, [r4, #76]	; 0x4c
 80013f4:	430b      	orrs	r3, r1
 80013f6:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80013f8:	3901      	subs	r1, #1
 80013fa:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80013fe:	4313      	orrs	r3, r2
 8001400:	6083      	str	r3, [r0, #8]
 8001402:	6822      	ldr	r2, [r4, #0]
 8001404:	68d3      	ldr	r3, [r2, #12]
 8001406:	f423 637d 	bic.w	r3, r3, #4048	; 0xfd0
 800140a:	f023 030f 	bic.w	r3, r3, #15
 800140e:	041b      	lsls	r3, r3, #16
 8001410:	0c1b      	lsrs	r3, r3, #16
 8001412:	60d3      	str	r3, [r2, #12]
 8001414:	6820      	ldr	r0, [r4, #0]
 8001416:	68c2      	ldr	r2, [r0, #12]
 8001418:	6d63      	ldr	r3, [r4, #84]	; 0x54
 800141a:	6da1      	ldr	r1, [r4, #88]	; 0x58
 800141c:	430b      	orrs	r3, r1
 800141e:	6e21      	ldr	r1, [r4, #96]	; 0x60
 8001420:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8001424:	6de1      	ldr	r1, [r4, #92]	; 0x5c
 8001426:	3901      	subs	r1, #1
 8001428:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800142c:	4313      	orrs	r3, r2
 800142e:	60c3      	str	r3, [r0, #12]
 8001430:	2000      	movs	r0, #0
 8001432:	f8c4 0080 	str.w	r0, [r4, #128]	; 0x80
 8001436:	2301      	movs	r3, #1
 8001438:	f884 307d 	strb.w	r3, [r4, #125]	; 0x7d
 800143c:	f884 007c 	strb.w	r0, [r4, #124]	; 0x7c
 8001440:	bd70      	pop	{r4, r5, r6, pc}
 8001442:	2300      	movs	r3, #0
 8001444:	e79d      	b.n	8001382 <HAL_SAI_Init+0xf6>
 8001446:	f44f 7300 	mov.w	r3, #512	; 0x200
 800144a:	e79a      	b.n	8001382 <HAL_SAI_Init+0xf6>
 800144c:	2001      	movs	r0, #1
 800144e:	4770      	bx	lr
 8001450:	40015404 	.word	0x40015404
 8001454:	40015800 	.word	0x40015800
 8001458:	40015804 	.word	0x40015804
 800145c:	cccccccd 	.word	0xcccccccd
 8001460:	40015400 	.word	0x40015400
 8001464:	ff05c010 	.word	0xff05c010
 8001468:	fff88000 	.word	0xfff88000

0800146c <HAL_SAI_InitProtocol>:
 800146c:	b510      	push	{r4, lr}
 800146e:	4604      	mov	r4, r0
 8001470:	2904      	cmp	r1, #4
 8001472:	d80d      	bhi.n	8001490 <HAL_SAI_InitProtocol+0x24>
 8001474:	e8df f001 	tbb	[pc, r1]
 8001478:	08030303 	.word	0x08030303
 800147c:	08          	.byte	0x08
 800147d:	00          	.byte	0x00
 800147e:	4620      	mov	r0, r4
 8001480:	f7ff fe2e 	bl	80010e0 <SAI_InitI2S>
 8001484:	b130      	cbz	r0, 8001494 <HAL_SAI_InitProtocol+0x28>
 8001486:	bd10      	pop	{r4, pc}
 8001488:	4620      	mov	r0, r4
 800148a:	f7ff fe94 	bl	80011b6 <SAI_InitPCM>
 800148e:	e7f9      	b.n	8001484 <HAL_SAI_InitProtocol+0x18>
 8001490:	2001      	movs	r0, #1
 8001492:	e7f7      	b.n	8001484 <HAL_SAI_InitProtocol+0x18>
 8001494:	4620      	mov	r0, r4
 8001496:	f7ff fef9 	bl	800128c <HAL_SAI_Init>
 800149a:	e7f4      	b.n	8001486 <HAL_SAI_InitProtocol+0x1a>

0800149c <NMI_Handler>:
 800149c:	4770      	bx	lr

0800149e <HardFault_Handler>:
 800149e:	e7fe      	b.n	800149e <HardFault_Handler>

080014a0 <MemManage_Handler>:
 80014a0:	e7fe      	b.n	80014a0 <MemManage_Handler>

080014a2 <BusFault_Handler>:
 80014a2:	e7fe      	b.n	80014a2 <BusFault_Handler>

080014a4 <UsageFault_Handler>:
 80014a4:	e7fe      	b.n	80014a4 <UsageFault_Handler>

080014a6 <SVC_Handler>:
 80014a6:	4770      	bx	lr

080014a8 <DebugMon_Handler>:
 80014a8:	4770      	bx	lr

080014aa <PendSV_Handler>:
 80014aa:	4770      	bx	lr

080014ac <SysTick_Handler>:
 80014ac:	b508      	push	{r3, lr}
 80014ae:	f7ff fe09 	bl	80010c4 <HAL_IncTick>
 80014b2:	f7fe ff50 	bl	8000356 <HAL_SYSTICK_IRQHandler>
 80014b6:	bd08      	pop	{r3, pc}

080014b8 <ADC1_2_IRQHandler>:
 80014b8:	b510      	push	{r4, lr}
 80014ba:	4b08      	ldr	r3, [pc, #32]	; (80014dc <ADC1_2_IRQHandler+0x24>)
 80014bc:	6c1c      	ldr	r4, [r3, #64]	; 0x40
 80014be:	b224      	sxth	r4, r4
 80014c0:	4620      	mov	r0, r4
 80014c2:	f001 fc01 	bl	8002cc8 <delay_sample>
 80014c6:	2214      	movs	r2, #20
 80014c8:	210a      	movs	r1, #10
 80014ca:	4620      	mov	r0, r4
 80014cc:	f001 fc48 	bl	8002d60 <flange>
 80014d0:	2232      	movs	r2, #50	; 0x32
 80014d2:	2105      	movs	r1, #5
 80014d4:	f001 fcac 	bl	8002e30 <tanh_OD>
 80014d8:	bd10      	pop	{r4, pc}
 80014da:	bf00      	nop
 80014dc:	50040000 	.word	0x50040000

080014e0 <TIM2_IRQHandler>:
 80014e0:	4770      	bx	lr

080014e2 <TIM3_IRQHandler>:
 80014e2:	4770      	bx	lr

080014e4 <TIM4_IRQHandler>:
 80014e4:	4770      	bx	lr

080014e6 <LPTIM1_IRQHandler>:
 80014e6:	4770      	bx	lr

080014e8 <HAL_GPIO_Init>:
 80014e8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80014ea:	b083      	sub	sp, #12
 80014ec:	2300      	movs	r3, #0
 80014ee:	e09a      	b.n	8001626 <HAL_GPIO_Init+0x13e>
 80014f0:	ea4f 0ed3 	mov.w	lr, r3, lsr #3
 80014f4:	f10e 0e08 	add.w	lr, lr, #8
 80014f8:	f850 402e 	ldr.w	r4, [r0, lr, lsl #2]
 80014fc:	f003 0607 	and.w	r6, r3, #7
 8001500:	00b6      	lsls	r6, r6, #2
 8001502:	270f      	movs	r7, #15
 8001504:	40b7      	lsls	r7, r6
 8001506:	ea24 0407 	bic.w	r4, r4, r7
 800150a:	690f      	ldr	r7, [r1, #16]
 800150c:	fa07 f606 	lsl.w	r6, r7, r6
 8001510:	4334      	orrs	r4, r6
 8001512:	f840 402e 	str.w	r4, [r0, lr, lsl #2]
 8001516:	e095      	b.n	8001644 <HAL_GPIO_Init+0x15c>
 8001518:	6886      	ldr	r6, [r0, #8]
 800151a:	4026      	ands	r6, r4
 800151c:	68cf      	ldr	r7, [r1, #12]
 800151e:	fa07 f70e 	lsl.w	r7, r7, lr
 8001522:	433e      	orrs	r6, r7
 8001524:	6086      	str	r6, [r0, #8]
 8001526:	6846      	ldr	r6, [r0, #4]
 8001528:	ea26 0605 	bic.w	r6, r6, r5
 800152c:	684f      	ldr	r7, [r1, #4]
 800152e:	f3c7 1700 	ubfx	r7, r7, #4, #1
 8001532:	409f      	lsls	r7, r3
 8001534:	433e      	orrs	r6, r7
 8001536:	6046      	str	r6, [r0, #4]
 8001538:	684e      	ldr	r6, [r1, #4]
 800153a:	f006 0703 	and.w	r7, r6, #3
 800153e:	2f03      	cmp	r7, #3
 8001540:	f000 809b 	beq.w	800167a <HAL_GPIO_Init+0x192>
 8001544:	68c5      	ldr	r5, [r0, #12]
 8001546:	402c      	ands	r4, r5
 8001548:	688d      	ldr	r5, [r1, #8]
 800154a:	fa05 f50e 	lsl.w	r5, r5, lr
 800154e:	432c      	orrs	r4, r5
 8001550:	60c4      	str	r4, [r0, #12]
 8001552:	684c      	ldr	r4, [r1, #4]
 8001554:	f014 5f80 	tst.w	r4, #268435456	; 0x10000000
 8001558:	d064      	beq.n	8001624 <HAL_GPIO_Init+0x13c>
 800155a:	4c54      	ldr	r4, [pc, #336]	; (80016ac <HAL_GPIO_Init+0x1c4>)
 800155c:	6e25      	ldr	r5, [r4, #96]	; 0x60
 800155e:	f045 0501 	orr.w	r5, r5, #1
 8001562:	6625      	str	r5, [r4, #96]	; 0x60
 8001564:	6e24      	ldr	r4, [r4, #96]	; 0x60
 8001566:	f004 0401 	and.w	r4, r4, #1
 800156a:	9401      	str	r4, [sp, #4]
 800156c:	9c01      	ldr	r4, [sp, #4]
 800156e:	089c      	lsrs	r4, r3, #2
 8001570:	1ca6      	adds	r6, r4, #2
 8001572:	4d4f      	ldr	r5, [pc, #316]	; (80016b0 <HAL_GPIO_Init+0x1c8>)
 8001574:	f855 5026 	ldr.w	r5, [r5, r6, lsl #2]
 8001578:	f003 0603 	and.w	r6, r3, #3
 800157c:	00b7      	lsls	r7, r6, #2
 800157e:	260f      	movs	r6, #15
 8001580:	40be      	lsls	r6, r7
 8001582:	ea25 0506 	bic.w	r5, r5, r6
 8001586:	f1b0 4f90 	cmp.w	r0, #1207959552	; 0x48000000
 800158a:	f000 8081 	beq.w	8001690 <HAL_GPIO_Init+0x1a8>
 800158e:	4e49      	ldr	r6, [pc, #292]	; (80016b4 <HAL_GPIO_Init+0x1cc>)
 8001590:	42b0      	cmp	r0, r6
 8001592:	d07f      	beq.n	8001694 <HAL_GPIO_Init+0x1ac>
 8001594:	f506 6680 	add.w	r6, r6, #1024	; 0x400
 8001598:	42b0      	cmp	r0, r6
 800159a:	d07d      	beq.n	8001698 <HAL_GPIO_Init+0x1b0>
 800159c:	f506 6680 	add.w	r6, r6, #1024	; 0x400
 80015a0:	42b0      	cmp	r0, r6
 80015a2:	d07b      	beq.n	800169c <HAL_GPIO_Init+0x1b4>
 80015a4:	f506 6680 	add.w	r6, r6, #1024	; 0x400
 80015a8:	42b0      	cmp	r0, r6
 80015aa:	d079      	beq.n	80016a0 <HAL_GPIO_Init+0x1b8>
 80015ac:	f506 6680 	add.w	r6, r6, #1024	; 0x400
 80015b0:	42b0      	cmp	r0, r6
 80015b2:	d077      	beq.n	80016a4 <HAL_GPIO_Init+0x1bc>
 80015b4:	f506 6680 	add.w	r6, r6, #1024	; 0x400
 80015b8:	42b0      	cmp	r0, r6
 80015ba:	d067      	beq.n	800168c <HAL_GPIO_Init+0x1a4>
 80015bc:	2607      	movs	r6, #7
 80015be:	40be      	lsls	r6, r7
 80015c0:	4335      	orrs	r5, r6
 80015c2:	3402      	adds	r4, #2
 80015c4:	4e3a      	ldr	r6, [pc, #232]	; (80016b0 <HAL_GPIO_Init+0x1c8>)
 80015c6:	f846 5024 	str.w	r5, [r6, r4, lsl #2]
 80015ca:	4c3b      	ldr	r4, [pc, #236]	; (80016b8 <HAL_GPIO_Init+0x1d0>)
 80015cc:	6825      	ldr	r5, [r4, #0]
 80015ce:	43d4      	mvns	r4, r2
 80015d0:	ea05 0604 	and.w	r6, r5, r4
 80015d4:	684f      	ldr	r7, [r1, #4]
 80015d6:	f417 3f80 	tst.w	r7, #65536	; 0x10000
 80015da:	d001      	beq.n	80015e0 <HAL_GPIO_Init+0xf8>
 80015dc:	ea42 0605 	orr.w	r6, r2, r5
 80015e0:	4d35      	ldr	r5, [pc, #212]	; (80016b8 <HAL_GPIO_Init+0x1d0>)
 80015e2:	602e      	str	r6, [r5, #0]
 80015e4:	686d      	ldr	r5, [r5, #4]
 80015e6:	ea04 0605 	and.w	r6, r4, r5
 80015ea:	684f      	ldr	r7, [r1, #4]
 80015ec:	f417 3f00 	tst.w	r7, #131072	; 0x20000
 80015f0:	d001      	beq.n	80015f6 <HAL_GPIO_Init+0x10e>
 80015f2:	ea42 0605 	orr.w	r6, r2, r5
 80015f6:	4d30      	ldr	r5, [pc, #192]	; (80016b8 <HAL_GPIO_Init+0x1d0>)
 80015f8:	606e      	str	r6, [r5, #4]
 80015fa:	68ad      	ldr	r5, [r5, #8]
 80015fc:	ea04 0605 	and.w	r6, r4, r5
 8001600:	684f      	ldr	r7, [r1, #4]
 8001602:	f417 1f80 	tst.w	r7, #1048576	; 0x100000
 8001606:	d001      	beq.n	800160c <HAL_GPIO_Init+0x124>
 8001608:	ea42 0605 	orr.w	r6, r2, r5
 800160c:	4d2a      	ldr	r5, [pc, #168]	; (80016b8 <HAL_GPIO_Init+0x1d0>)
 800160e:	60ae      	str	r6, [r5, #8]
 8001610:	68ed      	ldr	r5, [r5, #12]
 8001612:	402c      	ands	r4, r5
 8001614:	684e      	ldr	r6, [r1, #4]
 8001616:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 800161a:	d001      	beq.n	8001620 <HAL_GPIO_Init+0x138>
 800161c:	ea42 0405 	orr.w	r4, r2, r5
 8001620:	4a25      	ldr	r2, [pc, #148]	; (80016b8 <HAL_GPIO_Init+0x1d0>)
 8001622:	60d4      	str	r4, [r2, #12]
 8001624:	3301      	adds	r3, #1
 8001626:	680a      	ldr	r2, [r1, #0]
 8001628:	fa32 f403 	lsrs.w	r4, r2, r3
 800162c:	d03c      	beq.n	80016a8 <HAL_GPIO_Init+0x1c0>
 800162e:	2501      	movs	r5, #1
 8001630:	409d      	lsls	r5, r3
 8001632:	402a      	ands	r2, r5
 8001634:	d0f6      	beq.n	8001624 <HAL_GPIO_Init+0x13c>
 8001636:	684c      	ldr	r4, [r1, #4]
 8001638:	2c02      	cmp	r4, #2
 800163a:	f43f af59 	beq.w	80014f0 <HAL_GPIO_Init+0x8>
 800163e:	2c12      	cmp	r4, #18
 8001640:	f43f af56 	beq.w	80014f0 <HAL_GPIO_Init+0x8>
 8001644:	6806      	ldr	r6, [r0, #0]
 8001646:	ea4f 0e43 	mov.w	lr, r3, lsl #1
 800164a:	2403      	movs	r4, #3
 800164c:	fa04 f40e 	lsl.w	r4, r4, lr
 8001650:	43e4      	mvns	r4, r4
 8001652:	4026      	ands	r6, r4
 8001654:	684f      	ldr	r7, [r1, #4]
 8001656:	f007 0703 	and.w	r7, r7, #3
 800165a:	fa07 f70e 	lsl.w	r7, r7, lr
 800165e:	433e      	orrs	r6, r7
 8001660:	6006      	str	r6, [r0, #0]
 8001662:	684e      	ldr	r6, [r1, #4]
 8001664:	1e77      	subs	r7, r6, #1
 8001666:	2f01      	cmp	r7, #1
 8001668:	f67f af56 	bls.w	8001518 <HAL_GPIO_Init+0x30>
 800166c:	2e11      	cmp	r6, #17
 800166e:	f43f af53 	beq.w	8001518 <HAL_GPIO_Init+0x30>
 8001672:	2e12      	cmp	r6, #18
 8001674:	f47f af60 	bne.w	8001538 <HAL_GPIO_Init+0x50>
 8001678:	e74e      	b.n	8001518 <HAL_GPIO_Init+0x30>
 800167a:	6ac7      	ldr	r7, [r0, #44]	; 0x2c
 800167c:	ea27 0505 	bic.w	r5, r7, r5
 8001680:	f3c6 06c0 	ubfx	r6, r6, #3, #1
 8001684:	409e      	lsls	r6, r3
 8001686:	432e      	orrs	r6, r5
 8001688:	62c6      	str	r6, [r0, #44]	; 0x2c
 800168a:	e75b      	b.n	8001544 <HAL_GPIO_Init+0x5c>
 800168c:	2606      	movs	r6, #6
 800168e:	e796      	b.n	80015be <HAL_GPIO_Init+0xd6>
 8001690:	2600      	movs	r6, #0
 8001692:	e794      	b.n	80015be <HAL_GPIO_Init+0xd6>
 8001694:	2601      	movs	r6, #1
 8001696:	e792      	b.n	80015be <HAL_GPIO_Init+0xd6>
 8001698:	2602      	movs	r6, #2
 800169a:	e790      	b.n	80015be <HAL_GPIO_Init+0xd6>
 800169c:	2603      	movs	r6, #3
 800169e:	e78e      	b.n	80015be <HAL_GPIO_Init+0xd6>
 80016a0:	2604      	movs	r6, #4
 80016a2:	e78c      	b.n	80015be <HAL_GPIO_Init+0xd6>
 80016a4:	2605      	movs	r6, #5
 80016a6:	e78a      	b.n	80015be <HAL_GPIO_Init+0xd6>
 80016a8:	b003      	add	sp, #12
 80016aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80016ac:	40021000 	.word	0x40021000
 80016b0:	40010000 	.word	0x40010000
 80016b4:	48000400 	.word	0x48000400
 80016b8:	40010400 	.word	0x40010400

080016bc <HAL_RCCEx_GetPeriphCLKFreq>:
 80016bc:	b508      	push	{r3, lr}
 80016be:	f5b0 3f00 	cmp.w	r0, #131072	; 0x20000
 80016c2:	d040      	beq.n	8001746 <HAL_RCCEx_GetPeriphCLKFreq+0x8a>
 80016c4:	4bc4      	ldr	r3, [pc, #784]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80016c6:	68db      	ldr	r3, [r3, #12]
 80016c8:	f003 0303 	and.w	r3, r3, #3
 80016cc:	2b01      	cmp	r3, #1
 80016ce:	d065      	beq.n	800179c <HAL_RCCEx_GetPeriphCLKFreq+0xe0>
 80016d0:	4bc1      	ldr	r3, [pc, #772]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80016d2:	68db      	ldr	r3, [r3, #12]
 80016d4:	f003 0303 	and.w	r3, r3, #3
 80016d8:	2b02      	cmp	r3, #2
 80016da:	d077      	beq.n	80017cc <HAL_RCCEx_GetPeriphCLKFreq+0x110>
 80016dc:	4bbe      	ldr	r3, [pc, #760]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80016de:	68db      	ldr	r3, [r3, #12]
 80016e0:	f003 0303 	and.w	r3, r3, #3
 80016e4:	2b03      	cmp	r3, #3
 80016e6:	d078      	beq.n	80017da <HAL_RCCEx_GetPeriphCLKFreq+0x11e>
 80016e8:	2100      	movs	r1, #0
 80016ea:	4abb      	ldr	r2, [pc, #748]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80016ec:	68d3      	ldr	r3, [r2, #12]
 80016ee:	f3c3 1302 	ubfx	r3, r3, #4, #3
 80016f2:	3301      	adds	r3, #1
 80016f4:	fbb1 f3f3 	udiv	r3, r1, r3
 80016f8:	f5b0 7f00 	cmp.w	r0, #512	; 0x200
 80016fc:	f000 8351 	beq.w	8001da2 <HAL_RCCEx_GetPeriphCLKFreq+0x6e6>
 8001700:	f200 80c1 	bhi.w	8001886 <HAL_RCCEx_GetPeriphCLKFreq+0x1ca>
 8001704:	2810      	cmp	r0, #16
 8001706:	f000 8263 	beq.w	8001bd0 <HAL_RCCEx_GetPeriphCLKFreq+0x514>
 800170a:	f200 8088 	bhi.w	800181e <HAL_RCCEx_GetPeriphCLKFreq+0x162>
 800170e:	2802      	cmp	r0, #2
 8001710:	f000 81f9 	beq.w	8001b06 <HAL_RCCEx_GetPeriphCLKFreq+0x44a>
 8001714:	d96e      	bls.n	80017f4 <HAL_RCCEx_GetPeriphCLKFreq+0x138>
 8001716:	2804      	cmp	r0, #4
 8001718:	f000 821b 	beq.w	8001b52 <HAL_RCCEx_GetPeriphCLKFreq+0x496>
 800171c:	2808      	cmp	r0, #8
 800171e:	f040 8135 	bne.w	800198c <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 8001722:	4bad      	ldr	r3, [pc, #692]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001724:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001728:	f013 03c0 	ands.w	r3, r3, #192	; 0xc0
 800172c:	f000 8237 	beq.w	8001b9e <HAL_RCCEx_GetPeriphCLKFreq+0x4e2>
 8001730:	2b40      	cmp	r3, #64	; 0x40
 8001732:	f000 8237 	beq.w	8001ba4 <HAL_RCCEx_GetPeriphCLKFreq+0x4e8>
 8001736:	2b80      	cmp	r3, #128	; 0x80
 8001738:	f000 8237 	beq.w	8001baa <HAL_RCCEx_GetPeriphCLKFreq+0x4ee>
 800173c:	2bc0      	cmp	r3, #192	; 0xc0
 800173e:	f000 823c 	beq.w	8001bba <HAL_RCCEx_GetPeriphCLKFreq+0x4fe>
 8001742:	2000      	movs	r0, #0
 8001744:	bd08      	pop	{r3, pc}
 8001746:	4ba4      	ldr	r3, [pc, #656]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001748:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800174c:	f403 7340 	and.w	r3, r3, #768	; 0x300
 8001750:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001754:	d007      	beq.n	8001766 <HAL_RCCEx_GetPeriphCLKFreq+0xaa>
 8001756:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800175a:	d00d      	beq.n	8001778 <HAL_RCCEx_GetPeriphCLKFreq+0xbc>
 800175c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
 8001760:	d013      	beq.n	800178a <HAL_RCCEx_GetPeriphCLKFreq+0xce>
 8001762:	2000      	movs	r0, #0
 8001764:	bd08      	pop	{r3, pc}
 8001766:	4a9c      	ldr	r2, [pc, #624]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001768:	f8d2 2090 	ldr.w	r2, [r2, #144]	; 0x90
 800176c:	f012 0f02 	tst.w	r2, #2
 8001770:	d0f1      	beq.n	8001756 <HAL_RCCEx_GetPeriphCLKFreq+0x9a>
 8001772:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001776:	bd08      	pop	{r3, pc}
 8001778:	4a97      	ldr	r2, [pc, #604]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 800177a:	f8d2 2094 	ldr.w	r2, [r2, #148]	; 0x94
 800177e:	f012 0f02 	tst.w	r2, #2
 8001782:	d0eb      	beq.n	800175c <HAL_RCCEx_GetPeriphCLKFreq+0xa0>
 8001784:	f44f 40fa 	mov.w	r0, #32000	; 0x7d00
 8001788:	bd08      	pop	{r3, pc}
 800178a:	4b93      	ldr	r3, [pc, #588]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 800178c:	681b      	ldr	r3, [r3, #0]
 800178e:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8001792:	d001      	beq.n	8001798 <HAL_RCCEx_GetPeriphCLKFreq+0xdc>
 8001794:	4891      	ldr	r0, [pc, #580]	; (80019dc <HAL_RCCEx_GetPeriphCLKFreq+0x320>)
 8001796:	bd08      	pop	{r3, pc}
 8001798:	2000      	movs	r0, #0
 800179a:	bd08      	pop	{r3, pc}
 800179c:	4b8e      	ldr	r3, [pc, #568]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 800179e:	681b      	ldr	r3, [r3, #0]
 80017a0:	f013 0f02 	tst.w	r3, #2
 80017a4:	d020      	beq.n	80017e8 <HAL_RCCEx_GetPeriphCLKFreq+0x12c>
 80017a6:	4b8c      	ldr	r3, [pc, #560]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017a8:	681b      	ldr	r3, [r3, #0]
 80017aa:	f013 0f08 	tst.w	r3, #8
 80017ae:	d007      	beq.n	80017c0 <HAL_RCCEx_GetPeriphCLKFreq+0x104>
 80017b0:	4b89      	ldr	r3, [pc, #548]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017b2:	681b      	ldr	r3, [r3, #0]
 80017b4:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80017b8:	4a89      	ldr	r2, [pc, #548]	; (80019e0 <HAL_RCCEx_GetPeriphCLKFreq+0x324>)
 80017ba:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 80017be:	e794      	b.n	80016ea <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 80017c0:	4b85      	ldr	r3, [pc, #532]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017c2:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80017c6:	f3c3 2303 	ubfx	r3, r3, #8, #4
 80017ca:	e7f5      	b.n	80017b8 <HAL_RCCEx_GetPeriphCLKFreq+0xfc>
 80017cc:	4b82      	ldr	r3, [pc, #520]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017ce:	681b      	ldr	r3, [r3, #0]
 80017d0:	f413 6f80 	tst.w	r3, #1024	; 0x400
 80017d4:	d00a      	beq.n	80017ec <HAL_RCCEx_GetPeriphCLKFreq+0x130>
 80017d6:	4983      	ldr	r1, [pc, #524]	; (80019e4 <HAL_RCCEx_GetPeriphCLKFreq+0x328>)
 80017d8:	e787      	b.n	80016ea <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 80017da:	4b7f      	ldr	r3, [pc, #508]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017dc:	681b      	ldr	r3, [r3, #0]
 80017de:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 80017e2:	d005      	beq.n	80017f0 <HAL_RCCEx_GetPeriphCLKFreq+0x134>
 80017e4:	4980      	ldr	r1, [pc, #512]	; (80019e8 <HAL_RCCEx_GetPeriphCLKFreq+0x32c>)
 80017e6:	e780      	b.n	80016ea <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 80017e8:	2100      	movs	r1, #0
 80017ea:	e77e      	b.n	80016ea <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 80017ec:	2100      	movs	r1, #0
 80017ee:	e77c      	b.n	80016ea <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 80017f0:	2100      	movs	r1, #0
 80017f2:	e77a      	b.n	80016ea <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 80017f4:	2801      	cmp	r0, #1
 80017f6:	f040 80c9 	bne.w	800198c <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 80017fa:	4b77      	ldr	r3, [pc, #476]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017fc:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001800:	f013 0303 	ands.w	r3, r3, #3
 8001804:	f000 8166 	beq.w	8001ad4 <HAL_RCCEx_GetPeriphCLKFreq+0x418>
 8001808:	2b01      	cmp	r3, #1
 800180a:	f000 8166 	beq.w	8001ada <HAL_RCCEx_GetPeriphCLKFreq+0x41e>
 800180e:	2b02      	cmp	r3, #2
 8001810:	f000 8166 	beq.w	8001ae0 <HAL_RCCEx_GetPeriphCLKFreq+0x424>
 8001814:	2b03      	cmp	r3, #3
 8001816:	f000 816b 	beq.w	8001af0 <HAL_RCCEx_GetPeriphCLKFreq+0x434>
 800181a:	2000      	movs	r0, #0
 800181c:	bd08      	pop	{r3, pc}
 800181e:	2840      	cmp	r0, #64	; 0x40
 8001820:	f000 826d 	beq.w	8001cfe <HAL_RCCEx_GetPeriphCLKFreq+0x642>
 8001824:	d917      	bls.n	8001856 <HAL_RCCEx_GetPeriphCLKFreq+0x19a>
 8001826:	2880      	cmp	r0, #128	; 0x80
 8001828:	f000 8289 	beq.w	8001d3e <HAL_RCCEx_GetPeriphCLKFreq+0x682>
 800182c:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8001830:	f040 80ac 	bne.w	800198c <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 8001834:	4b68      	ldr	r3, [pc, #416]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001836:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800183a:	f413 3340 	ands.w	r3, r3, #196608	; 0x30000
 800183e:	f000 829e 	beq.w	8001d7e <HAL_RCCEx_GetPeriphCLKFreq+0x6c2>
 8001842:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8001846:	f000 829d 	beq.w	8001d84 <HAL_RCCEx_GetPeriphCLKFreq+0x6c8>
 800184a:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 800184e:	f000 829c 	beq.w	8001d8a <HAL_RCCEx_GetPeriphCLKFreq+0x6ce>
 8001852:	2000      	movs	r0, #0
 8001854:	bd08      	pop	{r3, pc}
 8001856:	2820      	cmp	r0, #32
 8001858:	f040 8098 	bne.w	800198c <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 800185c:	4b5e      	ldr	r3, [pc, #376]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 800185e:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001862:	f413 6340 	ands.w	r3, r3, #3072	; 0xc00
 8001866:	f000 81dc 	beq.w	8001c22 <HAL_RCCEx_GetPeriphCLKFreq+0x566>
 800186a:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 800186e:	f000 81db 	beq.w	8001c28 <HAL_RCCEx_GetPeriphCLKFreq+0x56c>
 8001872:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
 8001876:	f000 81da 	beq.w	8001c2e <HAL_RCCEx_GetPeriphCLKFreq+0x572>
 800187a:	f5b3 6f40 	cmp.w	r3, #3072	; 0xc00
 800187e:	f000 81de 	beq.w	8001c3e <HAL_RCCEx_GetPeriphCLKFreq+0x582>
 8001882:	2000      	movs	r0, #0
 8001884:	bd08      	pop	{r3, pc}
 8001886:	f5b0 4f80 	cmp.w	r0, #16384	; 0x4000
 800188a:	f000 81e6 	beq.w	8001c5a <HAL_RCCEx_GetPeriphCLKFreq+0x59e>
 800188e:	d916      	bls.n	80018be <HAL_RCCEx_GetPeriphCLKFreq+0x202>
 8001890:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
 8001894:	f000 8222 	beq.w	8001cdc <HAL_RCCEx_GetPeriphCLKFreq+0x620>
 8001898:	d872      	bhi.n	8001980 <HAL_RCCEx_GetPeriphCLKFreq+0x2c4>
 800189a:	f5b0 4f00 	cmp.w	r0, #32768	; 0x8000
 800189e:	d175      	bne.n	800198c <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 80018a0:	4b4d      	ldr	r3, [pc, #308]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80018a2:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80018a6:	f013 4f80 	tst.w	r3, #1073741824	; 0x40000000
 80018aa:	f000 82cc 	beq.w	8001e46 <HAL_RCCEx_GetPeriphCLKFreq+0x78a>
 80018ae:	4b4a      	ldr	r3, [pc, #296]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80018b0:	681b      	ldr	r3, [r3, #0]
 80018b2:	f413 6f80 	tst.w	r3, #1024	; 0x400
 80018b6:	f000 82d7 	beq.w	8001e68 <HAL_RCCEx_GetPeriphCLKFreq+0x7ac>
 80018ba:	484a      	ldr	r0, [pc, #296]	; (80019e4 <HAL_RCCEx_GetPeriphCLKFreq+0x328>)
 80018bc:	bd08      	pop	{r3, pc}
 80018be:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
 80018c2:	d01b      	beq.n	80018fc <HAL_RCCEx_GetPeriphCLKFreq+0x240>
 80018c4:	d817      	bhi.n	80018f6 <HAL_RCCEx_GetPeriphCLKFreq+0x23a>
 80018c6:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
 80018ca:	d15f      	bne.n	800198c <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 80018cc:	4b42      	ldr	r3, [pc, #264]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80018ce:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80018d2:	f413 1340 	ands.w	r3, r3, #3145728	; 0x300000
 80018d6:	f000 8296 	beq.w	8001e06 <HAL_RCCEx_GetPeriphCLKFreq+0x74a>
 80018da:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 80018de:	f000 8295 	beq.w	8001e0c <HAL_RCCEx_GetPeriphCLKFreq+0x750>
 80018e2:	f5b3 1f00 	cmp.w	r3, #2097152	; 0x200000
 80018e6:	f000 829b 	beq.w	8001e20 <HAL_RCCEx_GetPeriphCLKFreq+0x764>
 80018ea:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 80018ee:	f000 829f 	beq.w	8001e30 <HAL_RCCEx_GetPeriphCLKFreq+0x774>
 80018f2:	2000      	movs	r0, #0
 80018f4:	bd08      	pop	{r3, pc}
 80018f6:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 80018fa:	d12d      	bne.n	8001958 <HAL_RCCEx_GetPeriphCLKFreq+0x29c>
 80018fc:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
 8001900:	d046      	beq.n	8001990 <HAL_RCCEx_GetPeriphCLKFreq+0x2d4>
 8001902:	4a35      	ldr	r2, [pc, #212]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001904:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
 8001908:	f002 7240 	and.w	r2, r2, #50331648	; 0x3000000
 800190c:	f1b2 7f40 	cmp.w	r2, #50331648	; 0x3000000
 8001910:	d04a      	beq.n	80019a8 <HAL_RCCEx_GetPeriphCLKFreq+0x2ec>
 8001912:	2000      	movs	r0, #0
 8001914:	2800      	cmp	r0, #0
 8001916:	f040 82a8 	bne.w	8001e6a <HAL_RCCEx_GetPeriphCLKFreq+0x7ae>
 800191a:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 800191e:	d045      	beq.n	80019ac <HAL_RCCEx_GetPeriphCLKFreq+0x2f0>
 8001920:	f1b2 7f00 	cmp.w	r2, #33554432	; 0x2000000
 8001924:	d042      	beq.n	80019ac <HAL_RCCEx_GetPeriphCLKFreq+0x2f0>
 8001926:	2a00      	cmp	r2, #0
 8001928:	d164      	bne.n	80019f4 <HAL_RCCEx_GetPeriphCLKFreq+0x338>
 800192a:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 800192e:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
 8001932:	6912      	ldr	r2, [r2, #16]
 8001934:	f412 3f80 	tst.w	r2, #65536	; 0x10000
 8001938:	f000 8297 	beq.w	8001e6a <HAL_RCCEx_GetPeriphCLKFreq+0x7ae>
 800193c:	4a26      	ldr	r2, [pc, #152]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 800193e:	6910      	ldr	r0, [r2, #16]
 8001940:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001944:	6912      	ldr	r2, [r2, #16]
 8001946:	f412 3f00 	tst.w	r2, #131072	; 0x20000
 800194a:	d151      	bne.n	80019f0 <HAL_RCCEx_GetPeriphCLKFreq+0x334>
 800194c:	2207      	movs	r2, #7
 800194e:	fb00 f303 	mul.w	r3, r0, r3
 8001952:	fbb3 f0f2 	udiv	r0, r3, r2
 8001956:	bd08      	pop	{r3, pc}
 8001958:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
 800195c:	d116      	bne.n	800198c <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 800195e:	4a1e      	ldr	r2, [pc, #120]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001960:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
 8001964:	f002 6240 	and.w	r2, r2, #201326592	; 0xc000000
 8001968:	f1b2 6f40 	cmp.w	r2, #201326592	; 0xc000000
 800196c:	d05f      	beq.n	8001a2e <HAL_RCCEx_GetPeriphCLKFreq+0x372>
 800196e:	f1b2 6f00 	cmp.w	r2, #134217728	; 0x8000000
 8001972:	d075      	beq.n	8001a60 <HAL_RCCEx_GetPeriphCLKFreq+0x3a4>
 8001974:	f1b2 6f80 	cmp.w	r2, #67108864	; 0x4000000
 8001978:	f000 808f 	beq.w	8001a9a <HAL_RCCEx_GetPeriphCLKFreq+0x3de>
 800197c:	2000      	movs	r0, #0
 800197e:	bd08      	pop	{r3, pc}
 8001980:	f5b0 2f80 	cmp.w	r0, #262144	; 0x40000
 8001984:	d0eb      	beq.n	800195e <HAL_RCCEx_GetPeriphCLKFreq+0x2a2>
 8001986:	f5b0 2f00 	cmp.w	r0, #524288	; 0x80000
 800198a:	d0e8      	beq.n	800195e <HAL_RCCEx_GetPeriphCLKFreq+0x2a2>
 800198c:	2000      	movs	r0, #0
 800198e:	bd08      	pop	{r3, pc}
 8001990:	4a11      	ldr	r2, [pc, #68]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001992:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
 8001996:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 800199a:	f5b2 0f40 	cmp.w	r2, #12582912	; 0xc00000
 800199e:	d001      	beq.n	80019a4 <HAL_RCCEx_GetPeriphCLKFreq+0x2e8>
 80019a0:	2000      	movs	r0, #0
 80019a2:	e7b7      	b.n	8001914 <HAL_RCCEx_GetPeriphCLKFreq+0x258>
 80019a4:	4811      	ldr	r0, [pc, #68]	; (80019ec <HAL_RCCEx_GetPeriphCLKFreq+0x330>)
 80019a6:	e7b5      	b.n	8001914 <HAL_RCCEx_GetPeriphCLKFreq+0x258>
 80019a8:	4810      	ldr	r0, [pc, #64]	; (80019ec <HAL_RCCEx_GetPeriphCLKFreq+0x330>)
 80019aa:	e7b3      	b.n	8001914 <HAL_RCCEx_GetPeriphCLKFreq+0x258>
 80019ac:	4a0a      	ldr	r2, [pc, #40]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80019ae:	68d2      	ldr	r2, [r2, #12]
 80019b0:	f412 3f80 	tst.w	r2, #65536	; 0x10000
 80019b4:	f000 8259 	beq.w	8001e6a <HAL_RCCEx_GetPeriphCLKFreq+0x7ae>
 80019b8:	4a07      	ldr	r2, [pc, #28]	; (80019d8 <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80019ba:	68d0      	ldr	r0, [r2, #12]
 80019bc:	f3c0 2006 	ubfx	r0, r0, #8, #7
 80019c0:	68d2      	ldr	r2, [r2, #12]
 80019c2:	f412 3f00 	tst.w	r2, #131072	; 0x20000
 80019c6:	d105      	bne.n	80019d4 <HAL_RCCEx_GetPeriphCLKFreq+0x318>
 80019c8:	2207      	movs	r2, #7
 80019ca:	fb00 f303 	mul.w	r3, r0, r3
 80019ce:	fbb3 f0f2 	udiv	r0, r3, r2
 80019d2:	bd08      	pop	{r3, pc}
 80019d4:	2211      	movs	r2, #17
 80019d6:	e7f8      	b.n	80019ca <HAL_RCCEx_GetPeriphCLKFreq+0x30e>
 80019d8:	40021000 	.word	0x40021000
 80019dc:	0003d090 	.word	0x0003d090
 80019e0:	08003df8 	.word	0x08003df8
 80019e4:	00f42400 	.word	0x00f42400
 80019e8:	007a1200 	.word	0x007a1200
 80019ec:	001fff68 	.word	0x001fff68
 80019f0:	2211      	movs	r2, #17
 80019f2:	e7ac      	b.n	800194e <HAL_RCCEx_GetPeriphCLKFreq+0x292>
 80019f4:	f5b2 0f80 	cmp.w	r2, #4194304	; 0x400000
 80019f8:	d003      	beq.n	8001a02 <HAL_RCCEx_GetPeriphCLKFreq+0x346>
 80019fa:	f1b2 7f80 	cmp.w	r2, #16777216	; 0x1000000
 80019fe:	f040 8234 	bne.w	8001e6a <HAL_RCCEx_GetPeriphCLKFreq+0x7ae>
 8001a02:	4aba      	ldr	r2, [pc, #744]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a04:	6952      	ldr	r2, [r2, #20]
 8001a06:	f412 3f80 	tst.w	r2, #65536	; 0x10000
 8001a0a:	f000 822e 	beq.w	8001e6a <HAL_RCCEx_GetPeriphCLKFreq+0x7ae>
 8001a0e:	4ab7      	ldr	r2, [pc, #732]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a10:	6950      	ldr	r0, [r2, #20]
 8001a12:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001a16:	6952      	ldr	r2, [r2, #20]
 8001a18:	f412 3f00 	tst.w	r2, #131072	; 0x20000
 8001a1c:	d105      	bne.n	8001a2a <HAL_RCCEx_GetPeriphCLKFreq+0x36e>
 8001a1e:	2207      	movs	r2, #7
 8001a20:	fb00 f303 	mul.w	r3, r0, r3
 8001a24:	fbb3 f0f2 	udiv	r0, r3, r2
 8001a28:	bd08      	pop	{r3, pc}
 8001a2a:	2211      	movs	r2, #17
 8001a2c:	e7f8      	b.n	8001a20 <HAL_RCCEx_GetPeriphCLKFreq+0x364>
 8001a2e:	4baf      	ldr	r3, [pc, #700]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a30:	681b      	ldr	r3, [r3, #0]
 8001a32:	f013 0f02 	tst.w	r3, #2
 8001a36:	f000 8209 	beq.w	8001e4c <HAL_RCCEx_GetPeriphCLKFreq+0x790>
 8001a3a:	4bac      	ldr	r3, [pc, #688]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a3c:	681b      	ldr	r3, [r3, #0]
 8001a3e:	f013 0f08 	tst.w	r3, #8
 8001a42:	d007      	beq.n	8001a54 <HAL_RCCEx_GetPeriphCLKFreq+0x398>
 8001a44:	4ba9      	ldr	r3, [pc, #676]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a46:	681b      	ldr	r3, [r3, #0]
 8001a48:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001a4c:	4aa8      	ldr	r2, [pc, #672]	; (8001cf0 <HAL_RCCEx_GetPeriphCLKFreq+0x634>)
 8001a4e:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 8001a52:	bd08      	pop	{r3, pc}
 8001a54:	4ba5      	ldr	r3, [pc, #660]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a56:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8001a5a:	f3c3 2303 	ubfx	r3, r3, #8, #4
 8001a5e:	e7f5      	b.n	8001a4c <HAL_RCCEx_GetPeriphCLKFreq+0x390>
 8001a60:	f102 5260 	add.w	r2, r2, #939524096	; 0x38000000
 8001a64:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
 8001a68:	6812      	ldr	r2, [r2, #0]
 8001a6a:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
 8001a6e:	f000 81ef 	beq.w	8001e50 <HAL_RCCEx_GetPeriphCLKFreq+0x794>
 8001a72:	4a9e      	ldr	r2, [pc, #632]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a74:	68d2      	ldr	r2, [r2, #12]
 8001a76:	f412 1f80 	tst.w	r2, #1048576	; 0x100000
 8001a7a:	f000 81eb 	beq.w	8001e54 <HAL_RCCEx_GetPeriphCLKFreq+0x798>
 8001a7e:	4a9b      	ldr	r2, [pc, #620]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a80:	68d0      	ldr	r0, [r2, #12]
 8001a82:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001a86:	fb00 f303 	mul.w	r3, r0, r3
 8001a8a:	68d0      	ldr	r0, [r2, #12]
 8001a8c:	f3c0 5041 	ubfx	r0, r0, #21, #2
 8001a90:	3001      	adds	r0, #1
 8001a92:	0040      	lsls	r0, r0, #1
 8001a94:	fbb3 f0f0 	udiv	r0, r3, r0
 8001a98:	bd08      	pop	{r3, pc}
 8001a9a:	f102 5270 	add.w	r2, r2, #1006632960	; 0x3c000000
 8001a9e:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
 8001aa2:	6812      	ldr	r2, [r2, #0]
 8001aa4:	f012 6f00 	tst.w	r2, #134217728	; 0x8000000
 8001aa8:	f000 81d6 	beq.w	8001e58 <HAL_RCCEx_GetPeriphCLKFreq+0x79c>
 8001aac:	4a8f      	ldr	r2, [pc, #572]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001aae:	6912      	ldr	r2, [r2, #16]
 8001ab0:	f412 1f80 	tst.w	r2, #1048576	; 0x100000
 8001ab4:	f000 81d2 	beq.w	8001e5c <HAL_RCCEx_GetPeriphCLKFreq+0x7a0>
 8001ab8:	4a8c      	ldr	r2, [pc, #560]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001aba:	6910      	ldr	r0, [r2, #16]
 8001abc:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001ac0:	fb00 f303 	mul.w	r3, r0, r3
 8001ac4:	6910      	ldr	r0, [r2, #16]
 8001ac6:	f3c0 5041 	ubfx	r0, r0, #21, #2
 8001aca:	3001      	adds	r0, #1
 8001acc:	0040      	lsls	r0, r0, #1
 8001ace:	fbb3 f0f0 	udiv	r0, r3, r0
 8001ad2:	bd08      	pop	{r3, pc}
 8001ad4:	f7fe fcda 	bl	800048c <HAL_RCC_GetPCLK2Freq>
 8001ad8:	bd08      	pop	{r3, pc}
 8001ada:	f7fe fc41 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001ade:	bd08      	pop	{r3, pc}
 8001ae0:	4a82      	ldr	r2, [pc, #520]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001ae2:	6812      	ldr	r2, [r2, #0]
 8001ae4:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001ae8:	f43f ae94 	beq.w	8001814 <HAL_RCCEx_GetPeriphCLKFreq+0x158>
 8001aec:	4881      	ldr	r0, [pc, #516]	; (8001cf4 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001aee:	bd08      	pop	{r3, pc}
 8001af0:	4b7e      	ldr	r3, [pc, #504]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001af2:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001af6:	f013 0f02 	tst.w	r3, #2
 8001afa:	d002      	beq.n	8001b02 <HAL_RCCEx_GetPeriphCLKFreq+0x446>
 8001afc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b00:	bd08      	pop	{r3, pc}
 8001b02:	2000      	movs	r0, #0
 8001b04:	bd08      	pop	{r3, pc}
 8001b06:	4b79      	ldr	r3, [pc, #484]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b08:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001b0c:	f013 030c 	ands.w	r3, r3, #12
 8001b10:	d007      	beq.n	8001b22 <HAL_RCCEx_GetPeriphCLKFreq+0x466>
 8001b12:	2b04      	cmp	r3, #4
 8001b14:	d008      	beq.n	8001b28 <HAL_RCCEx_GetPeriphCLKFreq+0x46c>
 8001b16:	2b08      	cmp	r3, #8
 8001b18:	d009      	beq.n	8001b2e <HAL_RCCEx_GetPeriphCLKFreq+0x472>
 8001b1a:	2b0c      	cmp	r3, #12
 8001b1c:	d00e      	beq.n	8001b3c <HAL_RCCEx_GetPeriphCLKFreq+0x480>
 8001b1e:	2000      	movs	r0, #0
 8001b20:	bd08      	pop	{r3, pc}
 8001b22:	f7fe fca3 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001b26:	bd08      	pop	{r3, pc}
 8001b28:	f7fe fc1a 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001b2c:	bd08      	pop	{r3, pc}
 8001b2e:	4a6f      	ldr	r2, [pc, #444]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b30:	6812      	ldr	r2, [r2, #0]
 8001b32:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001b36:	d0f0      	beq.n	8001b1a <HAL_RCCEx_GetPeriphCLKFreq+0x45e>
 8001b38:	486e      	ldr	r0, [pc, #440]	; (8001cf4 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001b3a:	bd08      	pop	{r3, pc}
 8001b3c:	4b6b      	ldr	r3, [pc, #428]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b3e:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001b42:	f013 0f02 	tst.w	r3, #2
 8001b46:	d002      	beq.n	8001b4e <HAL_RCCEx_GetPeriphCLKFreq+0x492>
 8001b48:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b4c:	bd08      	pop	{r3, pc}
 8001b4e:	2000      	movs	r0, #0
 8001b50:	bd08      	pop	{r3, pc}
 8001b52:	4b66      	ldr	r3, [pc, #408]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b54:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001b58:	f013 0330 	ands.w	r3, r3, #48	; 0x30
 8001b5c:	d007      	beq.n	8001b6e <HAL_RCCEx_GetPeriphCLKFreq+0x4b2>
 8001b5e:	2b10      	cmp	r3, #16
 8001b60:	d008      	beq.n	8001b74 <HAL_RCCEx_GetPeriphCLKFreq+0x4b8>
 8001b62:	2b20      	cmp	r3, #32
 8001b64:	d009      	beq.n	8001b7a <HAL_RCCEx_GetPeriphCLKFreq+0x4be>
 8001b66:	2b30      	cmp	r3, #48	; 0x30
 8001b68:	d00e      	beq.n	8001b88 <HAL_RCCEx_GetPeriphCLKFreq+0x4cc>
 8001b6a:	2000      	movs	r0, #0
 8001b6c:	bd08      	pop	{r3, pc}
 8001b6e:	f7fe fc7d 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001b72:	bd08      	pop	{r3, pc}
 8001b74:	f7fe fbf4 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001b78:	bd08      	pop	{r3, pc}
 8001b7a:	4a5c      	ldr	r2, [pc, #368]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b7c:	6812      	ldr	r2, [r2, #0]
 8001b7e:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001b82:	d0f0      	beq.n	8001b66 <HAL_RCCEx_GetPeriphCLKFreq+0x4aa>
 8001b84:	485b      	ldr	r0, [pc, #364]	; (8001cf4 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001b86:	bd08      	pop	{r3, pc}
 8001b88:	4b58      	ldr	r3, [pc, #352]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b8a:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001b8e:	f013 0f02 	tst.w	r3, #2
 8001b92:	d002      	beq.n	8001b9a <HAL_RCCEx_GetPeriphCLKFreq+0x4de>
 8001b94:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b98:	bd08      	pop	{r3, pc}
 8001b9a:	2000      	movs	r0, #0
 8001b9c:	bd08      	pop	{r3, pc}
 8001b9e:	f7fe fc65 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001ba2:	bd08      	pop	{r3, pc}
 8001ba4:	f7fe fbdc 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001ba8:	bd08      	pop	{r3, pc}
 8001baa:	4a50      	ldr	r2, [pc, #320]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001bac:	6812      	ldr	r2, [r2, #0]
 8001bae:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001bb2:	f43f adc3 	beq.w	800173c <HAL_RCCEx_GetPeriphCLKFreq+0x80>
 8001bb6:	484f      	ldr	r0, [pc, #316]	; (8001cf4 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001bb8:	bd08      	pop	{r3, pc}
 8001bba:	4b4c      	ldr	r3, [pc, #304]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001bbc:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001bc0:	f013 0f02 	tst.w	r3, #2
 8001bc4:	d002      	beq.n	8001bcc <HAL_RCCEx_GetPeriphCLKFreq+0x510>
 8001bc6:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bca:	bd08      	pop	{r3, pc}
 8001bcc:	2000      	movs	r0, #0
 8001bce:	bd08      	pop	{r3, pc}
 8001bd0:	4b46      	ldr	r3, [pc, #280]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001bd2:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001bd6:	f413 7340 	ands.w	r3, r3, #768	; 0x300
 8001bda:	d00a      	beq.n	8001bf2 <HAL_RCCEx_GetPeriphCLKFreq+0x536>
 8001bdc:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001be0:	d00a      	beq.n	8001bf8 <HAL_RCCEx_GetPeriphCLKFreq+0x53c>
 8001be2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8001be6:	d00a      	beq.n	8001bfe <HAL_RCCEx_GetPeriphCLKFreq+0x542>
 8001be8:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
 8001bec:	d00e      	beq.n	8001c0c <HAL_RCCEx_GetPeriphCLKFreq+0x550>
 8001bee:	2000      	movs	r0, #0
 8001bf0:	bd08      	pop	{r3, pc}
 8001bf2:	f7fe fc3b 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001bf6:	bd08      	pop	{r3, pc}
 8001bf8:	f7fe fbb2 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001bfc:	bd08      	pop	{r3, pc}
 8001bfe:	4a3b      	ldr	r2, [pc, #236]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001c00:	6812      	ldr	r2, [r2, #0]
 8001c02:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001c06:	d0ef      	beq.n	8001be8 <HAL_RCCEx_GetPeriphCLKFreq+0x52c>
 8001c08:	483a      	ldr	r0, [pc, #232]	; (8001cf4 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001c0a:	bd08      	pop	{r3, pc}
 8001c0c:	4b37      	ldr	r3, [pc, #220]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001c0e:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001c12:	f013 0f02 	tst.w	r3, #2
 8001c16:	d002      	beq.n	8001c1e <HAL_RCCEx_GetPeriphCLKFreq+0x562>
 8001c18:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001c1c:	bd08      	pop	{r3, pc}
 8001c1e:	2000      	movs	r0, #0
 8001c20:	bd08      	pop	{r3, pc}
 8001c22:	f7fe fc23 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001c26:	bd08      	pop	{r3, pc}
 8001c28:	f7fe fb9a 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001c2c:	bd08      	pop	{r3, pc}
 8001c2e:	4a2f      	ldr	r2, [pc, #188]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001c30:	6812      	ldr	r2, [r2, #0]
 8001c32:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001c36:	f43f ae20 	beq.w	800187a <HAL_RCCEx_GetPeriphCLKFreq+0x1be>
 8001c3a:	482e      	ldr	r0, [pc, #184]	; (8001cf4 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001c3c:	bd08      	pop	{r3, pc}
 8001c3e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001c42:	f503 3301 	add.w	r3, r3, #132096	; 0x20400
 8001c46:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001c4a:	f013 0f02 	tst.w	r3, #2
 8001c4e:	d002      	beq.n	8001c56 <HAL_RCCEx_GetPeriphCLKFreq+0x59a>
 8001c50:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001c54:	bd08      	pop	{r3, pc}
 8001c56:	2000      	movs	r0, #0
 8001c58:	bd08      	pop	{r3, pc}
 8001c5a:	4a24      	ldr	r2, [pc, #144]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001c5c:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
 8001c60:	f002 5240 	and.w	r2, r2, #805306368	; 0x30000000
 8001c64:	f1b2 5f40 	cmp.w	r2, #805306368	; 0x30000000
 8001c68:	d007      	beq.n	8001c7a <HAL_RCCEx_GetPeriphCLKFreq+0x5be>
 8001c6a:	f1b2 5f80 	cmp.w	r2, #268435456	; 0x10000000
 8001c6e:	d007      	beq.n	8001c80 <HAL_RCCEx_GetPeriphCLKFreq+0x5c4>
 8001c70:	f1b2 5f00 	cmp.w	r2, #536870912	; 0x20000000
 8001c74:	d01b      	beq.n	8001cae <HAL_RCCEx_GetPeriphCLKFreq+0x5f2>
 8001c76:	2000      	movs	r0, #0
 8001c78:	bd08      	pop	{r3, pc}
 8001c7a:	f7fe fb71 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001c7e:	bd08      	pop	{r3, pc}
 8001c80:	f102 5240 	add.w	r2, r2, #805306368	; 0x30000000
 8001c84:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
 8001c88:	6912      	ldr	r2, [r2, #16]
 8001c8a:	f012 7f80 	tst.w	r2, #16777216	; 0x1000000
 8001c8e:	f000 80e7 	beq.w	8001e60 <HAL_RCCEx_GetPeriphCLKFreq+0x7a4>
 8001c92:	4a16      	ldr	r2, [pc, #88]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001c94:	6910      	ldr	r0, [r2, #16]
 8001c96:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001c9a:	fb00 f303 	mul.w	r3, r0, r3
 8001c9e:	6910      	ldr	r0, [r2, #16]
 8001ca0:	f3c0 6041 	ubfx	r0, r0, #25, #2
 8001ca4:	3001      	adds	r0, #1
 8001ca6:	0040      	lsls	r0, r0, #1
 8001ca8:	fbb3 f0f0 	udiv	r0, r3, r0
 8001cac:	bd08      	pop	{r3, pc}
 8001cae:	f102 5200 	add.w	r2, r2, #536870912	; 0x20000000
 8001cb2:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
 8001cb6:	6952      	ldr	r2, [r2, #20]
 8001cb8:	f012 7f80 	tst.w	r2, #16777216	; 0x1000000
 8001cbc:	f000 80d2 	beq.w	8001e64 <HAL_RCCEx_GetPeriphCLKFreq+0x7a8>
 8001cc0:	4a0a      	ldr	r2, [pc, #40]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001cc2:	6950      	ldr	r0, [r2, #20]
 8001cc4:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001cc8:	fb00 f303 	mul.w	r3, r0, r3
 8001ccc:	6950      	ldr	r0, [r2, #20]
 8001cce:	f3c0 6041 	ubfx	r0, r0, #25, #2
 8001cd2:	3001      	adds	r0, #1
 8001cd4:	0040      	lsls	r0, r0, #1
 8001cd6:	fbb3 f0f0 	udiv	r0, r3, r0
 8001cda:	bd08      	pop	{r3, pc}
 8001cdc:	4b03      	ldr	r3, [pc, #12]	; (8001cec <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001cde:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001ce2:	2b00      	cmp	r3, #0
 8001ce4:	db08      	blt.n	8001cf8 <HAL_RCCEx_GetPeriphCLKFreq+0x63c>
 8001ce6:	f7fe fbd1 	bl	800048c <HAL_RCC_GetPCLK2Freq>
 8001cea:	bd08      	pop	{r3, pc}
 8001cec:	40021000 	.word	0x40021000
 8001cf0:	08003df8 	.word	0x08003df8
 8001cf4:	00f42400 	.word	0x00f42400
 8001cf8:	f7fe fb32 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001cfc:	bd08      	pop	{r3, pc}
 8001cfe:	4b5b      	ldr	r3, [pc, #364]	; (8001e6c <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001d00:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001d04:	f413 5340 	ands.w	r3, r3, #12288	; 0x3000
 8001d08:	d007      	beq.n	8001d1a <HAL_RCCEx_GetPeriphCLKFreq+0x65e>
 8001d0a:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8001d0e:	d007      	beq.n	8001d20 <HAL_RCCEx_GetPeriphCLKFreq+0x664>
 8001d10:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 8001d14:	d007      	beq.n	8001d26 <HAL_RCCEx_GetPeriphCLKFreq+0x66a>
 8001d16:	2000      	movs	r0, #0
 8001d18:	bd08      	pop	{r3, pc}
 8001d1a:	f7fe fba7 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001d1e:	bd08      	pop	{r3, pc}
 8001d20:	f7fe fb1e 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001d24:	bd08      	pop	{r3, pc}
 8001d26:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001d2a:	f503 33f8 	add.w	r3, r3, #126976	; 0x1f000
 8001d2e:	681b      	ldr	r3, [r3, #0]
 8001d30:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8001d34:	d001      	beq.n	8001d3a <HAL_RCCEx_GetPeriphCLKFreq+0x67e>
 8001d36:	484e      	ldr	r0, [pc, #312]	; (8001e70 <HAL_RCCEx_GetPeriphCLKFreq+0x7b4>)
 8001d38:	bd08      	pop	{r3, pc}
 8001d3a:	2000      	movs	r0, #0
 8001d3c:	bd08      	pop	{r3, pc}
 8001d3e:	4b4b      	ldr	r3, [pc, #300]	; (8001e6c <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001d40:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001d44:	f413 4340 	ands.w	r3, r3, #49152	; 0xc000
 8001d48:	d007      	beq.n	8001d5a <HAL_RCCEx_GetPeriphCLKFreq+0x69e>
 8001d4a:	f5b3 4f80 	cmp.w	r3, #16384	; 0x4000
 8001d4e:	d007      	beq.n	8001d60 <HAL_RCCEx_GetPeriphCLKFreq+0x6a4>
 8001d50:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8001d54:	d007      	beq.n	8001d66 <HAL_RCCEx_GetPeriphCLKFreq+0x6aa>
 8001d56:	2000      	movs	r0, #0
 8001d58:	bd08      	pop	{r3, pc}
 8001d5a:	f7fe fb87 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001d5e:	bd08      	pop	{r3, pc}
 8001d60:	f7fe fafe 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001d64:	bd08      	pop	{r3, pc}
 8001d66:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001d6a:	f503 33c8 	add.w	r3, r3, #102400	; 0x19000
 8001d6e:	681b      	ldr	r3, [r3, #0]
 8001d70:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8001d74:	d001      	beq.n	8001d7a <HAL_RCCEx_GetPeriphCLKFreq+0x6be>
 8001d76:	483e      	ldr	r0, [pc, #248]	; (8001e70 <HAL_RCCEx_GetPeriphCLKFreq+0x7b4>)
 8001d78:	bd08      	pop	{r3, pc}
 8001d7a:	2000      	movs	r0, #0
 8001d7c:	bd08      	pop	{r3, pc}
 8001d7e:	f7fe fb75 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001d82:	bd08      	pop	{r3, pc}
 8001d84:	f7fe faec 	bl	8000360 <HAL_RCC_GetSysClockFreq>
 8001d88:	bd08      	pop	{r3, pc}
 8001d8a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001d8e:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
 8001d92:	681b      	ldr	r3, [r3, #0]
 8001d94:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8001d98:	d001      	beq.n	8001d9e <HAL_RCCEx_GetPeriphCLKFreq+0x6e2>
 8001d9a:	4835      	ldr	r0, [pc, #212]	; (8001e70 <HAL_RCCEx_GetPeriphCLKFreq+0x7b4>)
 8001d9c:	bd08      	pop	{r3, pc}
 8001d9e:	2000      	movs	r0, #0
 8001da0:	bd08      	pop	{r3, pc}
 8001da2:	4b32      	ldr	r3, [pc, #200]	; (8001e6c <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001da4:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001da8:	f413 2340 	ands.w	r3, r3, #786432	; 0xc0000
 8001dac:	d00a      	beq.n	8001dc4 <HAL_RCCEx_GetPeriphCLKFreq+0x708>
 8001dae:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 8001db2:	d00a      	beq.n	8001dca <HAL_RCCEx_GetPeriphCLKFreq+0x70e>
 8001db4:	f5b3 2f00 	cmp.w	r3, #524288	; 0x80000
 8001db8:	d010      	beq.n	8001ddc <HAL_RCCEx_GetPeriphCLKFreq+0x720>
 8001dba:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001dbe:	d014      	beq.n	8001dea <HAL_RCCEx_GetPeriphCLKFreq+0x72e>
 8001dc0:	2000      	movs	r0, #0
 8001dc2:	bd08      	pop	{r3, pc}
 8001dc4:	f7fe fb52 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001dc8:	bd08      	pop	{r3, pc}
 8001dca:	4a28      	ldr	r2, [pc, #160]	; (8001e6c <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001dcc:	f8d2 2094 	ldr.w	r2, [r2, #148]	; 0x94
 8001dd0:	f012 0f02 	tst.w	r2, #2
 8001dd4:	d0ee      	beq.n	8001db4 <HAL_RCCEx_GetPeriphCLKFreq+0x6f8>
 8001dd6:	f44f 40fa 	mov.w	r0, #32000	; 0x7d00
 8001dda:	bd08      	pop	{r3, pc}
 8001ddc:	4a23      	ldr	r2, [pc, #140]	; (8001e6c <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001dde:	6812      	ldr	r2, [r2, #0]
 8001de0:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001de4:	d0e9      	beq.n	8001dba <HAL_RCCEx_GetPeriphCLKFreq+0x6fe>
 8001de6:	4822      	ldr	r0, [pc, #136]	; (8001e70 <HAL_RCCEx_GetPeriphCLKFreq+0x7b4>)
 8001de8:	bd08      	pop	{r3, pc}
 8001dea:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001dee:	f5a3 231f 	sub.w	r3, r3, #651264	; 0x9f000
 8001df2:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001df6:	f013 0f02 	tst.w	r3, #2
 8001dfa:	d002      	beq.n	8001e02 <HAL_RCCEx_GetPeriphCLKFreq+0x746>
 8001dfc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001e00:	bd08      	pop	{r3, pc}
 8001e02:	2000      	movs	r0, #0
 8001e04:	bd08      	pop	{r3, pc}
 8001e06:	f7fe fb31 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001e0a:	bd08      	pop	{r3, pc}
 8001e0c:	4a17      	ldr	r2, [pc, #92]	; (8001e6c <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001e0e:	f8d2 2094 	ldr.w	r2, [r2, #148]	; 0x94
 8001e12:	f012 0f02 	tst.w	r2, #2
 8001e16:	f43f ad64 	beq.w	80018e2 <HAL_RCCEx_GetPeriphCLKFreq+0x226>
 8001e1a:	f44f 40fa 	mov.w	r0, #32000	; 0x7d00
 8001e1e:	bd08      	pop	{r3, pc}
 8001e20:	4a12      	ldr	r2, [pc, #72]	; (8001e6c <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001e22:	6812      	ldr	r2, [r2, #0]
 8001e24:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001e28:	f43f ad5f 	beq.w	80018ea <HAL_RCCEx_GetPeriphCLKFreq+0x22e>
 8001e2c:	4810      	ldr	r0, [pc, #64]	; (8001e70 <HAL_RCCEx_GetPeriphCLKFreq+0x7b4>)
 8001e2e:	bd08      	pop	{r3, pc}
 8001e30:	4b0e      	ldr	r3, [pc, #56]	; (8001e6c <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001e32:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001e36:	f013 0f02 	tst.w	r3, #2
 8001e3a:	d002      	beq.n	8001e42 <HAL_RCCEx_GetPeriphCLKFreq+0x786>
 8001e3c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001e40:	bd08      	pop	{r3, pc}
 8001e42:	2000      	movs	r0, #0
 8001e44:	bd08      	pop	{r3, pc}
 8001e46:	f7fe fb11 	bl	800046c <HAL_RCC_GetPCLK1Freq>
 8001e4a:	bd08      	pop	{r3, pc}
 8001e4c:	2000      	movs	r0, #0
 8001e4e:	bd08      	pop	{r3, pc}
 8001e50:	2000      	movs	r0, #0
 8001e52:	bd08      	pop	{r3, pc}
 8001e54:	2000      	movs	r0, #0
 8001e56:	bd08      	pop	{r3, pc}
 8001e58:	2000      	movs	r0, #0
 8001e5a:	bd08      	pop	{r3, pc}
 8001e5c:	2000      	movs	r0, #0
 8001e5e:	bd08      	pop	{r3, pc}
 8001e60:	2000      	movs	r0, #0
 8001e62:	bd08      	pop	{r3, pc}
 8001e64:	2000      	movs	r0, #0
 8001e66:	bd08      	pop	{r3, pc}
 8001e68:	2000      	movs	r0, #0
 8001e6a:	bd08      	pop	{r3, pc}
 8001e6c:	40021000 	.word	0x40021000
 8001e70:	00f42400 	.word	0x00f42400

08001e74 <LL_Init1msTick>:
 8001e74:	4b05      	ldr	r3, [pc, #20]	; (8001e8c <LL_Init1msTick+0x18>)
 8001e76:	fba3 3000 	umull	r3, r0, r3, r0
 8001e7a:	0980      	lsrs	r0, r0, #6
 8001e7c:	3801      	subs	r0, #1
 8001e7e:	4b04      	ldr	r3, [pc, #16]	; (8001e90 <LL_Init1msTick+0x1c>)
 8001e80:	6058      	str	r0, [r3, #4]
 8001e82:	2200      	movs	r2, #0
 8001e84:	609a      	str	r2, [r3, #8]
 8001e86:	2205      	movs	r2, #5
 8001e88:	601a      	str	r2, [r3, #0]
 8001e8a:	4770      	bx	lr
 8001e8c:	10624dd3 	.word	0x10624dd3
 8001e90:	e000e010 	.word	0xe000e010

08001e94 <LL_mDelay>:
 8001e94:	b082      	sub	sp, #8
 8001e96:	4b09      	ldr	r3, [pc, #36]	; (8001ebc <LL_mDelay+0x28>)
 8001e98:	681b      	ldr	r3, [r3, #0]
 8001e9a:	9301      	str	r3, [sp, #4]
 8001e9c:	9b01      	ldr	r3, [sp, #4]
 8001e9e:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8001ea2:	d000      	beq.n	8001ea6 <LL_mDelay+0x12>
 8001ea4:	3001      	adds	r0, #1
 8001ea6:	b130      	cbz	r0, 8001eb6 <LL_mDelay+0x22>
 8001ea8:	4b04      	ldr	r3, [pc, #16]	; (8001ebc <LL_mDelay+0x28>)
 8001eaa:	681b      	ldr	r3, [r3, #0]
 8001eac:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 8001eb0:	d0f9      	beq.n	8001ea6 <LL_mDelay+0x12>
 8001eb2:	3801      	subs	r0, #1
 8001eb4:	e7f7      	b.n	8001ea6 <LL_mDelay+0x12>
 8001eb6:	b002      	add	sp, #8
 8001eb8:	4770      	bx	lr
 8001eba:	bf00      	nop
 8001ebc:	e000e010 	.word	0xe000e010

08001ec0 <LL_SetSystemCoreClock>:
 8001ec0:	4b01      	ldr	r3, [pc, #4]	; (8001ec8 <LL_SetSystemCoreClock+0x8>)
 8001ec2:	6018      	str	r0, [r3, #0]
 8001ec4:	4770      	bx	lr
 8001ec6:	bf00      	nop
 8001ec8:	20000000 	.word	0x20000000

08001ecc <LL_GPIO_Init>:
 8001ecc:	b4f0      	push	{r4, r5, r6, r7}
 8001ece:	680c      	ldr	r4, [r1, #0]
 8001ed0:	fa94 f4a4 	rbit	r4, r4
 8001ed4:	fab4 f484 	clz	r4, r4
 8001ed8:	e02b      	b.n	8001f32 <LL_GPIO_Init+0x66>
 8001eda:	688e      	ldr	r6, [r1, #8]
 8001edc:	6882      	ldr	r2, [r0, #8]
 8001ede:	fa93 f5a3 	rbit	r5, r3
 8001ee2:	fab5 f585 	clz	r5, r5
 8001ee6:	006d      	lsls	r5, r5, #1
 8001ee8:	fa07 f505 	lsl.w	r5, r7, r5
 8001eec:	ea22 0205 	bic.w	r2, r2, r5
 8001ef0:	fa93 f5a3 	rbit	r5, r3
 8001ef4:	fab5 f585 	clz	r5, r5
 8001ef8:	006d      	lsls	r5, r5, #1
 8001efa:	fa06 f505 	lsl.w	r5, r6, r5
 8001efe:	432a      	orrs	r2, r5
 8001f00:	6082      	str	r2, [r0, #8]
 8001f02:	e037      	b.n	8001f74 <LL_GPIO_Init+0xa8>
 8001f04:	694a      	ldr	r2, [r1, #20]
 8001f06:	6a45      	ldr	r5, [r0, #36]	; 0x24
 8001f08:	0a1b      	lsrs	r3, r3, #8
 8001f0a:	fa93 f6a3 	rbit	r6, r3
 8001f0e:	fab6 f686 	clz	r6, r6
 8001f12:	00b6      	lsls	r6, r6, #2
 8001f14:	270f      	movs	r7, #15
 8001f16:	fa07 f606 	lsl.w	r6, r7, r6
 8001f1a:	ea25 0506 	bic.w	r5, r5, r6
 8001f1e:	fa93 f3a3 	rbit	r3, r3
 8001f22:	fab3 f383 	clz	r3, r3
 8001f26:	009b      	lsls	r3, r3, #2
 8001f28:	fa02 f303 	lsl.w	r3, r2, r3
 8001f2c:	432b      	orrs	r3, r5
 8001f2e:	6243      	str	r3, [r0, #36]	; 0x24
 8001f30:	3401      	adds	r4, #1
 8001f32:	680b      	ldr	r3, [r1, #0]
 8001f34:	fa33 f204 	lsrs.w	r2, r3, r4
 8001f38:	d050      	beq.n	8001fdc <LL_GPIO_Init+0x110>
 8001f3a:	2201      	movs	r2, #1
 8001f3c:	40a2      	lsls	r2, r4
 8001f3e:	4013      	ands	r3, r2
 8001f40:	d0f6      	beq.n	8001f30 <LL_GPIO_Init+0x64>
 8001f42:	684e      	ldr	r6, [r1, #4]
 8001f44:	6802      	ldr	r2, [r0, #0]
 8001f46:	fa93 f5a3 	rbit	r5, r3
 8001f4a:	fab5 f585 	clz	r5, r5
 8001f4e:	006d      	lsls	r5, r5, #1
 8001f50:	2703      	movs	r7, #3
 8001f52:	fa07 f505 	lsl.w	r5, r7, r5
 8001f56:	ea22 0205 	bic.w	r2, r2, r5
 8001f5a:	fa93 f5a3 	rbit	r5, r3
 8001f5e:	fab5 f585 	clz	r5, r5
 8001f62:	006d      	lsls	r5, r5, #1
 8001f64:	fa06 f505 	lsl.w	r5, r6, r5
 8001f68:	432a      	orrs	r2, r5
 8001f6a:	6002      	str	r2, [r0, #0]
 8001f6c:	684a      	ldr	r2, [r1, #4]
 8001f6e:	3a01      	subs	r2, #1
 8001f70:	2a01      	cmp	r2, #1
 8001f72:	d9b2      	bls.n	8001eda <LL_GPIO_Init+0xe>
 8001f74:	690e      	ldr	r6, [r1, #16]
 8001f76:	68c2      	ldr	r2, [r0, #12]
 8001f78:	fa93 f5a3 	rbit	r5, r3
 8001f7c:	fab5 f585 	clz	r5, r5
 8001f80:	006d      	lsls	r5, r5, #1
 8001f82:	2703      	movs	r7, #3
 8001f84:	fa07 f505 	lsl.w	r5, r7, r5
 8001f88:	ea22 0205 	bic.w	r2, r2, r5
 8001f8c:	fa93 f5a3 	rbit	r5, r3
 8001f90:	fab5 f585 	clz	r5, r5
 8001f94:	006d      	lsls	r5, r5, #1
 8001f96:	fa06 f505 	lsl.w	r5, r6, r5
 8001f9a:	432a      	orrs	r2, r5
 8001f9c:	60c2      	str	r2, [r0, #12]
 8001f9e:	684a      	ldr	r2, [r1, #4]
 8001fa0:	2a02      	cmp	r2, #2
 8001fa2:	d1c5      	bne.n	8001f30 <LL_GPIO_Init+0x64>
 8001fa4:	fa93 f2a3 	rbit	r2, r3
 8001fa8:	fab2 f282 	clz	r2, r2
 8001fac:	2a07      	cmp	r2, #7
 8001fae:	d8a9      	bhi.n	8001f04 <LL_GPIO_Init+0x38>
 8001fb0:	694d      	ldr	r5, [r1, #20]
 8001fb2:	6a02      	ldr	r2, [r0, #32]
 8001fb4:	fa93 f6a3 	rbit	r6, r3
 8001fb8:	fab6 f686 	clz	r6, r6
 8001fbc:	00b6      	lsls	r6, r6, #2
 8001fbe:	270f      	movs	r7, #15
 8001fc0:	fa07 f606 	lsl.w	r6, r7, r6
 8001fc4:	ea22 0206 	bic.w	r2, r2, r6
 8001fc8:	fa93 f3a3 	rbit	r3, r3
 8001fcc:	fab3 f383 	clz	r3, r3
 8001fd0:	009b      	lsls	r3, r3, #2
 8001fd2:	fa05 f303 	lsl.w	r3, r5, r3
 8001fd6:	4313      	orrs	r3, r2
 8001fd8:	6203      	str	r3, [r0, #32]
 8001fda:	e7a9      	b.n	8001f30 <LL_GPIO_Init+0x64>
 8001fdc:	684a      	ldr	r2, [r1, #4]
 8001fde:	3a01      	subs	r2, #1
 8001fe0:	2a01      	cmp	r2, #1
 8001fe2:	d902      	bls.n	8001fea <LL_GPIO_Init+0x11e>
 8001fe4:	2001      	movs	r0, #1
 8001fe6:	bcf0      	pop	{r4, r5, r6, r7}
 8001fe8:	4770      	bx	lr
 8001fea:	68c9      	ldr	r1, [r1, #12]
 8001fec:	6842      	ldr	r2, [r0, #4]
 8001fee:	ea22 0203 	bic.w	r2, r2, r3
 8001ff2:	fb01 f303 	mul.w	r3, r1, r3
 8001ff6:	4313      	orrs	r3, r2
 8001ff8:	6043      	str	r3, [r0, #4]
 8001ffa:	e7f3      	b.n	8001fe4 <LL_GPIO_Init+0x118>

08001ffc <RCC_GetHCLKClockFreq>:
 8001ffc:	4b03      	ldr	r3, [pc, #12]	; (800200c <RCC_GetHCLKClockFreq+0x10>)
 8001ffe:	689b      	ldr	r3, [r3, #8]
 8002000:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8002004:	4a02      	ldr	r2, [pc, #8]	; (8002010 <RCC_GetHCLKClockFreq+0x14>)
 8002006:	5cd3      	ldrb	r3, [r2, r3]
 8002008:	40d8      	lsrs	r0, r3
 800200a:	4770      	bx	lr
 800200c:	40021000 	.word	0x40021000
 8002010:	08003de0 	.word	0x08003de0

08002014 <RCC_GetPCLK1ClockFreq>:
 8002014:	4b03      	ldr	r3, [pc, #12]	; (8002024 <RCC_GetPCLK1ClockFreq+0x10>)
 8002016:	689b      	ldr	r3, [r3, #8]
 8002018:	f3c3 2302 	ubfx	r3, r3, #8, #3
 800201c:	4a02      	ldr	r2, [pc, #8]	; (8002028 <RCC_GetPCLK1ClockFreq+0x14>)
 800201e:	5cd3      	ldrb	r3, [r2, r3]
 8002020:	40d8      	lsrs	r0, r3
 8002022:	4770      	bx	lr
 8002024:	40021000 	.word	0x40021000
 8002028:	08003df0 	.word	0x08003df0

0800202c <RCC_GetPCLK2ClockFreq>:
 800202c:	4b03      	ldr	r3, [pc, #12]	; (800203c <RCC_GetPCLK2ClockFreq+0x10>)
 800202e:	689b      	ldr	r3, [r3, #8]
 8002030:	f3c3 23c2 	ubfx	r3, r3, #11, #3
 8002034:	4a02      	ldr	r2, [pc, #8]	; (8002040 <RCC_GetPCLK2ClockFreq+0x14>)
 8002036:	5cd3      	ldrb	r3, [r2, r3]
 8002038:	40d8      	lsrs	r0, r3
 800203a:	4770      	bx	lr
 800203c:	40021000 	.word	0x40021000
 8002040:	08003df0 	.word	0x08003df0

08002044 <RCC_PLL_GetFreqDomain_SYS>:
 8002044:	4b3b      	ldr	r3, [pc, #236]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002046:	68db      	ldr	r3, [r3, #12]
 8002048:	f003 0303 	and.w	r3, r3, #3
 800204c:	2b02      	cmp	r3, #2
 800204e:	d014      	beq.n	800207a <RCC_PLL_GetFreqDomain_SYS+0x36>
 8002050:	2b03      	cmp	r3, #3
 8002052:	d06c      	beq.n	800212e <RCC_PLL_GetFreqDomain_SYS+0xea>
 8002054:	2b01      	cmp	r3, #1
 8002056:	d025      	beq.n	80020a4 <RCC_PLL_GetFreqDomain_SYS+0x60>
 8002058:	4b36      	ldr	r3, [pc, #216]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 800205a:	681b      	ldr	r3, [r3, #0]
 800205c:	f013 0f08 	tst.w	r3, #8
 8002060:	d151      	bne.n	8002106 <RCC_PLL_GetFreqDomain_SYS+0xc2>
 8002062:	4b34      	ldr	r3, [pc, #208]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002064:	681b      	ldr	r3, [r3, #0]
 8002066:	f013 0f08 	tst.w	r3, #8
 800206a:	d046      	beq.n	80020fa <RCC_PLL_GetFreqDomain_SYS+0xb6>
 800206c:	4b31      	ldr	r3, [pc, #196]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 800206e:	681b      	ldr	r3, [r3, #0]
 8002070:	2300      	movs	r3, #0
 8002072:	4a31      	ldr	r2, [pc, #196]	; (8002138 <RCC_PLL_GetFreqDomain_SYS+0xf4>)
 8002074:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8002078:	e000      	b.n	800207c <RCC_PLL_GetFreqDomain_SYS+0x38>
 800207a:	4a30      	ldr	r2, [pc, #192]	; (800213c <RCC_PLL_GetFreqDomain_SYS+0xf8>)
 800207c:	4b2d      	ldr	r3, [pc, #180]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 800207e:	68d8      	ldr	r0, [r3, #12]
 8002080:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8002084:	3001      	adds	r0, #1
 8002086:	fbb2 f2f0 	udiv	r2, r2, r0
 800208a:	68d8      	ldr	r0, [r3, #12]
 800208c:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8002090:	fb00 f002 	mul.w	r0, r0, r2
 8002094:	68db      	ldr	r3, [r3, #12]
 8002096:	f3c3 6341 	ubfx	r3, r3, #25, #2
 800209a:	3301      	adds	r3, #1
 800209c:	005b      	lsls	r3, r3, #1
 800209e:	fbb0 f0f3 	udiv	r0, r0, r3
 80020a2:	4770      	bx	lr
 80020a4:	4b23      	ldr	r3, [pc, #140]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020a6:	681b      	ldr	r3, [r3, #0]
 80020a8:	f013 0f08 	tst.w	r3, #8
 80020ac:	d111      	bne.n	80020d2 <RCC_PLL_GetFreqDomain_SYS+0x8e>
 80020ae:	4b21      	ldr	r3, [pc, #132]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020b0:	681b      	ldr	r3, [r3, #0]
 80020b2:	f013 0f08 	tst.w	r3, #8
 80020b6:	d006      	beq.n	80020c6 <RCC_PLL_GetFreqDomain_SYS+0x82>
 80020b8:	4b1e      	ldr	r3, [pc, #120]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020ba:	681b      	ldr	r3, [r3, #0]
 80020bc:	2300      	movs	r3, #0
 80020be:	4a1e      	ldr	r2, [pc, #120]	; (8002138 <RCC_PLL_GetFreqDomain_SYS+0xf4>)
 80020c0:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80020c4:	e7da      	b.n	800207c <RCC_PLL_GetFreqDomain_SYS+0x38>
 80020c6:	4b1b      	ldr	r3, [pc, #108]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020c8:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80020cc:	f3c3 2303 	ubfx	r3, r3, #8, #4
 80020d0:	e7f5      	b.n	80020be <RCC_PLL_GetFreqDomain_SYS+0x7a>
 80020d2:	4b18      	ldr	r3, [pc, #96]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020d4:	681b      	ldr	r3, [r3, #0]
 80020d6:	f013 0f08 	tst.w	r3, #8
 80020da:	d007      	beq.n	80020ec <RCC_PLL_GetFreqDomain_SYS+0xa8>
 80020dc:	4b15      	ldr	r3, [pc, #84]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020de:	681b      	ldr	r3, [r3, #0]
 80020e0:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80020e4:	4a14      	ldr	r2, [pc, #80]	; (8002138 <RCC_PLL_GetFreqDomain_SYS+0xf4>)
 80020e6:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80020ea:	e7c7      	b.n	800207c <RCC_PLL_GetFreqDomain_SYS+0x38>
 80020ec:	4b11      	ldr	r3, [pc, #68]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020ee:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80020f2:	091b      	lsrs	r3, r3, #4
 80020f4:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80020f8:	e7f4      	b.n	80020e4 <RCC_PLL_GetFreqDomain_SYS+0xa0>
 80020fa:	4b0e      	ldr	r3, [pc, #56]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020fc:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002100:	f3c3 2303 	ubfx	r3, r3, #8, #4
 8002104:	e7b5      	b.n	8002072 <RCC_PLL_GetFreqDomain_SYS+0x2e>
 8002106:	4b0b      	ldr	r3, [pc, #44]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002108:	681b      	ldr	r3, [r3, #0]
 800210a:	f013 0f08 	tst.w	r3, #8
 800210e:	d007      	beq.n	8002120 <RCC_PLL_GetFreqDomain_SYS+0xdc>
 8002110:	4b08      	ldr	r3, [pc, #32]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002112:	681b      	ldr	r3, [r3, #0]
 8002114:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8002118:	4a07      	ldr	r2, [pc, #28]	; (8002138 <RCC_PLL_GetFreqDomain_SYS+0xf4>)
 800211a:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 800211e:	e7ad      	b.n	800207c <RCC_PLL_GetFreqDomain_SYS+0x38>
 8002120:	4b04      	ldr	r3, [pc, #16]	; (8002134 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002122:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002126:	091b      	lsrs	r3, r3, #4
 8002128:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 800212c:	e7f4      	b.n	8002118 <RCC_PLL_GetFreqDomain_SYS+0xd4>
 800212e:	4a04      	ldr	r2, [pc, #16]	; (8002140 <RCC_PLL_GetFreqDomain_SYS+0xfc>)
 8002130:	e7a4      	b.n	800207c <RCC_PLL_GetFreqDomain_SYS+0x38>
 8002132:	bf00      	nop
 8002134:	40021000 	.word	0x40021000
 8002138:	08003df8 	.word	0x08003df8
 800213c:	00f42400 	.word	0x00f42400
 8002140:	007a1200 	.word	0x007a1200

08002144 <RCC_GetSystemClockFreq>:
 8002144:	b508      	push	{r3, lr}
 8002146:	4b36      	ldr	r3, [pc, #216]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 8002148:	689b      	ldr	r3, [r3, #8]
 800214a:	f003 030c 	and.w	r3, r3, #12
 800214e:	2b0c      	cmp	r3, #12
 8002150:	d838      	bhi.n	80021c4 <RCC_GetSystemClockFreq+0x80>
 8002152:	e8df f003 	tbb	[pc, r3]
 8002156:	3709      	.short	0x3709
 8002158:	37073737 	.word	0x37073737
 800215c:	37623737 	.word	0x37623737
 8002160:	3737      	.short	0x3737
 8002162:	34          	.byte	0x34
 8002163:	00          	.byte	0x00
 8002164:	482f      	ldr	r0, [pc, #188]	; (8002224 <RCC_GetSystemClockFreq+0xe0>)
 8002166:	bd08      	pop	{r3, pc}
 8002168:	4b2d      	ldr	r3, [pc, #180]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 800216a:	681b      	ldr	r3, [r3, #0]
 800216c:	f013 0f08 	tst.w	r3, #8
 8002170:	d111      	bne.n	8002196 <RCC_GetSystemClockFreq+0x52>
 8002172:	4b2b      	ldr	r3, [pc, #172]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 8002174:	681b      	ldr	r3, [r3, #0]
 8002176:	f013 0f08 	tst.w	r3, #8
 800217a:	d006      	beq.n	800218a <RCC_GetSystemClockFreq+0x46>
 800217c:	4b28      	ldr	r3, [pc, #160]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 800217e:	681b      	ldr	r3, [r3, #0]
 8002180:	2300      	movs	r3, #0
 8002182:	4a29      	ldr	r2, [pc, #164]	; (8002228 <RCC_GetSystemClockFreq+0xe4>)
 8002184:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 8002188:	bd08      	pop	{r3, pc}
 800218a:	4b25      	ldr	r3, [pc, #148]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 800218c:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002190:	f3c3 2303 	ubfx	r3, r3, #8, #4
 8002194:	e7f5      	b.n	8002182 <RCC_GetSystemClockFreq+0x3e>
 8002196:	4b22      	ldr	r3, [pc, #136]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 8002198:	681b      	ldr	r3, [r3, #0]
 800219a:	f013 0f08 	tst.w	r3, #8
 800219e:	d007      	beq.n	80021b0 <RCC_GetSystemClockFreq+0x6c>
 80021a0:	4b1f      	ldr	r3, [pc, #124]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 80021a2:	681b      	ldr	r3, [r3, #0]
 80021a4:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80021a8:	4a1f      	ldr	r2, [pc, #124]	; (8002228 <RCC_GetSystemClockFreq+0xe4>)
 80021aa:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 80021ae:	bd08      	pop	{r3, pc}
 80021b0:	4b1b      	ldr	r3, [pc, #108]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 80021b2:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80021b6:	091b      	lsrs	r3, r3, #4
 80021b8:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80021bc:	e7f4      	b.n	80021a8 <RCC_GetSystemClockFreq+0x64>
 80021be:	f7ff ff41 	bl	8002044 <RCC_PLL_GetFreqDomain_SYS>
 80021c2:	bd08      	pop	{r3, pc}
 80021c4:	4b16      	ldr	r3, [pc, #88]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 80021c6:	681b      	ldr	r3, [r3, #0]
 80021c8:	f013 0f08 	tst.w	r3, #8
 80021cc:	d111      	bne.n	80021f2 <RCC_GetSystemClockFreq+0xae>
 80021ce:	4b14      	ldr	r3, [pc, #80]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 80021d0:	681b      	ldr	r3, [r3, #0]
 80021d2:	f013 0f08 	tst.w	r3, #8
 80021d6:	d006      	beq.n	80021e6 <RCC_GetSystemClockFreq+0xa2>
 80021d8:	4b11      	ldr	r3, [pc, #68]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 80021da:	681b      	ldr	r3, [r3, #0]
 80021dc:	2300      	movs	r3, #0
 80021de:	4a12      	ldr	r2, [pc, #72]	; (8002228 <RCC_GetSystemClockFreq+0xe4>)
 80021e0:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 80021e4:	bd08      	pop	{r3, pc}
 80021e6:	4b0e      	ldr	r3, [pc, #56]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 80021e8:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80021ec:	f3c3 2303 	ubfx	r3, r3, #8, #4
 80021f0:	e7f5      	b.n	80021de <RCC_GetSystemClockFreq+0x9a>
 80021f2:	4b0b      	ldr	r3, [pc, #44]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 80021f4:	681b      	ldr	r3, [r3, #0]
 80021f6:	f013 0f08 	tst.w	r3, #8
 80021fa:	d007      	beq.n	800220c <RCC_GetSystemClockFreq+0xc8>
 80021fc:	4b08      	ldr	r3, [pc, #32]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 80021fe:	681b      	ldr	r3, [r3, #0]
 8002200:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8002204:	4a08      	ldr	r2, [pc, #32]	; (8002228 <RCC_GetSystemClockFreq+0xe4>)
 8002206:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 800220a:	bd08      	pop	{r3, pc}
 800220c:	4b04      	ldr	r3, [pc, #16]	; (8002220 <RCC_GetSystemClockFreq+0xdc>)
 800220e:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002212:	091b      	lsrs	r3, r3, #4
 8002214:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8002218:	e7f4      	b.n	8002204 <RCC_GetSystemClockFreq+0xc0>
 800221a:	4804      	ldr	r0, [pc, #16]	; (800222c <RCC_GetSystemClockFreq+0xe8>)
 800221c:	bd08      	pop	{r3, pc}
 800221e:	bf00      	nop
 8002220:	40021000 	.word	0x40021000
 8002224:	00f42400 	.word	0x00f42400
 8002228:	08003df8 	.word	0x08003df8
 800222c:	007a1200 	.word	0x007a1200

08002230 <LL_RCC_GetUSARTClockFreq>:
 8002230:	b508      	push	{r3, lr}
 8002232:	2803      	cmp	r0, #3
 8002234:	d005      	beq.n	8002242 <LL_RCC_GetUSARTClockFreq+0x12>
 8002236:	280c      	cmp	r0, #12
 8002238:	d030      	beq.n	800229c <LL_RCC_GetUSARTClockFreq+0x6c>
 800223a:	2830      	cmp	r0, #48	; 0x30
 800223c:	d05b      	beq.n	80022f6 <LL_RCC_GetUSARTClockFreq+0xc6>
 800223e:	2000      	movs	r0, #0
 8002240:	bd08      	pop	{r3, pc}
 8002242:	4b43      	ldr	r3, [pc, #268]	; (8002350 <LL_RCC_GetUSARTClockFreq+0x120>)
 8002244:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8002248:	4003      	ands	r3, r0
 800224a:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 800224e:	4b41      	ldr	r3, [pc, #260]	; (8002354 <LL_RCC_GetUSARTClockFreq+0x124>)
 8002250:	4298      	cmp	r0, r3
 8002252:	d00f      	beq.n	8002274 <LL_RCC_GetUSARTClockFreq+0x44>
 8002254:	f1b0 1f03 	cmp.w	r0, #196611	; 0x30003
 8002258:	d015      	beq.n	8002286 <LL_RCC_GetUSARTClockFreq+0x56>
 800225a:	3b01      	subs	r3, #1
 800225c:	4298      	cmp	r0, r3
 800225e:	d006      	beq.n	800226e <LL_RCC_GetUSARTClockFreq+0x3e>
 8002260:	f7ff ff70 	bl	8002144 <RCC_GetSystemClockFreq>
 8002264:	f7ff feca 	bl	8001ffc <RCC_GetHCLKClockFreq>
 8002268:	f7ff fee0 	bl	800202c <RCC_GetPCLK2ClockFreq>
 800226c:	bd08      	pop	{r3, pc}
 800226e:	f7ff ff69 	bl	8002144 <RCC_GetSystemClockFreq>
 8002272:	bd08      	pop	{r3, pc}
 8002274:	4b36      	ldr	r3, [pc, #216]	; (8002350 <LL_RCC_GetUSARTClockFreq+0x120>)
 8002276:	681b      	ldr	r3, [r3, #0]
 8002278:	f413 6f80 	tst.w	r3, #1024	; 0x400
 800227c:	d001      	beq.n	8002282 <LL_RCC_GetUSARTClockFreq+0x52>
 800227e:	4836      	ldr	r0, [pc, #216]	; (8002358 <LL_RCC_GetUSARTClockFreq+0x128>)
 8002280:	bd08      	pop	{r3, pc}
 8002282:	2000      	movs	r0, #0
 8002284:	bd08      	pop	{r3, pc}
 8002286:	4b32      	ldr	r3, [pc, #200]	; (8002350 <LL_RCC_GetUSARTClockFreq+0x120>)
 8002288:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800228c:	f013 0f02 	tst.w	r3, #2
 8002290:	d002      	beq.n	8002298 <LL_RCC_GetUSARTClockFreq+0x68>
 8002292:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002296:	bd08      	pop	{r3, pc}
 8002298:	2000      	movs	r0, #0
 800229a:	bd08      	pop	{r3, pc}
 800229c:	4b2c      	ldr	r3, [pc, #176]	; (8002350 <LL_RCC_GetUSARTClockFreq+0x120>)
 800229e:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80022a2:	4003      	ands	r3, r0
 80022a4:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 80022a8:	4b2c      	ldr	r3, [pc, #176]	; (800235c <LL_RCC_GetUSARTClockFreq+0x12c>)
 80022aa:	4298      	cmp	r0, r3
 80022ac:	d00f      	beq.n	80022ce <LL_RCC_GetUSARTClockFreq+0x9e>
 80022ae:	f1b0 1f0c 	cmp.w	r0, #786444	; 0xc000c
 80022b2:	d015      	beq.n	80022e0 <LL_RCC_GetUSARTClockFreq+0xb0>
 80022b4:	3b04      	subs	r3, #4
 80022b6:	4298      	cmp	r0, r3
 80022b8:	d006      	beq.n	80022c8 <LL_RCC_GetUSARTClockFreq+0x98>
 80022ba:	f7ff ff43 	bl	8002144 <RCC_GetSystemClockFreq>
 80022be:	f7ff fe9d 	bl	8001ffc <RCC_GetHCLKClockFreq>
 80022c2:	f7ff fea7 	bl	8002014 <RCC_GetPCLK1ClockFreq>
 80022c6:	bd08      	pop	{r3, pc}
 80022c8:	f7ff ff3c 	bl	8002144 <RCC_GetSystemClockFreq>
 80022cc:	bd08      	pop	{r3, pc}
 80022ce:	4b20      	ldr	r3, [pc, #128]	; (8002350 <LL_RCC_GetUSARTClockFreq+0x120>)
 80022d0:	681b      	ldr	r3, [r3, #0]
 80022d2:	f413 6f80 	tst.w	r3, #1024	; 0x400
 80022d6:	d001      	beq.n	80022dc <LL_RCC_GetUSARTClockFreq+0xac>
 80022d8:	481f      	ldr	r0, [pc, #124]	; (8002358 <LL_RCC_GetUSARTClockFreq+0x128>)
 80022da:	bd08      	pop	{r3, pc}
 80022dc:	2000      	movs	r0, #0
 80022de:	bd08      	pop	{r3, pc}
 80022e0:	4b1b      	ldr	r3, [pc, #108]	; (8002350 <LL_RCC_GetUSARTClockFreq+0x120>)
 80022e2:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80022e6:	f013 0f02 	tst.w	r3, #2
 80022ea:	d002      	beq.n	80022f2 <LL_RCC_GetUSARTClockFreq+0xc2>
 80022ec:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80022f0:	bd08      	pop	{r3, pc}
 80022f2:	2000      	movs	r0, #0
 80022f4:	bd08      	pop	{r3, pc}
 80022f6:	4b16      	ldr	r3, [pc, #88]	; (8002350 <LL_RCC_GetUSARTClockFreq+0x120>)
 80022f8:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80022fc:	4003      	ands	r3, r0
 80022fe:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 8002302:	4b17      	ldr	r3, [pc, #92]	; (8002360 <LL_RCC_GetUSARTClockFreq+0x130>)
 8002304:	4298      	cmp	r0, r3
 8002306:	d00f      	beq.n	8002328 <LL_RCC_GetUSARTClockFreq+0xf8>
 8002308:	f1b0 1f30 	cmp.w	r0, #3145776	; 0x300030
 800230c:	d015      	beq.n	800233a <LL_RCC_GetUSARTClockFreq+0x10a>
 800230e:	3b10      	subs	r3, #16
 8002310:	4298      	cmp	r0, r3
 8002312:	d006      	beq.n	8002322 <LL_RCC_GetUSARTClockFreq+0xf2>
 8002314:	f7ff ff16 	bl	8002144 <RCC_GetSystemClockFreq>
 8002318:	f7ff fe70 	bl	8001ffc <RCC_GetHCLKClockFreq>
 800231c:	f7ff fe7a 	bl	8002014 <RCC_GetPCLK1ClockFreq>
 8002320:	bd08      	pop	{r3, pc}
 8002322:	f7ff ff0f 	bl	8002144 <RCC_GetSystemClockFreq>
 8002326:	bd08      	pop	{r3, pc}
 8002328:	4b09      	ldr	r3, [pc, #36]	; (8002350 <LL_RCC_GetUSARTClockFreq+0x120>)
 800232a:	681b      	ldr	r3, [r3, #0]
 800232c:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8002330:	d001      	beq.n	8002336 <LL_RCC_GetUSARTClockFreq+0x106>
 8002332:	4809      	ldr	r0, [pc, #36]	; (8002358 <LL_RCC_GetUSARTClockFreq+0x128>)
 8002334:	bd08      	pop	{r3, pc}
 8002336:	2000      	movs	r0, #0
 8002338:	bd08      	pop	{r3, pc}
 800233a:	4b05      	ldr	r3, [pc, #20]	; (8002350 <LL_RCC_GetUSARTClockFreq+0x120>)
 800233c:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002340:	f013 0f02 	tst.w	r3, #2
 8002344:	d002      	beq.n	800234c <LL_RCC_GetUSARTClockFreq+0x11c>
 8002346:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800234a:	bd08      	pop	{r3, pc}
 800234c:	2000      	movs	r0, #0
 800234e:	bd08      	pop	{r3, pc}
 8002350:	40021000 	.word	0x40021000
 8002354:	00030002 	.word	0x00030002
 8002358:	00f42400 	.word	0x00f42400
 800235c:	000c0008 	.word	0x000c0008
 8002360:	00300020 	.word	0x00300020

08002364 <LL_RCC_GetUARTClockFreq>:
 8002364:	b510      	push	{r4, lr}
 8002366:	4604      	mov	r4, r0
 8002368:	28c0      	cmp	r0, #192	; 0xc0
 800236a:	d004      	beq.n	8002376 <LL_RCC_GetUARTClockFreq+0x12>
 800236c:	2000      	movs	r0, #0
 800236e:	f5b4 7f40 	cmp.w	r4, #768	; 0x300
 8002372:	d02d      	beq.n	80023d0 <LL_RCC_GetUARTClockFreq+0x6c>
 8002374:	bd10      	pop	{r4, pc}
 8002376:	4b2c      	ldr	r3, [pc, #176]	; (8002428 <LL_RCC_GetUARTClockFreq+0xc4>)
 8002378:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800237c:	4003      	ands	r3, r0
 800237e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8002382:	4a2a      	ldr	r2, [pc, #168]	; (800242c <LL_RCC_GetUARTClockFreq+0xc8>)
 8002384:	4293      	cmp	r3, r2
 8002386:	d00f      	beq.n	80023a8 <LL_RCC_GetUARTClockFreq+0x44>
 8002388:	f1b3 1fc0 	cmp.w	r3, #12583104	; 0xc000c0
 800238c:	d013      	beq.n	80023b6 <LL_RCC_GetUARTClockFreq+0x52>
 800238e:	3a40      	subs	r2, #64	; 0x40
 8002390:	4293      	cmp	r3, r2
 8002392:	d006      	beq.n	80023a2 <LL_RCC_GetUARTClockFreq+0x3e>
 8002394:	f7ff fed6 	bl	8002144 <RCC_GetSystemClockFreq>
 8002398:	f7ff fe30 	bl	8001ffc <RCC_GetHCLKClockFreq>
 800239c:	f7ff fe3a 	bl	8002014 <RCC_GetPCLK1ClockFreq>
 80023a0:	e7e5      	b.n	800236e <LL_RCC_GetUARTClockFreq+0xa>
 80023a2:	f7ff fecf 	bl	8002144 <RCC_GetSystemClockFreq>
 80023a6:	e7e2      	b.n	800236e <LL_RCC_GetUARTClockFreq+0xa>
 80023a8:	4b1f      	ldr	r3, [pc, #124]	; (8002428 <LL_RCC_GetUARTClockFreq+0xc4>)
 80023aa:	681b      	ldr	r3, [r3, #0]
 80023ac:	f413 6f80 	tst.w	r3, #1024	; 0x400
 80023b0:	d109      	bne.n	80023c6 <LL_RCC_GetUARTClockFreq+0x62>
 80023b2:	2000      	movs	r0, #0
 80023b4:	e7db      	b.n	800236e <LL_RCC_GetUARTClockFreq+0xa>
 80023b6:	4b1c      	ldr	r3, [pc, #112]	; (8002428 <LL_RCC_GetUARTClockFreq+0xc4>)
 80023b8:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80023bc:	f013 0f02 	tst.w	r3, #2
 80023c0:	d103      	bne.n	80023ca <LL_RCC_GetUARTClockFreq+0x66>
 80023c2:	2000      	movs	r0, #0
 80023c4:	e7d3      	b.n	800236e <LL_RCC_GetUARTClockFreq+0xa>
 80023c6:	481a      	ldr	r0, [pc, #104]	; (8002430 <LL_RCC_GetUARTClockFreq+0xcc>)
 80023c8:	e7d1      	b.n	800236e <LL_RCC_GetUARTClockFreq+0xa>
 80023ca:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80023ce:	e7ce      	b.n	800236e <LL_RCC_GetUARTClockFreq+0xa>
 80023d0:	4b15      	ldr	r3, [pc, #84]	; (8002428 <LL_RCC_GetUARTClockFreq+0xc4>)
 80023d2:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80023d6:	4023      	ands	r3, r4
 80023d8:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 80023dc:	4b15      	ldr	r3, [pc, #84]	; (8002434 <LL_RCC_GetUARTClockFreq+0xd0>)
 80023de:	429c      	cmp	r4, r3
 80023e0:	d010      	beq.n	8002404 <LL_RCC_GetUARTClockFreq+0xa0>
 80023e2:	f1b4 2f03 	cmp.w	r4, #50332416	; 0x3000300
 80023e6:	d015      	beq.n	8002414 <LL_RCC_GetUARTClockFreq+0xb0>
 80023e8:	f5a3 7380 	sub.w	r3, r3, #256	; 0x100
 80023ec:	429c      	cmp	r4, r3
 80023ee:	d006      	beq.n	80023fe <LL_RCC_GetUARTClockFreq+0x9a>
 80023f0:	f7ff fea8 	bl	8002144 <RCC_GetSystemClockFreq>
 80023f4:	f7ff fe02 	bl	8001ffc <RCC_GetHCLKClockFreq>
 80023f8:	f7ff fe0c 	bl	8002014 <RCC_GetPCLK1ClockFreq>
 80023fc:	bd10      	pop	{r4, pc}
 80023fe:	f7ff fea1 	bl	8002144 <RCC_GetSystemClockFreq>
 8002402:	bd10      	pop	{r4, pc}
 8002404:	4b08      	ldr	r3, [pc, #32]	; (8002428 <LL_RCC_GetUARTClockFreq+0xc4>)
 8002406:	681b      	ldr	r3, [r3, #0]
 8002408:	f413 6f80 	tst.w	r3, #1024	; 0x400
 800240c:	d001      	beq.n	8002412 <LL_RCC_GetUARTClockFreq+0xae>
 800240e:	4808      	ldr	r0, [pc, #32]	; (8002430 <LL_RCC_GetUARTClockFreq+0xcc>)
 8002410:	bd10      	pop	{r4, pc}
 8002412:	bd10      	pop	{r4, pc}
 8002414:	4b04      	ldr	r3, [pc, #16]	; (8002428 <LL_RCC_GetUARTClockFreq+0xc4>)
 8002416:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800241a:	f013 0f02 	tst.w	r3, #2
 800241e:	d002      	beq.n	8002426 <LL_RCC_GetUARTClockFreq+0xc2>
 8002420:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002424:	e7a6      	b.n	8002374 <LL_RCC_GetUARTClockFreq+0x10>
 8002426:	bd10      	pop	{r4, pc}
 8002428:	40021000 	.word	0x40021000
 800242c:	00c00080 	.word	0x00c00080
 8002430:	00f42400 	.word	0x00f42400
 8002434:	03000200 	.word	0x03000200

08002438 <LL_SPI_Init>:
 8002438:	6803      	ldr	r3, [r0, #0]
 800243a:	f013 0f40 	tst.w	r3, #64	; 0x40
 800243e:	d12c      	bne.n	800249a <LL_SPI_Init+0x62>
 8002440:	b410      	push	{r4}
 8002442:	6802      	ldr	r2, [r0, #0]
 8002444:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
 8002448:	f022 02bf 	bic.w	r2, r2, #191	; 0xbf
 800244c:	680b      	ldr	r3, [r1, #0]
 800244e:	684c      	ldr	r4, [r1, #4]
 8002450:	4323      	orrs	r3, r4
 8002452:	68cc      	ldr	r4, [r1, #12]
 8002454:	4323      	orrs	r3, r4
 8002456:	690c      	ldr	r4, [r1, #16]
 8002458:	4323      	orrs	r3, r4
 800245a:	694c      	ldr	r4, [r1, #20]
 800245c:	4323      	orrs	r3, r4
 800245e:	698c      	ldr	r4, [r1, #24]
 8002460:	4323      	orrs	r3, r4
 8002462:	69cc      	ldr	r4, [r1, #28]
 8002464:	4323      	orrs	r3, r4
 8002466:	6a0c      	ldr	r4, [r1, #32]
 8002468:	4323      	orrs	r3, r4
 800246a:	4313      	orrs	r3, r2
 800246c:	6003      	str	r3, [r0, #0]
 800246e:	6843      	ldr	r3, [r0, #4]
 8002470:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8002474:	f023 0304 	bic.w	r3, r3, #4
 8002478:	688a      	ldr	r2, [r1, #8]
 800247a:	8acc      	ldrh	r4, [r1, #22]
 800247c:	4322      	orrs	r2, r4
 800247e:	4313      	orrs	r3, r2
 8002480:	6043      	str	r3, [r0, #4]
 8002482:	6a0b      	ldr	r3, [r1, #32]
 8002484:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 8002488:	d003      	beq.n	8002492 <LL_SPI_Init+0x5a>
 800248a:	2001      	movs	r0, #1
 800248c:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002490:	4770      	bx	lr
 8002492:	8c8b      	ldrh	r3, [r1, #36]	; 0x24
 8002494:	6103      	str	r3, [r0, #16]
 8002496:	2001      	movs	r0, #1
 8002498:	e7f8      	b.n	800248c <LL_SPI_Init+0x54>
 800249a:	2000      	movs	r0, #0
 800249c:	4770      	bx	lr
	...

080024a0 <LL_USART_Init>:
 80024a0:	b538      	push	{r3, r4, r5, lr}
 80024a2:	6803      	ldr	r3, [r0, #0]
 80024a4:	f013 0f01 	tst.w	r3, #1
 80024a8:	d15b      	bne.n	8002562 <LL_USART_Init+0xc2>
 80024aa:	460d      	mov	r5, r1
 80024ac:	4604      	mov	r4, r0
 80024ae:	6803      	ldr	r3, [r0, #0]
 80024b0:	4a2f      	ldr	r2, [pc, #188]	; (8002570 <LL_USART_Init+0xd0>)
 80024b2:	401a      	ands	r2, r3
 80024b4:	684b      	ldr	r3, [r1, #4]
 80024b6:	68c9      	ldr	r1, [r1, #12]
 80024b8:	430b      	orrs	r3, r1
 80024ba:	6929      	ldr	r1, [r5, #16]
 80024bc:	430b      	orrs	r3, r1
 80024be:	69a9      	ldr	r1, [r5, #24]
 80024c0:	430b      	orrs	r3, r1
 80024c2:	4313      	orrs	r3, r2
 80024c4:	6003      	str	r3, [r0, #0]
 80024c6:	68ab      	ldr	r3, [r5, #8]
 80024c8:	6842      	ldr	r2, [r0, #4]
 80024ca:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 80024ce:	4313      	orrs	r3, r2
 80024d0:	6043      	str	r3, [r0, #4]
 80024d2:	696b      	ldr	r3, [r5, #20]
 80024d4:	6882      	ldr	r2, [r0, #8]
 80024d6:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80024da:	4313      	orrs	r3, r2
 80024dc:	6083      	str	r3, [r0, #8]
 80024de:	4b25      	ldr	r3, [pc, #148]	; (8002574 <LL_USART_Init+0xd4>)
 80024e0:	4298      	cmp	r0, r3
 80024e2:	d01b      	beq.n	800251c <LL_USART_Init+0x7c>
 80024e4:	4b24      	ldr	r3, [pc, #144]	; (8002578 <LL_USART_Init+0xd8>)
 80024e6:	4298      	cmp	r0, r3
 80024e8:	d01c      	beq.n	8002524 <LL_USART_Init+0x84>
 80024ea:	4b24      	ldr	r3, [pc, #144]	; (800257c <LL_USART_Init+0xdc>)
 80024ec:	4298      	cmp	r0, r3
 80024ee:	d01d      	beq.n	800252c <LL_USART_Init+0x8c>
 80024f0:	4b23      	ldr	r3, [pc, #140]	; (8002580 <LL_USART_Init+0xe0>)
 80024f2:	4298      	cmp	r0, r3
 80024f4:	d01e      	beq.n	8002534 <LL_USART_Init+0x94>
 80024f6:	4b23      	ldr	r3, [pc, #140]	; (8002584 <LL_USART_Init+0xe4>)
 80024f8:	4298      	cmp	r0, r3
 80024fa:	d01f      	beq.n	800253c <LL_USART_Init+0x9c>
 80024fc:	2000      	movs	r0, #0
 80024fe:	b390      	cbz	r0, 8002566 <LL_USART_Init+0xc6>
 8002500:	682b      	ldr	r3, [r5, #0]
 8002502:	b393      	cbz	r3, 800256a <LL_USART_Init+0xca>
 8002504:	69aa      	ldr	r2, [r5, #24]
 8002506:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 800250a:	d01c      	beq.n	8002546 <LL_USART_Init+0xa6>
 800250c:	eb00 0053 	add.w	r0, r0, r3, lsr #1
 8002510:	fbb0 f0f3 	udiv	r0, r0, r3
 8002514:	b280      	uxth	r0, r0
 8002516:	60e0      	str	r0, [r4, #12]
 8002518:	2001      	movs	r0, #1
 800251a:	bd38      	pop	{r3, r4, r5, pc}
 800251c:	2003      	movs	r0, #3
 800251e:	f7ff fe87 	bl	8002230 <LL_RCC_GetUSARTClockFreq>
 8002522:	e7ec      	b.n	80024fe <LL_USART_Init+0x5e>
 8002524:	200c      	movs	r0, #12
 8002526:	f7ff fe83 	bl	8002230 <LL_RCC_GetUSARTClockFreq>
 800252a:	e7e8      	b.n	80024fe <LL_USART_Init+0x5e>
 800252c:	2030      	movs	r0, #48	; 0x30
 800252e:	f7ff fe7f 	bl	8002230 <LL_RCC_GetUSARTClockFreq>
 8002532:	e7e4      	b.n	80024fe <LL_USART_Init+0x5e>
 8002534:	20c0      	movs	r0, #192	; 0xc0
 8002536:	f7ff ff15 	bl	8002364 <LL_RCC_GetUARTClockFreq>
 800253a:	e7e0      	b.n	80024fe <LL_USART_Init+0x5e>
 800253c:	f44f 7040 	mov.w	r0, #768	; 0x300
 8002540:	f7ff ff10 	bl	8002364 <LL_RCC_GetUARTClockFreq>
 8002544:	e7db      	b.n	80024fe <LL_USART_Init+0x5e>
 8002546:	085a      	lsrs	r2, r3, #1
 8002548:	eb02 0040 	add.w	r0, r2, r0, lsl #1
 800254c:	fbb0 f0f3 	udiv	r0, r0, r3
 8002550:	f64f 73f0 	movw	r3, #65520	; 0xfff0
 8002554:	4003      	ands	r3, r0
 8002556:	f3c0 0042 	ubfx	r0, r0, #1, #3
 800255a:	4318      	orrs	r0, r3
 800255c:	60e0      	str	r0, [r4, #12]
 800255e:	2001      	movs	r0, #1
 8002560:	bd38      	pop	{r3, r4, r5, pc}
 8002562:	2000      	movs	r0, #0
 8002564:	bd38      	pop	{r3, r4, r5, pc}
 8002566:	2000      	movs	r0, #0
 8002568:	bd38      	pop	{r3, r4, r5, pc}
 800256a:	2000      	movs	r0, #0
 800256c:	bd38      	pop	{r3, r4, r5, pc}
 800256e:	bf00      	nop
 8002570:	efff69f3 	.word	0xefff69f3
 8002574:	40013800 	.word	0x40013800
 8002578:	40004400 	.word	0x40004400
 800257c:	40004800 	.word	0x40004800
 8002580:	40004c00 	.word	0x40004c00
 8002584:	40005000 	.word	0x40005000

08002588 <LL_USART_ClockInit>:
 8002588:	6803      	ldr	r3, [r0, #0]
 800258a:	f013 0f01 	tst.w	r3, #1
 800258e:	d118      	bne.n	80025c2 <LL_USART_ClockInit+0x3a>
 8002590:	680b      	ldr	r3, [r1, #0]
 8002592:	b183      	cbz	r3, 80025b6 <LL_USART_ClockInit+0x2e>
 8002594:	b410      	push	{r4}
 8002596:	6843      	ldr	r3, [r0, #4]
 8002598:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 800259c:	684a      	ldr	r2, [r1, #4]
 800259e:	688c      	ldr	r4, [r1, #8]
 80025a0:	4322      	orrs	r2, r4
 80025a2:	68c9      	ldr	r1, [r1, #12]
 80025a4:	430a      	orrs	r2, r1
 80025a6:	4313      	orrs	r3, r2
 80025a8:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80025ac:	6043      	str	r3, [r0, #4]
 80025ae:	2001      	movs	r0, #1
 80025b0:	f85d 4b04 	ldr.w	r4, [sp], #4
 80025b4:	4770      	bx	lr
 80025b6:	6843      	ldr	r3, [r0, #4]
 80025b8:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80025bc:	6043      	str	r3, [r0, #4]
 80025be:	2001      	movs	r0, #1
 80025c0:	4770      	bx	lr
 80025c2:	2000      	movs	r0, #0
 80025c4:	4770      	bx	lr
	...

080025c8 <OC1Config>:
 80025c8:	b430      	push	{r4, r5}
 80025ca:	6a03      	ldr	r3, [r0, #32]
 80025cc:	f023 0301 	bic.w	r3, r3, #1
 80025d0:	6203      	str	r3, [r0, #32]
 80025d2:	6a03      	ldr	r3, [r0, #32]
 80025d4:	6844      	ldr	r4, [r0, #4]
 80025d6:	6982      	ldr	r2, [r0, #24]
 80025d8:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80025dc:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 80025e0:	680d      	ldr	r5, [r1, #0]
 80025e2:	432a      	orrs	r2, r5
 80025e4:	f023 0302 	bic.w	r3, r3, #2
 80025e8:	690d      	ldr	r5, [r1, #16]
 80025ea:	432b      	orrs	r3, r5
 80025ec:	f023 0301 	bic.w	r3, r3, #1
 80025f0:	684d      	ldr	r5, [r1, #4]
 80025f2:	432b      	orrs	r3, r5
 80025f4:	4d16      	ldr	r5, [pc, #88]	; (8002650 <OC1Config+0x88>)
 80025f6:	42a8      	cmp	r0, r5
 80025f8:	d00f      	beq.n	800261a <OC1Config+0x52>
 80025fa:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80025fe:	42a8      	cmp	r0, r5
 8002600:	d00b      	beq.n	800261a <OC1Config+0x52>
 8002602:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8002606:	42a8      	cmp	r0, r5
 8002608:	d007      	beq.n	800261a <OC1Config+0x52>
 800260a:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 800260e:	42a8      	cmp	r0, r5
 8002610:	d003      	beq.n	800261a <OC1Config+0x52>
 8002612:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002616:	42a8      	cmp	r0, r5
 8002618:	d112      	bne.n	8002640 <OC1Config+0x78>
 800261a:	f023 0308 	bic.w	r3, r3, #8
 800261e:	694d      	ldr	r5, [r1, #20]
 8002620:	ea43 0385 	orr.w	r3, r3, r5, lsl #2
 8002624:	f023 0304 	bic.w	r3, r3, #4
 8002628:	688d      	ldr	r5, [r1, #8]
 800262a:	ea43 0385 	orr.w	r3, r3, r5, lsl #2
 800262e:	f424 7480 	bic.w	r4, r4, #256	; 0x100
 8002632:	698d      	ldr	r5, [r1, #24]
 8002634:	432c      	orrs	r4, r5
 8002636:	f424 7400 	bic.w	r4, r4, #512	; 0x200
 800263a:	69cd      	ldr	r5, [r1, #28]
 800263c:	ea44 0445 	orr.w	r4, r4, r5, lsl #1
 8002640:	6044      	str	r4, [r0, #4]
 8002642:	6182      	str	r2, [r0, #24]
 8002644:	68ca      	ldr	r2, [r1, #12]
 8002646:	6342      	str	r2, [r0, #52]	; 0x34
 8002648:	6203      	str	r3, [r0, #32]
 800264a:	2001      	movs	r0, #1
 800264c:	bc30      	pop	{r4, r5}
 800264e:	4770      	bx	lr
 8002650:	40012c00 	.word	0x40012c00

08002654 <OC2Config>:
 8002654:	b430      	push	{r4, r5}
 8002656:	6a03      	ldr	r3, [r0, #32]
 8002658:	f023 0310 	bic.w	r3, r3, #16
 800265c:	6203      	str	r3, [r0, #32]
 800265e:	6a03      	ldr	r3, [r0, #32]
 8002660:	6844      	ldr	r4, [r0, #4]
 8002662:	6982      	ldr	r2, [r0, #24]
 8002664:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8002668:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 800266c:	680d      	ldr	r5, [r1, #0]
 800266e:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
 8002672:	f023 0320 	bic.w	r3, r3, #32
 8002676:	690d      	ldr	r5, [r1, #16]
 8002678:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 800267c:	f023 0310 	bic.w	r3, r3, #16
 8002680:	684d      	ldr	r5, [r1, #4]
 8002682:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002686:	4d17      	ldr	r5, [pc, #92]	; (80026e4 <OC2Config+0x90>)
 8002688:	42a8      	cmp	r0, r5
 800268a:	d00f      	beq.n	80026ac <OC2Config+0x58>
 800268c:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002690:	42a8      	cmp	r0, r5
 8002692:	d00b      	beq.n	80026ac <OC2Config+0x58>
 8002694:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8002698:	42a8      	cmp	r0, r5
 800269a:	d007      	beq.n	80026ac <OC2Config+0x58>
 800269c:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80026a0:	42a8      	cmp	r0, r5
 80026a2:	d003      	beq.n	80026ac <OC2Config+0x58>
 80026a4:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80026a8:	42a8      	cmp	r0, r5
 80026aa:	d113      	bne.n	80026d4 <OC2Config+0x80>
 80026ac:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80026b0:	694d      	ldr	r5, [r1, #20]
 80026b2:	ea43 1385 	orr.w	r3, r3, r5, lsl #6
 80026b6:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80026ba:	688d      	ldr	r5, [r1, #8]
 80026bc:	ea43 1385 	orr.w	r3, r3, r5, lsl #6
 80026c0:	f424 6480 	bic.w	r4, r4, #1024	; 0x400
 80026c4:	698d      	ldr	r5, [r1, #24]
 80026c6:	ea44 0485 	orr.w	r4, r4, r5, lsl #2
 80026ca:	f424 6400 	bic.w	r4, r4, #2048	; 0x800
 80026ce:	69cd      	ldr	r5, [r1, #28]
 80026d0:	ea44 04c5 	orr.w	r4, r4, r5, lsl #3
 80026d4:	6044      	str	r4, [r0, #4]
 80026d6:	6182      	str	r2, [r0, #24]
 80026d8:	68ca      	ldr	r2, [r1, #12]
 80026da:	6382      	str	r2, [r0, #56]	; 0x38
 80026dc:	6203      	str	r3, [r0, #32]
 80026de:	2001      	movs	r0, #1
 80026e0:	bc30      	pop	{r4, r5}
 80026e2:	4770      	bx	lr
 80026e4:	40012c00 	.word	0x40012c00

080026e8 <OC3Config>:
 80026e8:	b430      	push	{r4, r5}
 80026ea:	6a03      	ldr	r3, [r0, #32]
 80026ec:	f423 7380 	bic.w	r3, r3, #256	; 0x100
 80026f0:	6203      	str	r3, [r0, #32]
 80026f2:	6a03      	ldr	r3, [r0, #32]
 80026f4:	6844      	ldr	r4, [r0, #4]
 80026f6:	69c2      	ldr	r2, [r0, #28]
 80026f8:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80026fc:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8002700:	680d      	ldr	r5, [r1, #0]
 8002702:	432a      	orrs	r2, r5
 8002704:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8002708:	690d      	ldr	r5, [r1, #16]
 800270a:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
 800270e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
 8002712:	684d      	ldr	r5, [r1, #4]
 8002714:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
 8002718:	4d17      	ldr	r5, [pc, #92]	; (8002778 <OC3Config+0x90>)
 800271a:	42a8      	cmp	r0, r5
 800271c:	d00f      	beq.n	800273e <OC3Config+0x56>
 800271e:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002722:	42a8      	cmp	r0, r5
 8002724:	d00b      	beq.n	800273e <OC3Config+0x56>
 8002726:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 800272a:	42a8      	cmp	r0, r5
 800272c:	d007      	beq.n	800273e <OC3Config+0x56>
 800272e:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002732:	42a8      	cmp	r0, r5
 8002734:	d003      	beq.n	800273e <OC3Config+0x56>
 8002736:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 800273a:	42a8      	cmp	r0, r5
 800273c:	d113      	bne.n	8002766 <OC3Config+0x7e>
 800273e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8002742:	694d      	ldr	r5, [r1, #20]
 8002744:	ea43 2385 	orr.w	r3, r3, r5, lsl #10
 8002748:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 800274c:	688d      	ldr	r5, [r1, #8]
 800274e:	ea43 2385 	orr.w	r3, r3, r5, lsl #10
 8002752:	f424 5480 	bic.w	r4, r4, #4096	; 0x1000
 8002756:	698d      	ldr	r5, [r1, #24]
 8002758:	ea44 1405 	orr.w	r4, r4, r5, lsl #4
 800275c:	f424 5400 	bic.w	r4, r4, #8192	; 0x2000
 8002760:	69cd      	ldr	r5, [r1, #28]
 8002762:	ea44 1445 	orr.w	r4, r4, r5, lsl #5
 8002766:	6044      	str	r4, [r0, #4]
 8002768:	61c2      	str	r2, [r0, #28]
 800276a:	68ca      	ldr	r2, [r1, #12]
 800276c:	63c2      	str	r2, [r0, #60]	; 0x3c
 800276e:	6203      	str	r3, [r0, #32]
 8002770:	2001      	movs	r0, #1
 8002772:	bc30      	pop	{r4, r5}
 8002774:	4770      	bx	lr
 8002776:	bf00      	nop
 8002778:	40012c00 	.word	0x40012c00

0800277c <OC4Config>:
 800277c:	b430      	push	{r4, r5}
 800277e:	6a03      	ldr	r3, [r0, #32]
 8002780:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8002784:	6203      	str	r3, [r0, #32]
 8002786:	6a03      	ldr	r3, [r0, #32]
 8002788:	6844      	ldr	r4, [r0, #4]
 800278a:	69c2      	ldr	r2, [r0, #28]
 800278c:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8002790:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8002794:	680d      	ldr	r5, [r1, #0]
 8002796:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
 800279a:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 800279e:	690d      	ldr	r5, [r1, #16]
 80027a0:	ea43 3305 	orr.w	r3, r3, r5, lsl #12
 80027a4:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80027a8:	684d      	ldr	r5, [r1, #4]
 80027aa:	ea43 3305 	orr.w	r3, r3, r5, lsl #12
 80027ae:	4d10      	ldr	r5, [pc, #64]	; (80027f0 <OC4Config+0x74>)
 80027b0:	42a8      	cmp	r0, r5
 80027b2:	d00f      	beq.n	80027d4 <OC4Config+0x58>
 80027b4:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80027b8:	42a8      	cmp	r0, r5
 80027ba:	d00b      	beq.n	80027d4 <OC4Config+0x58>
 80027bc:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 80027c0:	42a8      	cmp	r0, r5
 80027c2:	d007      	beq.n	80027d4 <OC4Config+0x58>
 80027c4:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80027c8:	42a8      	cmp	r0, r5
 80027ca:	d003      	beq.n	80027d4 <OC4Config+0x58>
 80027cc:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80027d0:	42a8      	cmp	r0, r5
 80027d2:	d104      	bne.n	80027de <OC4Config+0x62>
 80027d4:	f424 4480 	bic.w	r4, r4, #16384	; 0x4000
 80027d8:	698d      	ldr	r5, [r1, #24]
 80027da:	ea44 1485 	orr.w	r4, r4, r5, lsl #6
 80027de:	6044      	str	r4, [r0, #4]
 80027e0:	61c2      	str	r2, [r0, #28]
 80027e2:	68ca      	ldr	r2, [r1, #12]
 80027e4:	6402      	str	r2, [r0, #64]	; 0x40
 80027e6:	6203      	str	r3, [r0, #32]
 80027e8:	2001      	movs	r0, #1
 80027ea:	bc30      	pop	{r4, r5}
 80027ec:	4770      	bx	lr
 80027ee:	bf00      	nop
 80027f0:	40012c00 	.word	0x40012c00

080027f4 <OC5Config>:
 80027f4:	b430      	push	{r4, r5}
 80027f6:	6a03      	ldr	r3, [r0, #32]
 80027f8:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 80027fc:	6203      	str	r3, [r0, #32]
 80027fe:	6a03      	ldr	r3, [r0, #32]
 8002800:	6d42      	ldr	r2, [r0, #84]	; 0x54
 8002802:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002806:	f022 0270 	bic.w	r2, r2, #112	; 0x70
 800280a:	680c      	ldr	r4, [r1, #0]
 800280c:	4322      	orrs	r2, r4
 800280e:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8002812:	690c      	ldr	r4, [r1, #16]
 8002814:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
 8002818:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 800281c:	684c      	ldr	r4, [r1, #4]
 800281e:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
 8002822:	4c10      	ldr	r4, [pc, #64]	; (8002864 <OC5Config+0x70>)
 8002824:	42a0      	cmp	r0, r4
 8002826:	d00f      	beq.n	8002848 <OC5Config+0x54>
 8002828:	f504 6400 	add.w	r4, r4, #2048	; 0x800
 800282c:	42a0      	cmp	r0, r4
 800282e:	d00b      	beq.n	8002848 <OC5Config+0x54>
 8002830:	f504 6440 	add.w	r4, r4, #3072	; 0xc00
 8002834:	42a0      	cmp	r0, r4
 8002836:	d007      	beq.n	8002848 <OC5Config+0x54>
 8002838:	f504 6480 	add.w	r4, r4, #1024	; 0x400
 800283c:	42a0      	cmp	r0, r4
 800283e:	d003      	beq.n	8002848 <OC5Config+0x54>
 8002840:	f504 6480 	add.w	r4, r4, #1024	; 0x400
 8002844:	42a0      	cmp	r0, r4
 8002846:	d106      	bne.n	8002856 <OC5Config+0x62>
 8002848:	6844      	ldr	r4, [r0, #4]
 800284a:	f424 3480 	bic.w	r4, r4, #65536	; 0x10000
 800284e:	698d      	ldr	r5, [r1, #24]
 8002850:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
 8002854:	6044      	str	r4, [r0, #4]
 8002856:	6542      	str	r2, [r0, #84]	; 0x54
 8002858:	68ca      	ldr	r2, [r1, #12]
 800285a:	6582      	str	r2, [r0, #88]	; 0x58
 800285c:	6203      	str	r3, [r0, #32]
 800285e:	2001      	movs	r0, #1
 8002860:	bc30      	pop	{r4, r5}
 8002862:	4770      	bx	lr
 8002864:	40012c00 	.word	0x40012c00

08002868 <OC6Config>:
 8002868:	b430      	push	{r4, r5}
 800286a:	6a03      	ldr	r3, [r0, #32]
 800286c:	f423 1380 	bic.w	r3, r3, #1048576	; 0x100000
 8002870:	6203      	str	r3, [r0, #32]
 8002872:	6a03      	ldr	r3, [r0, #32]
 8002874:	6d42      	ldr	r2, [r0, #84]	; 0x54
 8002876:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 800287a:	f422 42e0 	bic.w	r2, r2, #28672	; 0x7000
 800287e:	680c      	ldr	r4, [r1, #0]
 8002880:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
 8002884:	f423 1300 	bic.w	r3, r3, #2097152	; 0x200000
 8002888:	690c      	ldr	r4, [r1, #16]
 800288a:	ea43 5304 	orr.w	r3, r3, r4, lsl #20
 800288e:	f423 1380 	bic.w	r3, r3, #1048576	; 0x100000
 8002892:	684c      	ldr	r4, [r1, #4]
 8002894:	ea43 5304 	orr.w	r3, r3, r4, lsl #20
 8002898:	4c10      	ldr	r4, [pc, #64]	; (80028dc <OC6Config+0x74>)
 800289a:	42a0      	cmp	r0, r4
 800289c:	d00f      	beq.n	80028be <OC6Config+0x56>
 800289e:	f504 6400 	add.w	r4, r4, #2048	; 0x800
 80028a2:	42a0      	cmp	r0, r4
 80028a4:	d00b      	beq.n	80028be <OC6Config+0x56>
 80028a6:	f504 6440 	add.w	r4, r4, #3072	; 0xc00
 80028aa:	42a0      	cmp	r0, r4
 80028ac:	d007      	beq.n	80028be <OC6Config+0x56>
 80028ae:	f504 6480 	add.w	r4, r4, #1024	; 0x400
 80028b2:	42a0      	cmp	r0, r4
 80028b4:	d003      	beq.n	80028be <OC6Config+0x56>
 80028b6:	f504 6480 	add.w	r4, r4, #1024	; 0x400
 80028ba:	42a0      	cmp	r0, r4
 80028bc:	d106      	bne.n	80028cc <OC6Config+0x64>
 80028be:	6844      	ldr	r4, [r0, #4]
 80028c0:	f424 2480 	bic.w	r4, r4, #262144	; 0x40000
 80028c4:	698d      	ldr	r5, [r1, #24]
 80028c6:	ea44 2485 	orr.w	r4, r4, r5, lsl #10
 80028ca:	6044      	str	r4, [r0, #4]
 80028cc:	6542      	str	r2, [r0, #84]	; 0x54
 80028ce:	68ca      	ldr	r2, [r1, #12]
 80028d0:	65c2      	str	r2, [r0, #92]	; 0x5c
 80028d2:	6203      	str	r3, [r0, #32]
 80028d4:	2001      	movs	r0, #1
 80028d6:	bc30      	pop	{r4, r5}
 80028d8:	4770      	bx	lr
 80028da:	bf00      	nop
 80028dc:	40012c00 	.word	0x40012c00

080028e0 <LL_TIM_Init>:
 80028e0:	6803      	ldr	r3, [r0, #0]
 80028e2:	4a30      	ldr	r2, [pc, #192]	; (80029a4 <LL_TIM_Init+0xc4>)
 80028e4:	4290      	cmp	r0, r2
 80028e6:	d012      	beq.n	800290e <LL_TIM_Init+0x2e>
 80028e8:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80028ec:	d00f      	beq.n	800290e <LL_TIM_Init+0x2e>
 80028ee:	f5a2 3294 	sub.w	r2, r2, #75776	; 0x12800
 80028f2:	4290      	cmp	r0, r2
 80028f4:	d00b      	beq.n	800290e <LL_TIM_Init+0x2e>
 80028f6:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80028fa:	4290      	cmp	r0, r2
 80028fc:	d007      	beq.n	800290e <LL_TIM_Init+0x2e>
 80028fe:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002902:	4290      	cmp	r0, r2
 8002904:	d003      	beq.n	800290e <LL_TIM_Init+0x2e>
 8002906:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
 800290a:	4290      	cmp	r0, r2
 800290c:	d103      	bne.n	8002916 <LL_TIM_Init+0x36>
 800290e:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002912:	684a      	ldr	r2, [r1, #4]
 8002914:	4313      	orrs	r3, r2
 8002916:	4a23      	ldr	r2, [pc, #140]	; (80029a4 <LL_TIM_Init+0xc4>)
 8002918:	4290      	cmp	r0, r2
 800291a:	d01e      	beq.n	800295a <LL_TIM_Init+0x7a>
 800291c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002920:	d01b      	beq.n	800295a <LL_TIM_Init+0x7a>
 8002922:	f5a2 3294 	sub.w	r2, r2, #75776	; 0x12800
 8002926:	4290      	cmp	r0, r2
 8002928:	d017      	beq.n	800295a <LL_TIM_Init+0x7a>
 800292a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800292e:	4290      	cmp	r0, r2
 8002930:	d013      	beq.n	800295a <LL_TIM_Init+0x7a>
 8002932:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002936:	4290      	cmp	r0, r2
 8002938:	d00f      	beq.n	800295a <LL_TIM_Init+0x7a>
 800293a:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
 800293e:	4290      	cmp	r0, r2
 8002940:	d00b      	beq.n	800295a <LL_TIM_Init+0x7a>
 8002942:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8002946:	4290      	cmp	r0, r2
 8002948:	d007      	beq.n	800295a <LL_TIM_Init+0x7a>
 800294a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800294e:	4290      	cmp	r0, r2
 8002950:	d003      	beq.n	800295a <LL_TIM_Init+0x7a>
 8002952:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002956:	4290      	cmp	r0, r2
 8002958:	d103      	bne.n	8002962 <LL_TIM_Init+0x82>
 800295a:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 800295e:	68ca      	ldr	r2, [r1, #12]
 8002960:	4313      	orrs	r3, r2
 8002962:	6003      	str	r3, [r0, #0]
 8002964:	688b      	ldr	r3, [r1, #8]
 8002966:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002968:	880b      	ldrh	r3, [r1, #0]
 800296a:	6283      	str	r3, [r0, #40]	; 0x28
 800296c:	4b0d      	ldr	r3, [pc, #52]	; (80029a4 <LL_TIM_Init+0xc4>)
 800296e:	4298      	cmp	r0, r3
 8002970:	d00f      	beq.n	8002992 <LL_TIM_Init+0xb2>
 8002972:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002976:	4298      	cmp	r0, r3
 8002978:	d00b      	beq.n	8002992 <LL_TIM_Init+0xb2>
 800297a:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 800297e:	4298      	cmp	r0, r3
 8002980:	d007      	beq.n	8002992 <LL_TIM_Init+0xb2>
 8002982:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002986:	4298      	cmp	r0, r3
 8002988:	d003      	beq.n	8002992 <LL_TIM_Init+0xb2>
 800298a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800298e:	4298      	cmp	r0, r3
 8002990:	d101      	bne.n	8002996 <LL_TIM_Init+0xb6>
 8002992:	7c0b      	ldrb	r3, [r1, #16]
 8002994:	6303      	str	r3, [r0, #48]	; 0x30
 8002996:	6943      	ldr	r3, [r0, #20]
 8002998:	f043 0301 	orr.w	r3, r3, #1
 800299c:	6143      	str	r3, [r0, #20]
 800299e:	2001      	movs	r0, #1
 80029a0:	4770      	bx	lr
 80029a2:	bf00      	nop
 80029a4:	40012c00 	.word	0x40012c00

080029a8 <LL_TIM_OC_Init>:
 80029a8:	b508      	push	{r3, lr}
 80029aa:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80029ae:	d017      	beq.n	80029e0 <LL_TIM_OC_Init+0x38>
 80029b0:	d90a      	bls.n	80029c8 <LL_TIM_OC_Init+0x20>
 80029b2:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80029b6:	d01b      	beq.n	80029f0 <LL_TIM_OC_Init+0x48>
 80029b8:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80029bc:	d01c      	beq.n	80029f8 <LL_TIM_OC_Init+0x50>
 80029be:	f5b1 5f80 	cmp.w	r1, #4096	; 0x1000
 80029c2:	d011      	beq.n	80029e8 <LL_TIM_OC_Init+0x40>
 80029c4:	2000      	movs	r0, #0
 80029c6:	bd08      	pop	{r3, pc}
 80029c8:	2901      	cmp	r1, #1
 80029ca:	d005      	beq.n	80029d8 <LL_TIM_OC_Init+0x30>
 80029cc:	2910      	cmp	r1, #16
 80029ce:	d1f9      	bne.n	80029c4 <LL_TIM_OC_Init+0x1c>
 80029d0:	4611      	mov	r1, r2
 80029d2:	f7ff fe3f 	bl	8002654 <OC2Config>
 80029d6:	bd08      	pop	{r3, pc}
 80029d8:	4611      	mov	r1, r2
 80029da:	f7ff fdf5 	bl	80025c8 <OC1Config>
 80029de:	bd08      	pop	{r3, pc}
 80029e0:	4611      	mov	r1, r2
 80029e2:	f7ff fe81 	bl	80026e8 <OC3Config>
 80029e6:	bd08      	pop	{r3, pc}
 80029e8:	4611      	mov	r1, r2
 80029ea:	f7ff fec7 	bl	800277c <OC4Config>
 80029ee:	bd08      	pop	{r3, pc}
 80029f0:	4611      	mov	r1, r2
 80029f2:	f7ff feff 	bl	80027f4 <OC5Config>
 80029f6:	bd08      	pop	{r3, pc}
 80029f8:	4611      	mov	r1, r2
 80029fa:	f7ff ff35 	bl	8002868 <OC6Config>
 80029fe:	bd08      	pop	{r3, pc}

08002a00 <LL_DAC_Init>:
 8002a00:	b430      	push	{r4, r5}
 8002a02:	6853      	ldr	r3, [r2, #4]
 8002a04:	6805      	ldr	r5, [r0, #0]
 8002a06:	f001 0110 	and.w	r1, r1, #16
 8002a0a:	2401      	movs	r4, #1
 8002a0c:	408c      	lsls	r4, r1
 8002a0e:	43ac      	bics	r4, r5
 8002a10:	d028      	beq.n	8002a64 <LL_DAC_Init+0x64>
 8002a12:	b1eb      	cbz	r3, 8002a50 <LL_DAC_Init+0x50>
 8002a14:	6804      	ldr	r4, [r0, #0]
 8002a16:	f640 75f8 	movw	r5, #4088	; 0xff8
 8002a1a:	408d      	lsls	r5, r1
 8002a1c:	ea24 0405 	bic.w	r4, r4, r5
 8002a20:	6815      	ldr	r5, [r2, #0]
 8002a22:	432b      	orrs	r3, r5
 8002a24:	6895      	ldr	r5, [r2, #8]
 8002a26:	432b      	orrs	r3, r5
 8002a28:	408b      	lsls	r3, r1
 8002a2a:	4323      	orrs	r3, r4
 8002a2c:	6003      	str	r3, [r0, #0]
 8002a2e:	6bc4      	ldr	r4, [r0, #60]	; 0x3c
 8002a30:	2307      	movs	r3, #7
 8002a32:	408b      	lsls	r3, r1
 8002a34:	ea24 0403 	bic.w	r4, r4, r3
 8002a38:	68d3      	ldr	r3, [r2, #12]
 8002a3a:	6915      	ldr	r5, [r2, #16]
 8002a3c:	432b      	orrs	r3, r5
 8002a3e:	6952      	ldr	r2, [r2, #20]
 8002a40:	4313      	orrs	r3, r2
 8002a42:	fa03 f101 	lsl.w	r1, r3, r1
 8002a46:	4321      	orrs	r1, r4
 8002a48:	63c1      	str	r1, [r0, #60]	; 0x3c
 8002a4a:	2001      	movs	r0, #1
 8002a4c:	bc30      	pop	{r4, r5}
 8002a4e:	4770      	bx	lr
 8002a50:	6803      	ldr	r3, [r0, #0]
 8002a52:	24f8      	movs	r4, #248	; 0xf8
 8002a54:	408c      	lsls	r4, r1
 8002a56:	ea23 0304 	bic.w	r3, r3, r4
 8002a5a:	6814      	ldr	r4, [r2, #0]
 8002a5c:	408c      	lsls	r4, r1
 8002a5e:	4323      	orrs	r3, r4
 8002a60:	6003      	str	r3, [r0, #0]
 8002a62:	e7e4      	b.n	8002a2e <LL_DAC_Init+0x2e>
 8002a64:	2000      	movs	r0, #0
 8002a66:	e7f1      	b.n	8002a4c <LL_DAC_Init+0x4c>

08002a68 <LL_ADC_CommonInit>:
 8002a68:	b430      	push	{r4, r5}
 8002a6a:	684d      	ldr	r5, [r1, #4]
 8002a6c:	4b15      	ldr	r3, [pc, #84]	; (8002ac4 <LL_ADC_CommonInit+0x5c>)
 8002a6e:	689a      	ldr	r2, [r3, #8]
 8002a70:	f002 0201 	and.w	r2, r2, #1
 8002a74:	f503 7380 	add.w	r3, r3, #256	; 0x100
 8002a78:	689c      	ldr	r4, [r3, #8]
 8002a7a:	f004 0401 	and.w	r4, r4, #1
 8002a7e:	f503 7380 	add.w	r3, r3, #256	; 0x100
 8002a82:	689b      	ldr	r3, [r3, #8]
 8002a84:	f003 0301 	and.w	r3, r3, #1
 8002a88:	4322      	orrs	r2, r4
 8002a8a:	d117      	bne.n	8002abc <LL_ADC_CommonInit+0x54>
 8002a8c:	b2db      	uxtb	r3, r3
 8002a8e:	b9ab      	cbnz	r3, 8002abc <LL_ADC_CommonInit+0x54>
 8002a90:	b93d      	cbnz	r5, 8002aa2 <LL_ADC_CommonInit+0x3a>
 8002a92:	6882      	ldr	r2, [r0, #8]
 8002a94:	4b0c      	ldr	r3, [pc, #48]	; (8002ac8 <LL_ADC_CommonInit+0x60>)
 8002a96:	4013      	ands	r3, r2
 8002a98:	680a      	ldr	r2, [r1, #0]
 8002a9a:	4313      	orrs	r3, r2
 8002a9c:	6083      	str	r3, [r0, #8]
 8002a9e:	2001      	movs	r0, #1
 8002aa0:	e00d      	b.n	8002abe <LL_ADC_CommonInit+0x56>
 8002aa2:	6882      	ldr	r2, [r0, #8]
 8002aa4:	4b08      	ldr	r3, [pc, #32]	; (8002ac8 <LL_ADC_CommonInit+0x60>)
 8002aa6:	4013      	ands	r3, r2
 8002aa8:	680a      	ldr	r2, [r1, #0]
 8002aaa:	4315      	orrs	r5, r2
 8002aac:	688a      	ldr	r2, [r1, #8]
 8002aae:	4315      	orrs	r5, r2
 8002ab0:	68ca      	ldr	r2, [r1, #12]
 8002ab2:	4315      	orrs	r5, r2
 8002ab4:	431d      	orrs	r5, r3
 8002ab6:	6085      	str	r5, [r0, #8]
 8002ab8:	2001      	movs	r0, #1
 8002aba:	e000      	b.n	8002abe <LL_ADC_CommonInit+0x56>
 8002abc:	2000      	movs	r0, #0
 8002abe:	bc30      	pop	{r4, r5}
 8002ac0:	4770      	bx	lr
 8002ac2:	bf00      	nop
 8002ac4:	50040000 	.word	0x50040000
 8002ac8:	ffc030e0 	.word	0xffc030e0

08002acc <LL_ADC_Init>:
 8002acc:	6883      	ldr	r3, [r0, #8]
 8002ace:	f013 0f01 	tst.w	r3, #1
 8002ad2:	d110      	bne.n	8002af6 <LL_ADC_Init+0x2a>
 8002ad4:	b410      	push	{r4}
 8002ad6:	68c3      	ldr	r3, [r0, #12]
 8002ad8:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8002adc:	f023 0338 	bic.w	r3, r3, #56	; 0x38
 8002ae0:	680a      	ldr	r2, [r1, #0]
 8002ae2:	684c      	ldr	r4, [r1, #4]
 8002ae4:	4322      	orrs	r2, r4
 8002ae6:	6889      	ldr	r1, [r1, #8]
 8002ae8:	430a      	orrs	r2, r1
 8002aea:	4313      	orrs	r3, r2
 8002aec:	60c3      	str	r3, [r0, #12]
 8002aee:	2001      	movs	r0, #1
 8002af0:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002af4:	4770      	bx	lr
 8002af6:	2000      	movs	r0, #0
 8002af8:	4770      	bx	lr
	...

08002afc <LL_ADC_REG_Init>:
 8002afc:	684a      	ldr	r2, [r1, #4]
 8002afe:	6883      	ldr	r3, [r0, #8]
 8002b00:	f013 0f01 	tst.w	r3, #1
 8002b04:	d126      	bne.n	8002b54 <LL_ADC_REG_Init+0x58>
 8002b06:	b410      	push	{r4}
 8002b08:	b1ba      	cbz	r2, 8002b3a <LL_ADC_REG_Init+0x3e>
 8002b0a:	68c3      	ldr	r3, [r0, #12]
 8002b0c:	4a12      	ldr	r2, [pc, #72]	; (8002b58 <LL_ADC_REG_Init+0x5c>)
 8002b0e:	401a      	ands	r2, r3
 8002b10:	680b      	ldr	r3, [r1, #0]
 8002b12:	688c      	ldr	r4, [r1, #8]
 8002b14:	4323      	orrs	r3, r4
 8002b16:	68cc      	ldr	r4, [r1, #12]
 8002b18:	4323      	orrs	r3, r4
 8002b1a:	690c      	ldr	r4, [r1, #16]
 8002b1c:	4323      	orrs	r3, r4
 8002b1e:	694c      	ldr	r4, [r1, #20]
 8002b20:	4323      	orrs	r3, r4
 8002b22:	4313      	orrs	r3, r2
 8002b24:	60c3      	str	r3, [r0, #12]
 8002b26:	684b      	ldr	r3, [r1, #4]
 8002b28:	6b02      	ldr	r2, [r0, #48]	; 0x30
 8002b2a:	f022 020f 	bic.w	r2, r2, #15
 8002b2e:	4313      	orrs	r3, r2
 8002b30:	6303      	str	r3, [r0, #48]	; 0x30
 8002b32:	2001      	movs	r0, #1
 8002b34:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002b38:	4770      	bx	lr
 8002b3a:	68c3      	ldr	r3, [r0, #12]
 8002b3c:	4a06      	ldr	r2, [pc, #24]	; (8002b58 <LL_ADC_REG_Init+0x5c>)
 8002b3e:	401a      	ands	r2, r3
 8002b40:	680b      	ldr	r3, [r1, #0]
 8002b42:	68cc      	ldr	r4, [r1, #12]
 8002b44:	4323      	orrs	r3, r4
 8002b46:	690c      	ldr	r4, [r1, #16]
 8002b48:	4323      	orrs	r3, r4
 8002b4a:	694c      	ldr	r4, [r1, #20]
 8002b4c:	4323      	orrs	r3, r4
 8002b4e:	4313      	orrs	r3, r2
 8002b50:	60c3      	str	r3, [r0, #12]
 8002b52:	e7e8      	b.n	8002b26 <LL_ADC_REG_Init+0x2a>
 8002b54:	2000      	movs	r0, #0
 8002b56:	4770      	bx	lr
 8002b58:	fff0c03c 	.word	0xfff0c03c

08002b5c <LCD_write_data>:
 8002b5c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002b60:	4c10      	ldr	r4, [pc, #64]	; (8002ba4 <LCD_write_data+0x48>)
 8002b62:	6965      	ldr	r5, [r4, #20]
 8002b64:	f405 457f 	and.w	r5, r5, #65280	; 0xff00
 8002b68:	f5b5 4f7f 	cmp.w	r5, #65280	; 0xff00
 8002b6c:	bf14      	ite	ne
 8002b6e:	2500      	movne	r5, #0
 8002b70:	2501      	moveq	r5, #1
 8002b72:	4b0d      	ldr	r3, [pc, #52]	; (8002ba8 <LCD_write_data+0x4c>)
 8002b74:	2202      	movs	r2, #2
 8002b76:	619a      	str	r2, [r3, #24]
 8002b78:	2204      	movs	r2, #4
 8002b7a:	629a      	str	r2, [r3, #40]	; 0x28
 8002b7c:	f44f 477f 	mov.w	r7, #65280	; 0xff00
 8002b80:	62a7      	str	r7, [r4, #40]	; 0x28
 8002b82:	0200      	lsls	r0, r0, #8
 8002b84:	61a0      	str	r0, [r4, #24]
 8002b86:	f8df 8024 	ldr.w	r8, [pc, #36]	; 8002bac <LCD_write_data+0x50>
 8002b8a:	2601      	movs	r6, #1
 8002b8c:	f8c8 6018 	str.w	r6, [r8, #24]
 8002b90:	4630      	mov	r0, r6
 8002b92:	f7ff f97f 	bl	8001e94 <LL_mDelay>
 8002b96:	f8c8 6028 	str.w	r6, [r8, #40]	; 0x28
 8002b9a:	62a7      	str	r7, [r4, #40]	; 0x28
 8002b9c:	61a5      	str	r5, [r4, #24]
 8002b9e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002ba2:	bf00      	nop
 8002ba4:	48000800 	.word	0x48000800
 8002ba8:	48000400 	.word	0x48000400
 8002bac:	48001c00 	.word	0x48001c00

08002bb0 <LCD_write_cmd>:
 8002bb0:	b510      	push	{r4, lr}
 8002bb2:	4b15      	ldr	r3, [pc, #84]	; (8002c08 <LCD_write_cmd+0x58>)
 8002bb4:	695c      	ldr	r4, [r3, #20]
 8002bb6:	f404 447f 	and.w	r4, r4, #65280	; 0xff00
 8002bba:	f5b4 4f7f 	cmp.w	r4, #65280	; 0xff00
 8002bbe:	bf14      	ite	ne
 8002bc0:	2400      	movne	r4, #0
 8002bc2:	2401      	moveq	r4, #1
 8002bc4:	4a11      	ldr	r2, [pc, #68]	; (8002c0c <LCD_write_cmd+0x5c>)
 8002bc6:	2102      	movs	r1, #2
 8002bc8:	6291      	str	r1, [r2, #40]	; 0x28
 8002bca:	2104      	movs	r1, #4
 8002bcc:	6291      	str	r1, [r2, #40]	; 0x28
 8002bce:	f44f 427f 	mov.w	r2, #65280	; 0xff00
 8002bd2:	629a      	str	r2, [r3, #40]	; 0x28
 8002bd4:	0202      	lsls	r2, r0, #8
 8002bd6:	619a      	str	r2, [r3, #24]
 8002bd8:	2201      	movs	r2, #1
 8002bda:	f503 53a0 	add.w	r3, r3, #5120	; 0x1400
 8002bde:	619a      	str	r2, [r3, #24]
 8002be0:	f010 0f80 	tst.w	r0, #128	; 0x80
 8002be4:	d00c      	beq.n	8002c00 <LCD_write_cmd+0x50>
 8002be6:	4610      	mov	r0, r2
 8002be8:	f7ff f954 	bl	8001e94 <LL_mDelay>
 8002bec:	2201      	movs	r2, #1
 8002bee:	4b08      	ldr	r3, [pc, #32]	; (8002c10 <LCD_write_cmd+0x60>)
 8002bf0:	629a      	str	r2, [r3, #40]	; 0x28
 8002bf2:	f5a3 53a0 	sub.w	r3, r3, #5120	; 0x1400
 8002bf6:	f44f 427f 	mov.w	r2, #65280	; 0xff00
 8002bfa:	629a      	str	r2, [r3, #40]	; 0x28
 8002bfc:	619c      	str	r4, [r3, #24]
 8002bfe:	bd10      	pop	{r4, pc}
 8002c00:	2002      	movs	r0, #2
 8002c02:	f7ff f947 	bl	8001e94 <LL_mDelay>
 8002c06:	e7f1      	b.n	8002bec <LCD_write_cmd+0x3c>
 8002c08:	48000800 	.word	0x48000800
 8002c0c:	48000400 	.word	0x48000400
 8002c10:	48001c00 	.word	0x48001c00

08002c14 <init_LCD>:
 8002c14:	b538      	push	{r3, r4, r5, lr}
 8002c16:	4b18      	ldr	r3, [pc, #96]	; (8002c78 <init_LCD+0x64>)
 8002c18:	2402      	movs	r4, #2
 8002c1a:	629c      	str	r4, [r3, #40]	; 0x28
 8002c1c:	2204      	movs	r2, #4
 8002c1e:	629a      	str	r2, [r3, #40]	; 0x28
 8002c20:	2501      	movs	r5, #1
 8002c22:	f503 53c0 	add.w	r3, r3, #6144	; 0x1800
 8002c26:	629d      	str	r5, [r3, #40]	; 0x28
 8002c28:	2064      	movs	r0, #100	; 0x64
 8002c2a:	f7ff f933 	bl	8001e94 <LL_mDelay>
 8002c2e:	2030      	movs	r0, #48	; 0x30
 8002c30:	f7ff ffbe 	bl	8002bb0 <LCD_write_cmd>
 8002c34:	201e      	movs	r0, #30
 8002c36:	f7ff f92d 	bl	8001e94 <LL_mDelay>
 8002c3a:	2030      	movs	r0, #48	; 0x30
 8002c3c:	f7ff ffb8 	bl	8002bb0 <LCD_write_cmd>
 8002c40:	200a      	movs	r0, #10
 8002c42:	f7ff f927 	bl	8001e94 <LL_mDelay>
 8002c46:	2030      	movs	r0, #48	; 0x30
 8002c48:	f7ff ffb2 	bl	8002bb0 <LCD_write_cmd>
 8002c4c:	200a      	movs	r0, #10
 8002c4e:	f7ff f921 	bl	8001e94 <LL_mDelay>
 8002c52:	2038      	movs	r0, #56	; 0x38
 8002c54:	f7ff ffac 	bl	8002bb0 <LCD_write_cmd>
 8002c58:	2010      	movs	r0, #16
 8002c5a:	f7ff ffa9 	bl	8002bb0 <LCD_write_cmd>
 8002c5e:	200c      	movs	r0, #12
 8002c60:	f7ff ffa6 	bl	8002bb0 <LCD_write_cmd>
 8002c64:	2006      	movs	r0, #6
 8002c66:	f7ff ffa3 	bl	8002bb0 <LCD_write_cmd>
 8002c6a:	4628      	mov	r0, r5
 8002c6c:	f7ff ffa0 	bl	8002bb0 <LCD_write_cmd>
 8002c70:	4620      	mov	r0, r4
 8002c72:	f7ff ff9d 	bl	8002bb0 <LCD_write_cmd>
 8002c76:	bd38      	pop	{r3, r4, r5, pc}
 8002c78:	48000400 	.word	0x48000400

08002c7c <LCD_cursor_pos>:
 8002c7c:	b508      	push	{r3, lr}
 8002c7e:	2804      	cmp	r0, #4
 8002c80:	d00b      	beq.n	8002c9a <LCD_cursor_pos+0x1e>
 8002c82:	2803      	cmp	r0, #3
 8002c84:	d00b      	beq.n	8002c9e <LCD_cursor_pos+0x22>
 8002c86:	2802      	cmp	r0, #2
 8002c88:	d00b      	beq.n	8002ca2 <LCD_cursor_pos+0x26>
 8002c8a:	2080      	movs	r0, #128	; 0x80
 8002c8c:	4408      	add	r0, r1
 8002c8e:	b2c0      	uxtb	r0, r0
 8002c90:	3801      	subs	r0, #1
 8002c92:	b2c0      	uxtb	r0, r0
 8002c94:	f7ff ff8c 	bl	8002bb0 <LCD_write_cmd>
 8002c98:	bd08      	pop	{r3, pc}
 8002c9a:	20d4      	movs	r0, #212	; 0xd4
 8002c9c:	e7f6      	b.n	8002c8c <LCD_cursor_pos+0x10>
 8002c9e:	2094      	movs	r0, #148	; 0x94
 8002ca0:	e7f4      	b.n	8002c8c <LCD_cursor_pos+0x10>
 8002ca2:	20c0      	movs	r0, #192	; 0xc0
 8002ca4:	e7f2      	b.n	8002c8c <LCD_cursor_pos+0x10>
	...

08002ca8 <effects_init>:
 8002ca8:	2300      	movs	r3, #0
 8002caa:	e004      	b.n	8002cb6 <effects_init+0xe>
 8002cac:	2100      	movs	r1, #0
 8002cae:	4a05      	ldr	r2, [pc, #20]	; (8002cc4 <effects_init+0x1c>)
 8002cb0:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002cb4:	3301      	adds	r3, #1
 8002cb6:	f64b 327f 	movw	r2, #47999	; 0xbb7f
 8002cba:	4293      	cmp	r3, r2
 8002cbc:	d9f6      	bls.n	8002cac <effects_init+0x4>
 8002cbe:	2000      	movs	r0, #0
 8002cc0:	4770      	bx	lr
 8002cc2:	bf00      	nop
 8002cc4:	20000090 	.word	0x20000090

08002cc8 <delay_sample>:
 8002cc8:	4b08      	ldr	r3, [pc, #32]	; (8002cec <delay_sample+0x24>)
 8002cca:	681b      	ldr	r3, [r3, #0]
 8002ccc:	b143      	cbz	r3, 8002ce0 <delay_sample+0x18>
 8002cce:	3b01      	subs	r3, #1
 8002cd0:	4a06      	ldr	r2, [pc, #24]	; (8002cec <delay_sample+0x24>)
 8002cd2:	6013      	str	r3, [r2, #0]
 8002cd4:	4b05      	ldr	r3, [pc, #20]	; (8002cec <delay_sample+0x24>)
 8002cd6:	681a      	ldr	r2, [r3, #0]
 8002cd8:	4b05      	ldr	r3, [pc, #20]	; (8002cf0 <delay_sample+0x28>)
 8002cda:	f823 0012 	strh.w	r0, [r3, r2, lsl #1]
 8002cde:	4770      	bx	lr
 8002ce0:	f64b 327f 	movw	r2, #47999	; 0xbb7f
 8002ce4:	4b01      	ldr	r3, [pc, #4]	; (8002cec <delay_sample+0x24>)
 8002ce6:	601a      	str	r2, [r3, #0]
 8002ce8:	e7f4      	b.n	8002cd4 <delay_sample+0xc>
 8002cea:	bf00      	nop
 8002cec:	20000004 	.word	0x20000004
 8002cf0:	20000090 	.word	0x20000090

08002cf4 <delay>:
 8002cf4:	b410      	push	{r4}
 8002cf6:	4b0d      	ldr	r3, [pc, #52]	; (8002d2c <delay+0x38>)
 8002cf8:	681c      	ldr	r4, [r3, #0]
 8002cfa:	e009      	b.n	8002d10 <delay+0x1c>
 8002cfc:	4b0c      	ldr	r3, [pc, #48]	; (8002d30 <delay+0x3c>)
 8002cfe:	f833 3014 	ldrh.w	r3, [r3, r4, lsl #1]
 8002d02:	4418      	add	r0, r3
 8002d04:	b200      	sxth	r0, r0
 8002d06:	eb00 70d0 	add.w	r0, r0, r0, lsr #31
 8002d0a:	1040      	asrs	r0, r0, #1
 8002d0c:	3a01      	subs	r2, #1
 8002d0e:	b292      	uxth	r2, r2
 8002d10:	b142      	cbz	r2, 8002d24 <delay+0x30>
 8002d12:	440c      	add	r4, r1
 8002d14:	f64b 337f 	movw	r3, #47999	; 0xbb7f
 8002d18:	429c      	cmp	r4, r3
 8002d1a:	d9ef      	bls.n	8002cfc <delay+0x8>
 8002d1c:	f5a4 443b 	sub.w	r4, r4, #47872	; 0xbb00
 8002d20:	3c80      	subs	r4, #128	; 0x80
 8002d22:	e7eb      	b.n	8002cfc <delay+0x8>
 8002d24:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002d28:	4770      	bx	lr
 8002d2a:	bf00      	nop
 8002d2c:	20000004 	.word	0x20000004
 8002d30:	20000090 	.word	0x20000090

08002d34 <taylor_cos>:
 8002d34:	ee60 7a00 	vmul.f32	s15, s0, s0
 8002d38:	ed9f 7a08 	vldr	s14, [pc, #32]	; 8002d5c <taylor_cos+0x28>
 8002d3c:	ee20 7a07 	vmul.f32	s14, s0, s14
 8002d40:	ee20 0a07 	vmul.f32	s0, s0, s14
 8002d44:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
 8002d48:	ee30 0a47 	vsub.f32	s0, s0, s14
 8002d4c:	ee27 0a80 	vmul.f32	s0, s15, s0
 8002d50:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
 8002d54:	ee30 0a27 	vadd.f32	s0, s0, s15
 8002d58:	4770      	bx	lr
 8002d5a:	bf00      	nop
 8002d5c:	3d2aaab4 	.word	0x3d2aaab4

08002d60 <flange>:
 8002d60:	b570      	push	{r4, r5, r6, lr}
 8002d62:	ed2d 8b02 	vpush	{d8}
 8002d66:	4606      	mov	r6, r0
 8002d68:	460d      	mov	r5, r1
 8002d6a:	ee08 2a10 	vmov	s16, r2
 8002d6e:	ee07 1a90 	vmov	s15, r1
 8002d72:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 8002d76:	eef2 7a04 	vmov.f32	s15, #36	; 0x41200000  10.0
 8002d7a:	ee87 0a27 	vdiv.f32	s0, s14, s15
 8002d7e:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8002dec <flange+0x8c>
 8002d82:	ee20 0a27 	vmul.f32	s0, s0, s15
 8002d86:	4b1a      	ldr	r3, [pc, #104]	; (8002df0 <flange+0x90>)
 8002d88:	681c      	ldr	r4, [r3, #0]
 8002d8a:	ee07 4a90 	vmov	s15, r4
 8002d8e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8002d92:	ee67 7a80 	vmul.f32	s15, s15, s0
 8002d96:	ed9f 0a17 	vldr	s0, [pc, #92]	; 8002df4 <flange+0x94>
 8002d9a:	ee87 0a80 	vdiv.f32	s0, s15, s0
 8002d9e:	f7ff ffc9 	bl	8002d34 <taylor_cos>
 8002da2:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
 8002da6:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8002daa:	eeb8 8ac8 	vcvt.f32.s32	s16, s16
 8002dae:	ee28 0a00 	vmul.f32	s0, s16, s0
 8002db2:	eebc 0ac0 	vcvt.u32.f32	s0, s0
 8002db6:	f64b 3180 	movw	r1, #48000	; 0xbb80
 8002dba:	fb91 f1f5 	sdiv	r1, r1, r5
 8002dbe:	428c      	cmp	r4, r1
 8002dc0:	dc10      	bgt.n	8002de4 <flange+0x84>
 8002dc2:	2201      	movs	r2, #1
 8002dc4:	4b0c      	ldr	r3, [pc, #48]	; (8002df8 <flange+0x98>)
 8002dc6:	701a      	strb	r2, [r3, #0]
 8002dc8:	4b0b      	ldr	r3, [pc, #44]	; (8002df8 <flange+0x98>)
 8002dca:	781b      	ldrb	r3, [r3, #0]
 8002dcc:	4423      	add	r3, r4
 8002dce:	4a08      	ldr	r2, [pc, #32]	; (8002df0 <flange+0x90>)
 8002dd0:	6013      	str	r3, [r2, #0]
 8002dd2:	2201      	movs	r2, #1
 8002dd4:	ee10 1a10 	vmov	r1, s0
 8002dd8:	4630      	mov	r0, r6
 8002dda:	f7ff ff8b 	bl	8002cf4 <delay>
 8002dde:	ecbd 8b02 	vpop	{d8}
 8002de2:	bd70      	pop	{r4, r5, r6, pc}
 8002de4:	22ff      	movs	r2, #255	; 0xff
 8002de6:	4b04      	ldr	r3, [pc, #16]	; (8002df8 <flange+0x98>)
 8002de8:	701a      	strb	r2, [r3, #0]
 8002dea:	e7ed      	b.n	8002dc8 <flange+0x68>
 8002dec:	40c90fdb 	.word	0x40c90fdb
 8002df0:	20017790 	.word	0x20017790
 8002df4:	473b8000 	.word	0x473b8000
 8002df8:	20017794 	.word	0x20017794

08002dfc <taylor_tanh>:
 8002dfc:	ee20 7a00 	vmul.f32	s14, s0, s0
 8002e00:	eddf 7a09 	vldr	s15, [pc, #36]	; 8002e28 <taylor_tanh+0x2c>
 8002e04:	ee60 7a27 	vmul.f32	s15, s0, s15
 8002e08:	ee60 7a27 	vmul.f32	s15, s0, s15
 8002e0c:	eddf 6a07 	vldr	s13, [pc, #28]	; 8002e2c <taylor_tanh+0x30>
 8002e10:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8002e14:	ee67 7a27 	vmul.f32	s15, s14, s15
 8002e18:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 8002e1c:	ee77 7a87 	vadd.f32	s15, s15, s14
 8002e20:	ee20 0a27 	vmul.f32	s0, s0, s15
 8002e24:	4770      	bx	lr
 8002e26:	bf00      	nop
 8002e28:	3e088886 	.word	0x3e088886
 8002e2c:	3eaaaaaa 	.word	0x3eaaaaaa

08002e30 <tanh_OD>:
 8002e30:	b500      	push	{lr}
 8002e32:	ed2d 8b02 	vpush	{d8}
 8002e36:	b083      	sub	sp, #12
 8002e38:	ee07 0a90 	vmov	s15, r0
 8002e3c:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 8002e40:	eddf 7a17 	vldr	s15, [pc, #92]	; 8002ea0 <tanh_OD+0x70>
 8002e44:	ee87 0a27 	vdiv.f32	s0, s14, s15
 8002e48:	ee07 1a90 	vmov	s15, r1
 8002e4c:	eef8 6a67 	vcvt.f32.u32	s13, s15
 8002e50:	eddf 7a14 	vldr	s15, [pc, #80]	; 8002ea4 <tanh_OD+0x74>
 8002e54:	ee86 7aa7 	vdiv.f32	s14, s13, s15
 8002e58:	ee06 2a90 	vmov	s13, r2
 8002e5c:	eef8 6a66 	vcvt.f32.u32	s13, s13
 8002e60:	eec6 8aa7 	vdiv.f32	s17, s13, s15
 8002e64:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
 8002e68:	ee38 8a68 	vsub.f32	s16, s16, s17
 8002e6c:	ee20 0a07 	vmul.f32	s0, s0, s14
 8002e70:	f7ff ffc4 	bl	8002dfc <taylor_tanh>
 8002e74:	ee28 0a00 	vmul.f32	s0, s16, s0
 8002e78:	ee68 8a80 	vmul.f32	s17, s17, s0
 8002e7c:	ee30 0a28 	vadd.f32	s0, s0, s17
 8002e80:	eddf 7a09 	vldr	s15, [pc, #36]	; 8002ea8 <tanh_OD+0x78>
 8002e84:	ee20 0a27 	vmul.f32	s0, s0, s15
 8002e88:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8002e8c:	edcd 7a01 	vstr	s15, [sp, #4]
 8002e90:	f9bd 0004 	ldrsh.w	r0, [sp, #4]
 8002e94:	b003      	add	sp, #12
 8002e96:	ecbd 8b02 	vpop	{d8}
 8002e9a:	f85d fb04 	ldr.w	pc, [sp], #4
 8002e9e:	bf00      	nop
 8002ea0:	457ff000 	.word	0x457ff000
 8002ea4:	42c80000 	.word	0x42c80000
 8002ea8:	434cc000 	.word	0x434cc000

08002eac <Reset_Handler>:
 8002eac:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002ee4 <LoopForever+0x2>
 8002eb0:	2100      	movs	r1, #0
 8002eb2:	e003      	b.n	8002ebc <LoopCopyDataInit>

08002eb4 <CopyDataInit>:
 8002eb4:	4b0c      	ldr	r3, [pc, #48]	; (8002ee8 <LoopForever+0x6>)
 8002eb6:	585b      	ldr	r3, [r3, r1]
 8002eb8:	5043      	str	r3, [r0, r1]
 8002eba:	3104      	adds	r1, #4

08002ebc <LoopCopyDataInit>:
 8002ebc:	480b      	ldr	r0, [pc, #44]	; (8002eec <LoopForever+0xa>)
 8002ebe:	4b0c      	ldr	r3, [pc, #48]	; (8002ef0 <LoopForever+0xe>)
 8002ec0:	1842      	adds	r2, r0, r1
 8002ec2:	429a      	cmp	r2, r3
 8002ec4:	d3f6      	bcc.n	8002eb4 <CopyDataInit>
 8002ec6:	4a0b      	ldr	r2, [pc, #44]	; (8002ef4 <LoopForever+0x12>)
 8002ec8:	e002      	b.n	8002ed0 <LoopFillZerobss>

08002eca <FillZerobss>:
 8002eca:	2300      	movs	r3, #0
 8002ecc:	f842 3b04 	str.w	r3, [r2], #4

08002ed0 <LoopFillZerobss>:
 8002ed0:	4b09      	ldr	r3, [pc, #36]	; (8002ef8 <LoopForever+0x16>)
 8002ed2:	429a      	cmp	r2, r3
 8002ed4:	d3f9      	bcc.n	8002eca <FillZerobss>
 8002ed6:	f7fd fb61 	bl	800059c <SystemInit>
 8002eda:	f000 f811 	bl	8002f00 <__libc_init_array>
 8002ede:	f7fe f83b 	bl	8000f58 <main>

08002ee2 <LoopForever>:
 8002ee2:	e7fe      	b.n	8002ee2 <LoopForever>
 8002ee4:	20018000 	.word	0x20018000
 8002ee8:	08003f48 	.word	0x08003f48
 8002eec:	20000000 	.word	0x20000000
 8002ef0:	20000070 	.word	0x20000070
 8002ef4:	20000070 	.word	0x20000070
 8002ef8:	20017830 	.word	0x20017830

08002efc <ADC3_IRQHandler>:
 8002efc:	e7fe      	b.n	8002efc <ADC3_IRQHandler>
	...

08002f00 <__libc_init_array>:
 8002f00:	b570      	push	{r4, r5, r6, lr}
 8002f02:	4e0d      	ldr	r6, [pc, #52]	; (8002f38 <__libc_init_array+0x38>)
 8002f04:	4c0d      	ldr	r4, [pc, #52]	; (8002f3c <__libc_init_array+0x3c>)
 8002f06:	1ba4      	subs	r4, r4, r6
 8002f08:	10a4      	asrs	r4, r4, #2
 8002f0a:	2500      	movs	r5, #0
 8002f0c:	42a5      	cmp	r5, r4
 8002f0e:	d109      	bne.n	8002f24 <__libc_init_array+0x24>
 8002f10:	4e0b      	ldr	r6, [pc, #44]	; (8002f40 <__libc_init_array+0x40>)
 8002f12:	4c0c      	ldr	r4, [pc, #48]	; (8002f44 <__libc_init_array+0x44>)
 8002f14:	f000 ff56 	bl	8003dc4 <_init>
 8002f18:	1ba4      	subs	r4, r4, r6
 8002f1a:	10a4      	asrs	r4, r4, #2
 8002f1c:	2500      	movs	r5, #0
 8002f1e:	42a5      	cmp	r5, r4
 8002f20:	d105      	bne.n	8002f2e <__libc_init_array+0x2e>
 8002f22:	bd70      	pop	{r4, r5, r6, pc}
 8002f24:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
 8002f28:	4798      	blx	r3
 8002f2a:	3501      	adds	r5, #1
 8002f2c:	e7ee      	b.n	8002f0c <__libc_init_array+0xc>
 8002f2e:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
 8002f32:	4798      	blx	r3
 8002f34:	3501      	adds	r5, #1
 8002f36:	e7f2      	b.n	8002f1e <__libc_init_array+0x1e>
 8002f38:	08003f38 	.word	0x08003f38
 8002f3c:	08003f38 	.word	0x08003f38
 8002f40:	08003f38 	.word	0x08003f38
 8002f44:	08003f3c 	.word	0x08003f3c

08002f48 <memset>:
 8002f48:	4402      	add	r2, r0
 8002f4a:	4603      	mov	r3, r0
 8002f4c:	4293      	cmp	r3, r2
 8002f4e:	d100      	bne.n	8002f52 <memset+0xa>
 8002f50:	4770      	bx	lr
 8002f52:	f803 1b01 	strb.w	r1, [r3], #1
 8002f56:	e7f9      	b.n	8002f4c <memset+0x4>

08002f58 <iprintf>:
 8002f58:	b40f      	push	{r0, r1, r2, r3}
 8002f5a:	4b0a      	ldr	r3, [pc, #40]	; (8002f84 <iprintf+0x2c>)
 8002f5c:	b513      	push	{r0, r1, r4, lr}
 8002f5e:	681c      	ldr	r4, [r3, #0]
 8002f60:	b124      	cbz	r4, 8002f6c <iprintf+0x14>
 8002f62:	69a3      	ldr	r3, [r4, #24]
 8002f64:	b913      	cbnz	r3, 8002f6c <iprintf+0x14>
 8002f66:	4620      	mov	r0, r4
 8002f68:	f000 f84e 	bl	8003008 <__sinit>
 8002f6c:	ab05      	add	r3, sp, #20
 8002f6e:	9a04      	ldr	r2, [sp, #16]
 8002f70:	68a1      	ldr	r1, [r4, #8]
 8002f72:	9301      	str	r3, [sp, #4]
 8002f74:	4620      	mov	r0, r4
 8002f76:	f000 f959 	bl	800322c <_vfiprintf_r>
 8002f7a:	b002      	add	sp, #8
 8002f7c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8002f80:	b004      	add	sp, #16
 8002f82:	4770      	bx	lr
 8002f84:	20000008 	.word	0x20000008

08002f88 <_cleanup_r>:
 8002f88:	4901      	ldr	r1, [pc, #4]	; (8002f90 <_cleanup_r+0x8>)
 8002f8a:	f000 b8a9 	b.w	80030e0 <_fwalk_reent>
 8002f8e:	bf00      	nop
 8002f90:	08003b01 	.word	0x08003b01

08002f94 <std.isra.0>:
 8002f94:	2300      	movs	r3, #0
 8002f96:	b510      	push	{r4, lr}
 8002f98:	4604      	mov	r4, r0
 8002f9a:	6003      	str	r3, [r0, #0]
 8002f9c:	6043      	str	r3, [r0, #4]
 8002f9e:	6083      	str	r3, [r0, #8]
 8002fa0:	8181      	strh	r1, [r0, #12]
 8002fa2:	6643      	str	r3, [r0, #100]	; 0x64
 8002fa4:	81c2      	strh	r2, [r0, #14]
 8002fa6:	6103      	str	r3, [r0, #16]
 8002fa8:	6143      	str	r3, [r0, #20]
 8002faa:	6183      	str	r3, [r0, #24]
 8002fac:	4619      	mov	r1, r3
 8002fae:	2208      	movs	r2, #8
 8002fb0:	305c      	adds	r0, #92	; 0x5c
 8002fb2:	f7ff ffc9 	bl	8002f48 <memset>
 8002fb6:	4b05      	ldr	r3, [pc, #20]	; (8002fcc <std.isra.0+0x38>)
 8002fb8:	6263      	str	r3, [r4, #36]	; 0x24
 8002fba:	4b05      	ldr	r3, [pc, #20]	; (8002fd0 <std.isra.0+0x3c>)
 8002fbc:	62a3      	str	r3, [r4, #40]	; 0x28
 8002fbe:	4b05      	ldr	r3, [pc, #20]	; (8002fd4 <std.isra.0+0x40>)
 8002fc0:	62e3      	str	r3, [r4, #44]	; 0x2c
 8002fc2:	4b05      	ldr	r3, [pc, #20]	; (8002fd8 <std.isra.0+0x44>)
 8002fc4:	6224      	str	r4, [r4, #32]
 8002fc6:	6323      	str	r3, [r4, #48]	; 0x30
 8002fc8:	bd10      	pop	{r4, pc}
 8002fca:	bf00      	nop
 8002fcc:	080037a5 	.word	0x080037a5
 8002fd0:	080037c7 	.word	0x080037c7
 8002fd4:	080037ff 	.word	0x080037ff
 8002fd8:	08003823 	.word	0x08003823

08002fdc <__sfmoreglue>:
 8002fdc:	b570      	push	{r4, r5, r6, lr}
 8002fde:	1e4a      	subs	r2, r1, #1
 8002fe0:	2568      	movs	r5, #104	; 0x68
 8002fe2:	4355      	muls	r5, r2
 8002fe4:	460e      	mov	r6, r1
 8002fe6:	f105 0174 	add.w	r1, r5, #116	; 0x74
 8002fea:	f000 f897 	bl	800311c <_malloc_r>
 8002fee:	4604      	mov	r4, r0
 8002ff0:	b140      	cbz	r0, 8003004 <__sfmoreglue+0x28>
 8002ff2:	2100      	movs	r1, #0
 8002ff4:	e880 0042 	stmia.w	r0, {r1, r6}
 8002ff8:	300c      	adds	r0, #12
 8002ffa:	60a0      	str	r0, [r4, #8]
 8002ffc:	f105 0268 	add.w	r2, r5, #104	; 0x68
 8003000:	f7ff ffa2 	bl	8002f48 <memset>
 8003004:	4620      	mov	r0, r4
 8003006:	bd70      	pop	{r4, r5, r6, pc}

08003008 <__sinit>:
 8003008:	6983      	ldr	r3, [r0, #24]
 800300a:	b510      	push	{r4, lr}
 800300c:	4604      	mov	r4, r0
 800300e:	bb33      	cbnz	r3, 800305e <__sinit+0x56>
 8003010:	6483      	str	r3, [r0, #72]	; 0x48
 8003012:	64c3      	str	r3, [r0, #76]	; 0x4c
 8003014:	6503      	str	r3, [r0, #80]	; 0x50
 8003016:	4b12      	ldr	r3, [pc, #72]	; (8003060 <__sinit+0x58>)
 8003018:	4a12      	ldr	r2, [pc, #72]	; (8003064 <__sinit+0x5c>)
 800301a:	681b      	ldr	r3, [r3, #0]
 800301c:	6282      	str	r2, [r0, #40]	; 0x28
 800301e:	4298      	cmp	r0, r3
 8003020:	bf04      	itt	eq
 8003022:	2301      	moveq	r3, #1
 8003024:	6183      	streq	r3, [r0, #24]
 8003026:	f000 f81f 	bl	8003068 <__sfp>
 800302a:	6060      	str	r0, [r4, #4]
 800302c:	4620      	mov	r0, r4
 800302e:	f000 f81b 	bl	8003068 <__sfp>
 8003032:	60a0      	str	r0, [r4, #8]
 8003034:	4620      	mov	r0, r4
 8003036:	f000 f817 	bl	8003068 <__sfp>
 800303a:	2200      	movs	r2, #0
 800303c:	60e0      	str	r0, [r4, #12]
 800303e:	2104      	movs	r1, #4
 8003040:	6860      	ldr	r0, [r4, #4]
 8003042:	f7ff ffa7 	bl	8002f94 <std.isra.0>
 8003046:	2201      	movs	r2, #1
 8003048:	2109      	movs	r1, #9
 800304a:	68a0      	ldr	r0, [r4, #8]
 800304c:	f7ff ffa2 	bl	8002f94 <std.isra.0>
 8003050:	2202      	movs	r2, #2
 8003052:	2112      	movs	r1, #18
 8003054:	68e0      	ldr	r0, [r4, #12]
 8003056:	f7ff ff9d 	bl	8002f94 <std.isra.0>
 800305a:	2301      	movs	r3, #1
 800305c:	61a3      	str	r3, [r4, #24]
 800305e:	bd10      	pop	{r4, pc}
 8003060:	08003e9c 	.word	0x08003e9c
 8003064:	08002f89 	.word	0x08002f89

08003068 <__sfp>:
 8003068:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800306a:	4b1c      	ldr	r3, [pc, #112]	; (80030dc <__sfp+0x74>)
 800306c:	681e      	ldr	r6, [r3, #0]
 800306e:	69b3      	ldr	r3, [r6, #24]
 8003070:	4607      	mov	r7, r0
 8003072:	b913      	cbnz	r3, 800307a <__sfp+0x12>
 8003074:	4630      	mov	r0, r6
 8003076:	f7ff ffc7 	bl	8003008 <__sinit>
 800307a:	3648      	adds	r6, #72	; 0x48
 800307c:	68b4      	ldr	r4, [r6, #8]
 800307e:	6873      	ldr	r3, [r6, #4]
 8003080:	3b01      	subs	r3, #1
 8003082:	d503      	bpl.n	800308c <__sfp+0x24>
 8003084:	6833      	ldr	r3, [r6, #0]
 8003086:	b133      	cbz	r3, 8003096 <__sfp+0x2e>
 8003088:	6836      	ldr	r6, [r6, #0]
 800308a:	e7f7      	b.n	800307c <__sfp+0x14>
 800308c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
 8003090:	b16d      	cbz	r5, 80030ae <__sfp+0x46>
 8003092:	3468      	adds	r4, #104	; 0x68
 8003094:	e7f4      	b.n	8003080 <__sfp+0x18>
 8003096:	2104      	movs	r1, #4
 8003098:	4638      	mov	r0, r7
 800309a:	f7ff ff9f 	bl	8002fdc <__sfmoreglue>
 800309e:	6030      	str	r0, [r6, #0]
 80030a0:	2800      	cmp	r0, #0
 80030a2:	d1f1      	bne.n	8003088 <__sfp+0x20>
 80030a4:	230c      	movs	r3, #12
 80030a6:	603b      	str	r3, [r7, #0]
 80030a8:	4604      	mov	r4, r0
 80030aa:	4620      	mov	r0, r4
 80030ac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80030ae:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80030b2:	81e3      	strh	r3, [r4, #14]
 80030b4:	2301      	movs	r3, #1
 80030b6:	81a3      	strh	r3, [r4, #12]
 80030b8:	6665      	str	r5, [r4, #100]	; 0x64
 80030ba:	6025      	str	r5, [r4, #0]
 80030bc:	60a5      	str	r5, [r4, #8]
 80030be:	6065      	str	r5, [r4, #4]
 80030c0:	6125      	str	r5, [r4, #16]
 80030c2:	6165      	str	r5, [r4, #20]
 80030c4:	61a5      	str	r5, [r4, #24]
 80030c6:	2208      	movs	r2, #8
 80030c8:	4629      	mov	r1, r5
 80030ca:	f104 005c 	add.w	r0, r4, #92	; 0x5c
 80030ce:	f7ff ff3b 	bl	8002f48 <memset>
 80030d2:	6365      	str	r5, [r4, #52]	; 0x34
 80030d4:	63a5      	str	r5, [r4, #56]	; 0x38
 80030d6:	64a5      	str	r5, [r4, #72]	; 0x48
 80030d8:	64e5      	str	r5, [r4, #76]	; 0x4c
 80030da:	e7e6      	b.n	80030aa <__sfp+0x42>
 80030dc:	08003e9c 	.word	0x08003e9c

080030e0 <_fwalk_reent>:
 80030e0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80030e4:	4680      	mov	r8, r0
 80030e6:	4689      	mov	r9, r1
 80030e8:	f100 0448 	add.w	r4, r0, #72	; 0x48
 80030ec:	2600      	movs	r6, #0
 80030ee:	b914      	cbnz	r4, 80030f6 <_fwalk_reent+0x16>
 80030f0:	4630      	mov	r0, r6
 80030f2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80030f6:	68a5      	ldr	r5, [r4, #8]
 80030f8:	6867      	ldr	r7, [r4, #4]
 80030fa:	3f01      	subs	r7, #1
 80030fc:	d501      	bpl.n	8003102 <_fwalk_reent+0x22>
 80030fe:	6824      	ldr	r4, [r4, #0]
 8003100:	e7f5      	b.n	80030ee <_fwalk_reent+0xe>
 8003102:	89ab      	ldrh	r3, [r5, #12]
 8003104:	2b01      	cmp	r3, #1
 8003106:	d907      	bls.n	8003118 <_fwalk_reent+0x38>
 8003108:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
 800310c:	3301      	adds	r3, #1
 800310e:	d003      	beq.n	8003118 <_fwalk_reent+0x38>
 8003110:	4629      	mov	r1, r5
 8003112:	4640      	mov	r0, r8
 8003114:	47c8      	blx	r9
 8003116:	4306      	orrs	r6, r0
 8003118:	3568      	adds	r5, #104	; 0x68
 800311a:	e7ee      	b.n	80030fa <_fwalk_reent+0x1a>

0800311c <_malloc_r>:
 800311c:	b570      	push	{r4, r5, r6, lr}
 800311e:	1ccd      	adds	r5, r1, #3
 8003120:	f025 0503 	bic.w	r5, r5, #3
 8003124:	3508      	adds	r5, #8
 8003126:	2d0c      	cmp	r5, #12
 8003128:	bf38      	it	cc
 800312a:	250c      	movcc	r5, #12
 800312c:	2d00      	cmp	r5, #0
 800312e:	4606      	mov	r6, r0
 8003130:	db01      	blt.n	8003136 <_malloc_r+0x1a>
 8003132:	42a9      	cmp	r1, r5
 8003134:	d903      	bls.n	800313e <_malloc_r+0x22>
 8003136:	230c      	movs	r3, #12
 8003138:	6033      	str	r3, [r6, #0]
 800313a:	2000      	movs	r0, #0
 800313c:	bd70      	pop	{r4, r5, r6, pc}
 800313e:	f000 fd7f 	bl	8003c40 <__malloc_lock>
 8003142:	4a23      	ldr	r2, [pc, #140]	; (80031d0 <_malloc_r+0xb4>)
 8003144:	6814      	ldr	r4, [r2, #0]
 8003146:	4621      	mov	r1, r4
 8003148:	b991      	cbnz	r1, 8003170 <_malloc_r+0x54>
 800314a:	4c22      	ldr	r4, [pc, #136]	; (80031d4 <_malloc_r+0xb8>)
 800314c:	6823      	ldr	r3, [r4, #0]
 800314e:	b91b      	cbnz	r3, 8003158 <_malloc_r+0x3c>
 8003150:	4630      	mov	r0, r6
 8003152:	f000 fb17 	bl	8003784 <_sbrk_r>
 8003156:	6020      	str	r0, [r4, #0]
 8003158:	4629      	mov	r1, r5
 800315a:	4630      	mov	r0, r6
 800315c:	f000 fb12 	bl	8003784 <_sbrk_r>
 8003160:	1c43      	adds	r3, r0, #1
 8003162:	d126      	bne.n	80031b2 <_malloc_r+0x96>
 8003164:	230c      	movs	r3, #12
 8003166:	6033      	str	r3, [r6, #0]
 8003168:	4630      	mov	r0, r6
 800316a:	f000 fd6a 	bl	8003c42 <__malloc_unlock>
 800316e:	e7e4      	b.n	800313a <_malloc_r+0x1e>
 8003170:	680b      	ldr	r3, [r1, #0]
 8003172:	1b5b      	subs	r3, r3, r5
 8003174:	d41a      	bmi.n	80031ac <_malloc_r+0x90>
 8003176:	2b0b      	cmp	r3, #11
 8003178:	d90f      	bls.n	800319a <_malloc_r+0x7e>
 800317a:	600b      	str	r3, [r1, #0]
 800317c:	50cd      	str	r5, [r1, r3]
 800317e:	18cc      	adds	r4, r1, r3
 8003180:	4630      	mov	r0, r6
 8003182:	f000 fd5e 	bl	8003c42 <__malloc_unlock>
 8003186:	f104 000b 	add.w	r0, r4, #11
 800318a:	1d23      	adds	r3, r4, #4
 800318c:	f020 0007 	bic.w	r0, r0, #7
 8003190:	1ac3      	subs	r3, r0, r3
 8003192:	d01b      	beq.n	80031cc <_malloc_r+0xb0>
 8003194:	425a      	negs	r2, r3
 8003196:	50e2      	str	r2, [r4, r3]
 8003198:	bd70      	pop	{r4, r5, r6, pc}
 800319a:	428c      	cmp	r4, r1
 800319c:	bf0d      	iteet	eq
 800319e:	6863      	ldreq	r3, [r4, #4]
 80031a0:	684b      	ldrne	r3, [r1, #4]
 80031a2:	6063      	strne	r3, [r4, #4]
 80031a4:	6013      	streq	r3, [r2, #0]
 80031a6:	bf18      	it	ne
 80031a8:	460c      	movne	r4, r1
 80031aa:	e7e9      	b.n	8003180 <_malloc_r+0x64>
 80031ac:	460c      	mov	r4, r1
 80031ae:	6849      	ldr	r1, [r1, #4]
 80031b0:	e7ca      	b.n	8003148 <_malloc_r+0x2c>
 80031b2:	1cc4      	adds	r4, r0, #3
 80031b4:	f024 0403 	bic.w	r4, r4, #3
 80031b8:	42a0      	cmp	r0, r4
 80031ba:	d005      	beq.n	80031c8 <_malloc_r+0xac>
 80031bc:	1a21      	subs	r1, r4, r0
 80031be:	4630      	mov	r0, r6
 80031c0:	f000 fae0 	bl	8003784 <_sbrk_r>
 80031c4:	3001      	adds	r0, #1
 80031c6:	d0cd      	beq.n	8003164 <_malloc_r+0x48>
 80031c8:	6025      	str	r5, [r4, #0]
 80031ca:	e7d9      	b.n	8003180 <_malloc_r+0x64>
 80031cc:	bd70      	pop	{r4, r5, r6, pc}
 80031ce:	bf00      	nop
 80031d0:	20017798 	.word	0x20017798
 80031d4:	2001779c 	.word	0x2001779c

080031d8 <__sfputc_r>:
 80031d8:	6893      	ldr	r3, [r2, #8]
 80031da:	3b01      	subs	r3, #1
 80031dc:	2b00      	cmp	r3, #0
 80031de:	b410      	push	{r4}
 80031e0:	6093      	str	r3, [r2, #8]
 80031e2:	da09      	bge.n	80031f8 <__sfputc_r+0x20>
 80031e4:	6994      	ldr	r4, [r2, #24]
 80031e6:	42a3      	cmp	r3, r4
 80031e8:	db02      	blt.n	80031f0 <__sfputc_r+0x18>
 80031ea:	b2cb      	uxtb	r3, r1
 80031ec:	2b0a      	cmp	r3, #10
 80031ee:	d103      	bne.n	80031f8 <__sfputc_r+0x20>
 80031f0:	f85d 4b04 	ldr.w	r4, [sp], #4
 80031f4:	f000 bb1a 	b.w	800382c <__swbuf_r>
 80031f8:	6813      	ldr	r3, [r2, #0]
 80031fa:	1c58      	adds	r0, r3, #1
 80031fc:	6010      	str	r0, [r2, #0]
 80031fe:	7019      	strb	r1, [r3, #0]
 8003200:	b2c8      	uxtb	r0, r1
 8003202:	f85d 4b04 	ldr.w	r4, [sp], #4
 8003206:	4770      	bx	lr

08003208 <__sfputs_r>:
 8003208:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800320a:	4606      	mov	r6, r0
 800320c:	460f      	mov	r7, r1
 800320e:	4614      	mov	r4, r2
 8003210:	18d5      	adds	r5, r2, r3
 8003212:	42ac      	cmp	r4, r5
 8003214:	d101      	bne.n	800321a <__sfputs_r+0x12>
 8003216:	2000      	movs	r0, #0
 8003218:	e007      	b.n	800322a <__sfputs_r+0x22>
 800321a:	463a      	mov	r2, r7
 800321c:	f814 1b01 	ldrb.w	r1, [r4], #1
 8003220:	4630      	mov	r0, r6
 8003222:	f7ff ffd9 	bl	80031d8 <__sfputc_r>
 8003226:	1c43      	adds	r3, r0, #1
 8003228:	d1f3      	bne.n	8003212 <__sfputs_r+0xa>
 800322a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0800322c <_vfiprintf_r>:
 800322c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003230:	b09d      	sub	sp, #116	; 0x74
 8003232:	460c      	mov	r4, r1
 8003234:	4617      	mov	r7, r2
 8003236:	9303      	str	r3, [sp, #12]
 8003238:	4606      	mov	r6, r0
 800323a:	b118      	cbz	r0, 8003244 <_vfiprintf_r+0x18>
 800323c:	6983      	ldr	r3, [r0, #24]
 800323e:	b90b      	cbnz	r3, 8003244 <_vfiprintf_r+0x18>
 8003240:	f7ff fee2 	bl	8003008 <__sinit>
 8003244:	4b7c      	ldr	r3, [pc, #496]	; (8003438 <_vfiprintf_r+0x20c>)
 8003246:	429c      	cmp	r4, r3
 8003248:	d157      	bne.n	80032fa <_vfiprintf_r+0xce>
 800324a:	6874      	ldr	r4, [r6, #4]
 800324c:	89a3      	ldrh	r3, [r4, #12]
 800324e:	0718      	lsls	r0, r3, #28
 8003250:	d55d      	bpl.n	800330e <_vfiprintf_r+0xe2>
 8003252:	6923      	ldr	r3, [r4, #16]
 8003254:	2b00      	cmp	r3, #0
 8003256:	d05a      	beq.n	800330e <_vfiprintf_r+0xe2>
 8003258:	2300      	movs	r3, #0
 800325a:	9309      	str	r3, [sp, #36]	; 0x24
 800325c:	2320      	movs	r3, #32
 800325e:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
 8003262:	2330      	movs	r3, #48	; 0x30
 8003264:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
 8003268:	f04f 0b01 	mov.w	fp, #1
 800326c:	46b8      	mov	r8, r7
 800326e:	4645      	mov	r5, r8
 8003270:	f815 3b01 	ldrb.w	r3, [r5], #1
 8003274:	2b00      	cmp	r3, #0
 8003276:	d155      	bne.n	8003324 <_vfiprintf_r+0xf8>
 8003278:	ebb8 0a07 	subs.w	sl, r8, r7
 800327c:	d00b      	beq.n	8003296 <_vfiprintf_r+0x6a>
 800327e:	4653      	mov	r3, sl
 8003280:	463a      	mov	r2, r7
 8003282:	4621      	mov	r1, r4
 8003284:	4630      	mov	r0, r6
 8003286:	f7ff ffbf 	bl	8003208 <__sfputs_r>
 800328a:	3001      	adds	r0, #1
 800328c:	f000 80c4 	beq.w	8003418 <_vfiprintf_r+0x1ec>
 8003290:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003292:	4453      	add	r3, sl
 8003294:	9309      	str	r3, [sp, #36]	; 0x24
 8003296:	f898 3000 	ldrb.w	r3, [r8]
 800329a:	2b00      	cmp	r3, #0
 800329c:	f000 80bc 	beq.w	8003418 <_vfiprintf_r+0x1ec>
 80032a0:	2300      	movs	r3, #0
 80032a2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80032a6:	9304      	str	r3, [sp, #16]
 80032a8:	9307      	str	r3, [sp, #28]
 80032aa:	9205      	str	r2, [sp, #20]
 80032ac:	9306      	str	r3, [sp, #24]
 80032ae:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
 80032b2:	931a      	str	r3, [sp, #104]	; 0x68
 80032b4:	2205      	movs	r2, #5
 80032b6:	7829      	ldrb	r1, [r5, #0]
 80032b8:	4860      	ldr	r0, [pc, #384]	; (800343c <_vfiprintf_r+0x210>)
 80032ba:	f7fc ffa1 	bl	8000200 <memchr>
 80032be:	f105 0801 	add.w	r8, r5, #1
 80032c2:	9b04      	ldr	r3, [sp, #16]
 80032c4:	2800      	cmp	r0, #0
 80032c6:	d131      	bne.n	800332c <_vfiprintf_r+0x100>
 80032c8:	06d9      	lsls	r1, r3, #27
 80032ca:	bf44      	itt	mi
 80032cc:	2220      	movmi	r2, #32
 80032ce:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
 80032d2:	071a      	lsls	r2, r3, #28
 80032d4:	bf44      	itt	mi
 80032d6:	222b      	movmi	r2, #43	; 0x2b
 80032d8:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
 80032dc:	782a      	ldrb	r2, [r5, #0]
 80032de:	2a2a      	cmp	r2, #42	; 0x2a
 80032e0:	d02c      	beq.n	800333c <_vfiprintf_r+0x110>
 80032e2:	9a07      	ldr	r2, [sp, #28]
 80032e4:	2100      	movs	r1, #0
 80032e6:	200a      	movs	r0, #10
 80032e8:	46a8      	mov	r8, r5
 80032ea:	3501      	adds	r5, #1
 80032ec:	f898 3000 	ldrb.w	r3, [r8]
 80032f0:	3b30      	subs	r3, #48	; 0x30
 80032f2:	2b09      	cmp	r3, #9
 80032f4:	d96d      	bls.n	80033d2 <_vfiprintf_r+0x1a6>
 80032f6:	b371      	cbz	r1, 8003356 <_vfiprintf_r+0x12a>
 80032f8:	e026      	b.n	8003348 <_vfiprintf_r+0x11c>
 80032fa:	4b51      	ldr	r3, [pc, #324]	; (8003440 <_vfiprintf_r+0x214>)
 80032fc:	429c      	cmp	r4, r3
 80032fe:	d101      	bne.n	8003304 <_vfiprintf_r+0xd8>
 8003300:	68b4      	ldr	r4, [r6, #8]
 8003302:	e7a3      	b.n	800324c <_vfiprintf_r+0x20>
 8003304:	4b4f      	ldr	r3, [pc, #316]	; (8003444 <_vfiprintf_r+0x218>)
 8003306:	429c      	cmp	r4, r3
 8003308:	bf08      	it	eq
 800330a:	68f4      	ldreq	r4, [r6, #12]
 800330c:	e79e      	b.n	800324c <_vfiprintf_r+0x20>
 800330e:	4621      	mov	r1, r4
 8003310:	4630      	mov	r0, r6
 8003312:	f000 faef 	bl	80038f4 <__swsetup_r>
 8003316:	2800      	cmp	r0, #0
 8003318:	d09e      	beq.n	8003258 <_vfiprintf_r+0x2c>
 800331a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800331e:	b01d      	add	sp, #116	; 0x74
 8003320:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003324:	2b25      	cmp	r3, #37	; 0x25
 8003326:	d0a7      	beq.n	8003278 <_vfiprintf_r+0x4c>
 8003328:	46a8      	mov	r8, r5
 800332a:	e7a0      	b.n	800326e <_vfiprintf_r+0x42>
 800332c:	4a43      	ldr	r2, [pc, #268]	; (800343c <_vfiprintf_r+0x210>)
 800332e:	1a80      	subs	r0, r0, r2
 8003330:	fa0b f000 	lsl.w	r0, fp, r0
 8003334:	4318      	orrs	r0, r3
 8003336:	9004      	str	r0, [sp, #16]
 8003338:	4645      	mov	r5, r8
 800333a:	e7bb      	b.n	80032b4 <_vfiprintf_r+0x88>
 800333c:	9a03      	ldr	r2, [sp, #12]
 800333e:	1d11      	adds	r1, r2, #4
 8003340:	6812      	ldr	r2, [r2, #0]
 8003342:	9103      	str	r1, [sp, #12]
 8003344:	2a00      	cmp	r2, #0
 8003346:	db01      	blt.n	800334c <_vfiprintf_r+0x120>
 8003348:	9207      	str	r2, [sp, #28]
 800334a:	e004      	b.n	8003356 <_vfiprintf_r+0x12a>
 800334c:	4252      	negs	r2, r2
 800334e:	f043 0302 	orr.w	r3, r3, #2
 8003352:	9207      	str	r2, [sp, #28]
 8003354:	9304      	str	r3, [sp, #16]
 8003356:	f898 3000 	ldrb.w	r3, [r8]
 800335a:	2b2e      	cmp	r3, #46	; 0x2e
 800335c:	d110      	bne.n	8003380 <_vfiprintf_r+0x154>
 800335e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003362:	2b2a      	cmp	r3, #42	; 0x2a
 8003364:	f108 0101 	add.w	r1, r8, #1
 8003368:	d137      	bne.n	80033da <_vfiprintf_r+0x1ae>
 800336a:	9b03      	ldr	r3, [sp, #12]
 800336c:	1d1a      	adds	r2, r3, #4
 800336e:	681b      	ldr	r3, [r3, #0]
 8003370:	9203      	str	r2, [sp, #12]
 8003372:	2b00      	cmp	r3, #0
 8003374:	bfb8      	it	lt
 8003376:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
 800337a:	f108 0802 	add.w	r8, r8, #2
 800337e:	9305      	str	r3, [sp, #20]
 8003380:	4d31      	ldr	r5, [pc, #196]	; (8003448 <_vfiprintf_r+0x21c>)
 8003382:	f898 1000 	ldrb.w	r1, [r8]
 8003386:	2203      	movs	r2, #3
 8003388:	4628      	mov	r0, r5
 800338a:	f7fc ff39 	bl	8000200 <memchr>
 800338e:	b140      	cbz	r0, 80033a2 <_vfiprintf_r+0x176>
 8003390:	2340      	movs	r3, #64	; 0x40
 8003392:	1b40      	subs	r0, r0, r5
 8003394:	fa03 f000 	lsl.w	r0, r3, r0
 8003398:	9b04      	ldr	r3, [sp, #16]
 800339a:	4303      	orrs	r3, r0
 800339c:	9304      	str	r3, [sp, #16]
 800339e:	f108 0801 	add.w	r8, r8, #1
 80033a2:	f898 1000 	ldrb.w	r1, [r8]
 80033a6:	4829      	ldr	r0, [pc, #164]	; (800344c <_vfiprintf_r+0x220>)
 80033a8:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
 80033ac:	2206      	movs	r2, #6
 80033ae:	f108 0701 	add.w	r7, r8, #1
 80033b2:	f7fc ff25 	bl	8000200 <memchr>
 80033b6:	2800      	cmp	r0, #0
 80033b8:	d034      	beq.n	8003424 <_vfiprintf_r+0x1f8>
 80033ba:	4b25      	ldr	r3, [pc, #148]	; (8003450 <_vfiprintf_r+0x224>)
 80033bc:	bb03      	cbnz	r3, 8003400 <_vfiprintf_r+0x1d4>
 80033be:	9b03      	ldr	r3, [sp, #12]
 80033c0:	3307      	adds	r3, #7
 80033c2:	f023 0307 	bic.w	r3, r3, #7
 80033c6:	3308      	adds	r3, #8
 80033c8:	9303      	str	r3, [sp, #12]
 80033ca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80033cc:	444b      	add	r3, r9
 80033ce:	9309      	str	r3, [sp, #36]	; 0x24
 80033d0:	e74c      	b.n	800326c <_vfiprintf_r+0x40>
 80033d2:	fb00 3202 	mla	r2, r0, r2, r3
 80033d6:	2101      	movs	r1, #1
 80033d8:	e786      	b.n	80032e8 <_vfiprintf_r+0xbc>
 80033da:	2300      	movs	r3, #0
 80033dc:	9305      	str	r3, [sp, #20]
 80033de:	4618      	mov	r0, r3
 80033e0:	250a      	movs	r5, #10
 80033e2:	4688      	mov	r8, r1
 80033e4:	3101      	adds	r1, #1
 80033e6:	f898 2000 	ldrb.w	r2, [r8]
 80033ea:	3a30      	subs	r2, #48	; 0x30
 80033ec:	2a09      	cmp	r2, #9
 80033ee:	d903      	bls.n	80033f8 <_vfiprintf_r+0x1cc>
 80033f0:	2b00      	cmp	r3, #0
 80033f2:	d0c5      	beq.n	8003380 <_vfiprintf_r+0x154>
 80033f4:	9005      	str	r0, [sp, #20]
 80033f6:	e7c3      	b.n	8003380 <_vfiprintf_r+0x154>
 80033f8:	fb05 2000 	mla	r0, r5, r0, r2
 80033fc:	2301      	movs	r3, #1
 80033fe:	e7f0      	b.n	80033e2 <_vfiprintf_r+0x1b6>
 8003400:	ab03      	add	r3, sp, #12
 8003402:	9300      	str	r3, [sp, #0]
 8003404:	4622      	mov	r2, r4
 8003406:	4b13      	ldr	r3, [pc, #76]	; (8003454 <_vfiprintf_r+0x228>)
 8003408:	a904      	add	r1, sp, #16
 800340a:	4630      	mov	r0, r6
 800340c:	f3af 8000 	nop.w
 8003410:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8003414:	4681      	mov	r9, r0
 8003416:	d1d8      	bne.n	80033ca <_vfiprintf_r+0x19e>
 8003418:	89a3      	ldrh	r3, [r4, #12]
 800341a:	065b      	lsls	r3, r3, #25
 800341c:	f53f af7d 	bmi.w	800331a <_vfiprintf_r+0xee>
 8003420:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003422:	e77c      	b.n	800331e <_vfiprintf_r+0xf2>
 8003424:	ab03      	add	r3, sp, #12
 8003426:	9300      	str	r3, [sp, #0]
 8003428:	4622      	mov	r2, r4
 800342a:	4b0a      	ldr	r3, [pc, #40]	; (8003454 <_vfiprintf_r+0x228>)
 800342c:	a904      	add	r1, sp, #16
 800342e:	4630      	mov	r0, r6
 8003430:	f000 f888 	bl	8003544 <_printf_i>
 8003434:	e7ec      	b.n	8003410 <_vfiprintf_r+0x1e4>
 8003436:	bf00      	nop
 8003438:	08003ec0 	.word	0x08003ec0
 800343c:	08003f00 	.word	0x08003f00
 8003440:	08003ee0 	.word	0x08003ee0
 8003444:	08003ea0 	.word	0x08003ea0
 8003448:	08003f06 	.word	0x08003f06
 800344c:	08003f0a 	.word	0x08003f0a
 8003450:	00000000 	.word	0x00000000
 8003454:	08003209 	.word	0x08003209

08003458 <_printf_common>:
 8003458:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800345c:	4691      	mov	r9, r2
 800345e:	461f      	mov	r7, r3
 8003460:	688a      	ldr	r2, [r1, #8]
 8003462:	690b      	ldr	r3, [r1, #16]
 8003464:	f8dd 8020 	ldr.w	r8, [sp, #32]
 8003468:	4293      	cmp	r3, r2
 800346a:	bfb8      	it	lt
 800346c:	4613      	movlt	r3, r2
 800346e:	f8c9 3000 	str.w	r3, [r9]
 8003472:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
 8003476:	4606      	mov	r6, r0
 8003478:	460c      	mov	r4, r1
 800347a:	b112      	cbz	r2, 8003482 <_printf_common+0x2a>
 800347c:	3301      	adds	r3, #1
 800347e:	f8c9 3000 	str.w	r3, [r9]
 8003482:	6823      	ldr	r3, [r4, #0]
 8003484:	0699      	lsls	r1, r3, #26
 8003486:	bf42      	ittt	mi
 8003488:	f8d9 3000 	ldrmi.w	r3, [r9]
 800348c:	3302      	addmi	r3, #2
 800348e:	f8c9 3000 	strmi.w	r3, [r9]
 8003492:	6825      	ldr	r5, [r4, #0]
 8003494:	f015 0506 	ands.w	r5, r5, #6
 8003498:	d107      	bne.n	80034aa <_printf_common+0x52>
 800349a:	f104 0a19 	add.w	sl, r4, #25
 800349e:	68e3      	ldr	r3, [r4, #12]
 80034a0:	f8d9 2000 	ldr.w	r2, [r9]
 80034a4:	1a9b      	subs	r3, r3, r2
 80034a6:	429d      	cmp	r5, r3
 80034a8:	db29      	blt.n	80034fe <_printf_common+0xa6>
 80034aa:	f894 3043 	ldrb.w	r3, [r4, #67]	; 0x43
 80034ae:	6822      	ldr	r2, [r4, #0]
 80034b0:	3300      	adds	r3, #0
 80034b2:	bf18      	it	ne
 80034b4:	2301      	movne	r3, #1
 80034b6:	0692      	lsls	r2, r2, #26
 80034b8:	d42e      	bmi.n	8003518 <_printf_common+0xc0>
 80034ba:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80034be:	4639      	mov	r1, r7
 80034c0:	4630      	mov	r0, r6
 80034c2:	47c0      	blx	r8
 80034c4:	3001      	adds	r0, #1
 80034c6:	d021      	beq.n	800350c <_printf_common+0xb4>
 80034c8:	6823      	ldr	r3, [r4, #0]
 80034ca:	68e5      	ldr	r5, [r4, #12]
 80034cc:	f8d9 2000 	ldr.w	r2, [r9]
 80034d0:	f003 0306 	and.w	r3, r3, #6
 80034d4:	2b04      	cmp	r3, #4
 80034d6:	bf08      	it	eq
 80034d8:	1aad      	subeq	r5, r5, r2
 80034da:	68a3      	ldr	r3, [r4, #8]
 80034dc:	6922      	ldr	r2, [r4, #16]
 80034de:	bf0c      	ite	eq
 80034e0:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
 80034e4:	2500      	movne	r5, #0
 80034e6:	4293      	cmp	r3, r2
 80034e8:	bfc4      	itt	gt
 80034ea:	1a9b      	subgt	r3, r3, r2
 80034ec:	18ed      	addgt	r5, r5, r3
 80034ee:	f04f 0900 	mov.w	r9, #0
 80034f2:	341a      	adds	r4, #26
 80034f4:	454d      	cmp	r5, r9
 80034f6:	d11b      	bne.n	8003530 <_printf_common+0xd8>
 80034f8:	2000      	movs	r0, #0
 80034fa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80034fe:	2301      	movs	r3, #1
 8003500:	4652      	mov	r2, sl
 8003502:	4639      	mov	r1, r7
 8003504:	4630      	mov	r0, r6
 8003506:	47c0      	blx	r8
 8003508:	3001      	adds	r0, #1
 800350a:	d103      	bne.n	8003514 <_printf_common+0xbc>
 800350c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003510:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003514:	3501      	adds	r5, #1
 8003516:	e7c2      	b.n	800349e <_printf_common+0x46>
 8003518:	18e1      	adds	r1, r4, r3
 800351a:	1c5a      	adds	r2, r3, #1
 800351c:	2030      	movs	r0, #48	; 0x30
 800351e:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
 8003522:	4422      	add	r2, r4
 8003524:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
 8003528:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
 800352c:	3302      	adds	r3, #2
 800352e:	e7c4      	b.n	80034ba <_printf_common+0x62>
 8003530:	2301      	movs	r3, #1
 8003532:	4622      	mov	r2, r4
 8003534:	4639      	mov	r1, r7
 8003536:	4630      	mov	r0, r6
 8003538:	47c0      	blx	r8
 800353a:	3001      	adds	r0, #1
 800353c:	d0e6      	beq.n	800350c <_printf_common+0xb4>
 800353e:	f109 0901 	add.w	r9, r9, #1
 8003542:	e7d7      	b.n	80034f4 <_printf_common+0x9c>

08003544 <_printf_i>:
 8003544:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8003548:	4617      	mov	r7, r2
 800354a:	7e0a      	ldrb	r2, [r1, #24]
 800354c:	b085      	sub	sp, #20
 800354e:	2a6e      	cmp	r2, #110	; 0x6e
 8003550:	4698      	mov	r8, r3
 8003552:	4606      	mov	r6, r0
 8003554:	460c      	mov	r4, r1
 8003556:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8003558:	f101 0e43 	add.w	lr, r1, #67	; 0x43
 800355c:	f000 80bc 	beq.w	80036d8 <_printf_i+0x194>
 8003560:	d81a      	bhi.n	8003598 <_printf_i+0x54>
 8003562:	2a63      	cmp	r2, #99	; 0x63
 8003564:	d02e      	beq.n	80035c4 <_printf_i+0x80>
 8003566:	d80a      	bhi.n	800357e <_printf_i+0x3a>
 8003568:	2a00      	cmp	r2, #0
 800356a:	f000 80c8 	beq.w	80036fe <_printf_i+0x1ba>
 800356e:	2a58      	cmp	r2, #88	; 0x58
 8003570:	f000 808a 	beq.w	8003688 <_printf_i+0x144>
 8003574:	f104 0542 	add.w	r5, r4, #66	; 0x42
 8003578:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
 800357c:	e02a      	b.n	80035d4 <_printf_i+0x90>
 800357e:	2a64      	cmp	r2, #100	; 0x64
 8003580:	d001      	beq.n	8003586 <_printf_i+0x42>
 8003582:	2a69      	cmp	r2, #105	; 0x69
 8003584:	d1f6      	bne.n	8003574 <_printf_i+0x30>
 8003586:	6821      	ldr	r1, [r4, #0]
 8003588:	681a      	ldr	r2, [r3, #0]
 800358a:	f011 0f80 	tst.w	r1, #128	; 0x80
 800358e:	d023      	beq.n	80035d8 <_printf_i+0x94>
 8003590:	1d11      	adds	r1, r2, #4
 8003592:	6019      	str	r1, [r3, #0]
 8003594:	6813      	ldr	r3, [r2, #0]
 8003596:	e027      	b.n	80035e8 <_printf_i+0xa4>
 8003598:	2a73      	cmp	r2, #115	; 0x73
 800359a:	f000 80b4 	beq.w	8003706 <_printf_i+0x1c2>
 800359e:	d808      	bhi.n	80035b2 <_printf_i+0x6e>
 80035a0:	2a6f      	cmp	r2, #111	; 0x6f
 80035a2:	d02a      	beq.n	80035fa <_printf_i+0xb6>
 80035a4:	2a70      	cmp	r2, #112	; 0x70
 80035a6:	d1e5      	bne.n	8003574 <_printf_i+0x30>
 80035a8:	680a      	ldr	r2, [r1, #0]
 80035aa:	f042 0220 	orr.w	r2, r2, #32
 80035ae:	600a      	str	r2, [r1, #0]
 80035b0:	e003      	b.n	80035ba <_printf_i+0x76>
 80035b2:	2a75      	cmp	r2, #117	; 0x75
 80035b4:	d021      	beq.n	80035fa <_printf_i+0xb6>
 80035b6:	2a78      	cmp	r2, #120	; 0x78
 80035b8:	d1dc      	bne.n	8003574 <_printf_i+0x30>
 80035ba:	2278      	movs	r2, #120	; 0x78
 80035bc:	f884 2045 	strb.w	r2, [r4, #69]	; 0x45
 80035c0:	496e      	ldr	r1, [pc, #440]	; (800377c <_printf_i+0x238>)
 80035c2:	e064      	b.n	800368e <_printf_i+0x14a>
 80035c4:	681a      	ldr	r2, [r3, #0]
 80035c6:	f101 0542 	add.w	r5, r1, #66	; 0x42
 80035ca:	1d11      	adds	r1, r2, #4
 80035cc:	6019      	str	r1, [r3, #0]
 80035ce:	6813      	ldr	r3, [r2, #0]
 80035d0:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 80035d4:	2301      	movs	r3, #1
 80035d6:	e0a3      	b.n	8003720 <_printf_i+0x1dc>
 80035d8:	f011 0f40 	tst.w	r1, #64	; 0x40
 80035dc:	f102 0104 	add.w	r1, r2, #4
 80035e0:	6019      	str	r1, [r3, #0]
 80035e2:	d0d7      	beq.n	8003594 <_printf_i+0x50>
 80035e4:	f9b2 3000 	ldrsh.w	r3, [r2]
 80035e8:	2b00      	cmp	r3, #0
 80035ea:	da03      	bge.n	80035f4 <_printf_i+0xb0>
 80035ec:	222d      	movs	r2, #45	; 0x2d
 80035ee:	425b      	negs	r3, r3
 80035f0:	f884 2043 	strb.w	r2, [r4, #67]	; 0x43
 80035f4:	4962      	ldr	r1, [pc, #392]	; (8003780 <_printf_i+0x23c>)
 80035f6:	220a      	movs	r2, #10
 80035f8:	e017      	b.n	800362a <_printf_i+0xe6>
 80035fa:	6820      	ldr	r0, [r4, #0]
 80035fc:	6819      	ldr	r1, [r3, #0]
 80035fe:	f010 0f80 	tst.w	r0, #128	; 0x80
 8003602:	d003      	beq.n	800360c <_printf_i+0xc8>
 8003604:	1d08      	adds	r0, r1, #4
 8003606:	6018      	str	r0, [r3, #0]
 8003608:	680b      	ldr	r3, [r1, #0]
 800360a:	e006      	b.n	800361a <_printf_i+0xd6>
 800360c:	f010 0f40 	tst.w	r0, #64	; 0x40
 8003610:	f101 0004 	add.w	r0, r1, #4
 8003614:	6018      	str	r0, [r3, #0]
 8003616:	d0f7      	beq.n	8003608 <_printf_i+0xc4>
 8003618:	880b      	ldrh	r3, [r1, #0]
 800361a:	4959      	ldr	r1, [pc, #356]	; (8003780 <_printf_i+0x23c>)
 800361c:	2a6f      	cmp	r2, #111	; 0x6f
 800361e:	bf14      	ite	ne
 8003620:	220a      	movne	r2, #10
 8003622:	2208      	moveq	r2, #8
 8003624:	2000      	movs	r0, #0
 8003626:	f884 0043 	strb.w	r0, [r4, #67]	; 0x43
 800362a:	6865      	ldr	r5, [r4, #4]
 800362c:	60a5      	str	r5, [r4, #8]
 800362e:	2d00      	cmp	r5, #0
 8003630:	f2c0 809c 	blt.w	800376c <_printf_i+0x228>
 8003634:	6820      	ldr	r0, [r4, #0]
 8003636:	f020 0004 	bic.w	r0, r0, #4
 800363a:	6020      	str	r0, [r4, #0]
 800363c:	2b00      	cmp	r3, #0
 800363e:	d13f      	bne.n	80036c0 <_printf_i+0x17c>
 8003640:	2d00      	cmp	r5, #0
 8003642:	f040 8095 	bne.w	8003770 <_printf_i+0x22c>
 8003646:	4675      	mov	r5, lr
 8003648:	2a08      	cmp	r2, #8
 800364a:	d10b      	bne.n	8003664 <_printf_i+0x120>
 800364c:	6823      	ldr	r3, [r4, #0]
 800364e:	07da      	lsls	r2, r3, #31
 8003650:	d508      	bpl.n	8003664 <_printf_i+0x120>
 8003652:	6923      	ldr	r3, [r4, #16]
 8003654:	6862      	ldr	r2, [r4, #4]
 8003656:	429a      	cmp	r2, r3
 8003658:	bfde      	ittt	le
 800365a:	2330      	movle	r3, #48	; 0x30
 800365c:	f805 3c01 	strble.w	r3, [r5, #-1]
 8003660:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
 8003664:	ebae 0305 	sub.w	r3, lr, r5
 8003668:	6123      	str	r3, [r4, #16]
 800366a:	f8cd 8000 	str.w	r8, [sp]
 800366e:	463b      	mov	r3, r7
 8003670:	aa03      	add	r2, sp, #12
 8003672:	4621      	mov	r1, r4
 8003674:	4630      	mov	r0, r6
 8003676:	f7ff feef 	bl	8003458 <_printf_common>
 800367a:	3001      	adds	r0, #1
 800367c:	d155      	bne.n	800372a <_printf_i+0x1e6>
 800367e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003682:	b005      	add	sp, #20
 8003684:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8003688:	f881 2045 	strb.w	r2, [r1, #69]	; 0x45
 800368c:	493c      	ldr	r1, [pc, #240]	; (8003780 <_printf_i+0x23c>)
 800368e:	6822      	ldr	r2, [r4, #0]
 8003690:	6818      	ldr	r0, [r3, #0]
 8003692:	f012 0f80 	tst.w	r2, #128	; 0x80
 8003696:	f100 0504 	add.w	r5, r0, #4
 800369a:	601d      	str	r5, [r3, #0]
 800369c:	d001      	beq.n	80036a2 <_printf_i+0x15e>
 800369e:	6803      	ldr	r3, [r0, #0]
 80036a0:	e002      	b.n	80036a8 <_printf_i+0x164>
 80036a2:	0655      	lsls	r5, r2, #25
 80036a4:	d5fb      	bpl.n	800369e <_printf_i+0x15a>
 80036a6:	8803      	ldrh	r3, [r0, #0]
 80036a8:	07d0      	lsls	r0, r2, #31
 80036aa:	bf44      	itt	mi
 80036ac:	f042 0220 	orrmi.w	r2, r2, #32
 80036b0:	6022      	strmi	r2, [r4, #0]
 80036b2:	b91b      	cbnz	r3, 80036bc <_printf_i+0x178>
 80036b4:	6822      	ldr	r2, [r4, #0]
 80036b6:	f022 0220 	bic.w	r2, r2, #32
 80036ba:	6022      	str	r2, [r4, #0]
 80036bc:	2210      	movs	r2, #16
 80036be:	e7b1      	b.n	8003624 <_printf_i+0xe0>
 80036c0:	4675      	mov	r5, lr
 80036c2:	fbb3 f0f2 	udiv	r0, r3, r2
 80036c6:	fb02 3310 	mls	r3, r2, r0, r3
 80036ca:	5ccb      	ldrb	r3, [r1, r3]
 80036cc:	f805 3d01 	strb.w	r3, [r5, #-1]!
 80036d0:	4603      	mov	r3, r0
 80036d2:	2800      	cmp	r0, #0
 80036d4:	d1f5      	bne.n	80036c2 <_printf_i+0x17e>
 80036d6:	e7b7      	b.n	8003648 <_printf_i+0x104>
 80036d8:	6808      	ldr	r0, [r1, #0]
 80036da:	681a      	ldr	r2, [r3, #0]
 80036dc:	6949      	ldr	r1, [r1, #20]
 80036de:	f010 0f80 	tst.w	r0, #128	; 0x80
 80036e2:	d004      	beq.n	80036ee <_printf_i+0x1aa>
 80036e4:	1d10      	adds	r0, r2, #4
 80036e6:	6018      	str	r0, [r3, #0]
 80036e8:	6813      	ldr	r3, [r2, #0]
 80036ea:	6019      	str	r1, [r3, #0]
 80036ec:	e007      	b.n	80036fe <_printf_i+0x1ba>
 80036ee:	f010 0f40 	tst.w	r0, #64	; 0x40
 80036f2:	f102 0004 	add.w	r0, r2, #4
 80036f6:	6018      	str	r0, [r3, #0]
 80036f8:	6813      	ldr	r3, [r2, #0]
 80036fa:	d0f6      	beq.n	80036ea <_printf_i+0x1a6>
 80036fc:	8019      	strh	r1, [r3, #0]
 80036fe:	2300      	movs	r3, #0
 8003700:	6123      	str	r3, [r4, #16]
 8003702:	4675      	mov	r5, lr
 8003704:	e7b1      	b.n	800366a <_printf_i+0x126>
 8003706:	681a      	ldr	r2, [r3, #0]
 8003708:	1d11      	adds	r1, r2, #4
 800370a:	6019      	str	r1, [r3, #0]
 800370c:	6815      	ldr	r5, [r2, #0]
 800370e:	6862      	ldr	r2, [r4, #4]
 8003710:	2100      	movs	r1, #0
 8003712:	4628      	mov	r0, r5
 8003714:	f7fc fd74 	bl	8000200 <memchr>
 8003718:	b108      	cbz	r0, 800371e <_printf_i+0x1da>
 800371a:	1b40      	subs	r0, r0, r5
 800371c:	6060      	str	r0, [r4, #4]
 800371e:	6863      	ldr	r3, [r4, #4]
 8003720:	6123      	str	r3, [r4, #16]
 8003722:	2300      	movs	r3, #0
 8003724:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 8003728:	e79f      	b.n	800366a <_printf_i+0x126>
 800372a:	6923      	ldr	r3, [r4, #16]
 800372c:	462a      	mov	r2, r5
 800372e:	4639      	mov	r1, r7
 8003730:	4630      	mov	r0, r6
 8003732:	47c0      	blx	r8
 8003734:	3001      	adds	r0, #1
 8003736:	d0a2      	beq.n	800367e <_printf_i+0x13a>
 8003738:	6823      	ldr	r3, [r4, #0]
 800373a:	079b      	lsls	r3, r3, #30
 800373c:	d507      	bpl.n	800374e <_printf_i+0x20a>
 800373e:	2500      	movs	r5, #0
 8003740:	f104 0919 	add.w	r9, r4, #25
 8003744:	68e3      	ldr	r3, [r4, #12]
 8003746:	9a03      	ldr	r2, [sp, #12]
 8003748:	1a9b      	subs	r3, r3, r2
 800374a:	429d      	cmp	r5, r3
 800374c:	db05      	blt.n	800375a <_printf_i+0x216>
 800374e:	68e0      	ldr	r0, [r4, #12]
 8003750:	9b03      	ldr	r3, [sp, #12]
 8003752:	4298      	cmp	r0, r3
 8003754:	bfb8      	it	lt
 8003756:	4618      	movlt	r0, r3
 8003758:	e793      	b.n	8003682 <_printf_i+0x13e>
 800375a:	2301      	movs	r3, #1
 800375c:	464a      	mov	r2, r9
 800375e:	4639      	mov	r1, r7
 8003760:	4630      	mov	r0, r6
 8003762:	47c0      	blx	r8
 8003764:	3001      	adds	r0, #1
 8003766:	d08a      	beq.n	800367e <_printf_i+0x13a>
 8003768:	3501      	adds	r5, #1
 800376a:	e7eb      	b.n	8003744 <_printf_i+0x200>
 800376c:	2b00      	cmp	r3, #0
 800376e:	d1a7      	bne.n	80036c0 <_printf_i+0x17c>
 8003770:	780b      	ldrb	r3, [r1, #0]
 8003772:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 8003776:	f104 0542 	add.w	r5, r4, #66	; 0x42
 800377a:	e765      	b.n	8003648 <_printf_i+0x104>
 800377c:	08003f22 	.word	0x08003f22
 8003780:	08003f11 	.word	0x08003f11

08003784 <_sbrk_r>:
 8003784:	b538      	push	{r3, r4, r5, lr}
 8003786:	4c06      	ldr	r4, [pc, #24]	; (80037a0 <_sbrk_r+0x1c>)
 8003788:	2300      	movs	r3, #0
 800378a:	4605      	mov	r5, r0
 800378c:	4608      	mov	r0, r1
 800378e:	6023      	str	r3, [r4, #0]
 8003790:	f000 fb02 	bl	8003d98 <_sbrk>
 8003794:	1c43      	adds	r3, r0, #1
 8003796:	d102      	bne.n	800379e <_sbrk_r+0x1a>
 8003798:	6823      	ldr	r3, [r4, #0]
 800379a:	b103      	cbz	r3, 800379e <_sbrk_r+0x1a>
 800379c:	602b      	str	r3, [r5, #0]
 800379e:	bd38      	pop	{r3, r4, r5, pc}
 80037a0:	2001782c 	.word	0x2001782c

080037a4 <__sread>:
 80037a4:	b510      	push	{r4, lr}
 80037a6:	460c      	mov	r4, r1
 80037a8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80037ac:	f000 fa98 	bl	8003ce0 <_read_r>
 80037b0:	2800      	cmp	r0, #0
 80037b2:	bfab      	itete	ge
 80037b4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
 80037b6:	89a3      	ldrhlt	r3, [r4, #12]
 80037b8:	181b      	addge	r3, r3, r0
 80037ba:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
 80037be:	bfac      	ite	ge
 80037c0:	6563      	strge	r3, [r4, #84]	; 0x54
 80037c2:	81a3      	strhlt	r3, [r4, #12]
 80037c4:	bd10      	pop	{r4, pc}

080037c6 <__swrite>:
 80037c6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80037ca:	461f      	mov	r7, r3
 80037cc:	898b      	ldrh	r3, [r1, #12]
 80037ce:	05db      	lsls	r3, r3, #23
 80037d0:	4605      	mov	r5, r0
 80037d2:	460c      	mov	r4, r1
 80037d4:	4616      	mov	r6, r2
 80037d6:	d505      	bpl.n	80037e4 <__swrite+0x1e>
 80037d8:	2302      	movs	r3, #2
 80037da:	2200      	movs	r2, #0
 80037dc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80037e0:	f000 f9b8 	bl	8003b54 <_lseek_r>
 80037e4:	89a3      	ldrh	r3, [r4, #12]
 80037e6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80037ea:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80037ee:	81a3      	strh	r3, [r4, #12]
 80037f0:	4632      	mov	r2, r6
 80037f2:	463b      	mov	r3, r7
 80037f4:	4628      	mov	r0, r5
 80037f6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80037fa:	f000 b869 	b.w	80038d0 <_write_r>

080037fe <__sseek>:
 80037fe:	b510      	push	{r4, lr}
 8003800:	460c      	mov	r4, r1
 8003802:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8003806:	f000 f9a5 	bl	8003b54 <_lseek_r>
 800380a:	1c43      	adds	r3, r0, #1
 800380c:	89a3      	ldrh	r3, [r4, #12]
 800380e:	bf15      	itete	ne
 8003810:	6560      	strne	r0, [r4, #84]	; 0x54
 8003812:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8003816:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800381a:	81a3      	strheq	r3, [r4, #12]
 800381c:	bf18      	it	ne
 800381e:	81a3      	strhne	r3, [r4, #12]
 8003820:	bd10      	pop	{r4, pc}

08003822 <__sclose>:
 8003822:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8003826:	f000 b8d3 	b.w	80039d0 <_close_r>
	...

0800382c <__swbuf_r>:
 800382c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800382e:	460e      	mov	r6, r1
 8003830:	4614      	mov	r4, r2
 8003832:	4605      	mov	r5, r0
 8003834:	b118      	cbz	r0, 800383e <__swbuf_r+0x12>
 8003836:	6983      	ldr	r3, [r0, #24]
 8003838:	b90b      	cbnz	r3, 800383e <__swbuf_r+0x12>
 800383a:	f7ff fbe5 	bl	8003008 <__sinit>
 800383e:	4b21      	ldr	r3, [pc, #132]	; (80038c4 <__swbuf_r+0x98>)
 8003840:	429c      	cmp	r4, r3
 8003842:	d12a      	bne.n	800389a <__swbuf_r+0x6e>
 8003844:	686c      	ldr	r4, [r5, #4]
 8003846:	69a3      	ldr	r3, [r4, #24]
 8003848:	60a3      	str	r3, [r4, #8]
 800384a:	89a3      	ldrh	r3, [r4, #12]
 800384c:	071a      	lsls	r2, r3, #28
 800384e:	d52e      	bpl.n	80038ae <__swbuf_r+0x82>
 8003850:	6923      	ldr	r3, [r4, #16]
 8003852:	b363      	cbz	r3, 80038ae <__swbuf_r+0x82>
 8003854:	6923      	ldr	r3, [r4, #16]
 8003856:	6820      	ldr	r0, [r4, #0]
 8003858:	1ac0      	subs	r0, r0, r3
 800385a:	6963      	ldr	r3, [r4, #20]
 800385c:	b2f6      	uxtb	r6, r6
 800385e:	4298      	cmp	r0, r3
 8003860:	4637      	mov	r7, r6
 8003862:	db04      	blt.n	800386e <__swbuf_r+0x42>
 8003864:	4621      	mov	r1, r4
 8003866:	4628      	mov	r0, r5
 8003868:	f000 f94a 	bl	8003b00 <_fflush_r>
 800386c:	bb28      	cbnz	r0, 80038ba <__swbuf_r+0x8e>
 800386e:	68a3      	ldr	r3, [r4, #8]
 8003870:	3b01      	subs	r3, #1
 8003872:	60a3      	str	r3, [r4, #8]
 8003874:	6823      	ldr	r3, [r4, #0]
 8003876:	1c5a      	adds	r2, r3, #1
 8003878:	6022      	str	r2, [r4, #0]
 800387a:	701e      	strb	r6, [r3, #0]
 800387c:	6963      	ldr	r3, [r4, #20]
 800387e:	3001      	adds	r0, #1
 8003880:	4298      	cmp	r0, r3
 8003882:	d004      	beq.n	800388e <__swbuf_r+0x62>
 8003884:	89a3      	ldrh	r3, [r4, #12]
 8003886:	07db      	lsls	r3, r3, #31
 8003888:	d519      	bpl.n	80038be <__swbuf_r+0x92>
 800388a:	2e0a      	cmp	r6, #10
 800388c:	d117      	bne.n	80038be <__swbuf_r+0x92>
 800388e:	4621      	mov	r1, r4
 8003890:	4628      	mov	r0, r5
 8003892:	f000 f935 	bl	8003b00 <_fflush_r>
 8003896:	b190      	cbz	r0, 80038be <__swbuf_r+0x92>
 8003898:	e00f      	b.n	80038ba <__swbuf_r+0x8e>
 800389a:	4b0b      	ldr	r3, [pc, #44]	; (80038c8 <__swbuf_r+0x9c>)
 800389c:	429c      	cmp	r4, r3
 800389e:	d101      	bne.n	80038a4 <__swbuf_r+0x78>
 80038a0:	68ac      	ldr	r4, [r5, #8]
 80038a2:	e7d0      	b.n	8003846 <__swbuf_r+0x1a>
 80038a4:	4b09      	ldr	r3, [pc, #36]	; (80038cc <__swbuf_r+0xa0>)
 80038a6:	429c      	cmp	r4, r3
 80038a8:	bf08      	it	eq
 80038aa:	68ec      	ldreq	r4, [r5, #12]
 80038ac:	e7cb      	b.n	8003846 <__swbuf_r+0x1a>
 80038ae:	4621      	mov	r1, r4
 80038b0:	4628      	mov	r0, r5
 80038b2:	f000 f81f 	bl	80038f4 <__swsetup_r>
 80038b6:	2800      	cmp	r0, #0
 80038b8:	d0cc      	beq.n	8003854 <__swbuf_r+0x28>
 80038ba:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80038be:	4638      	mov	r0, r7
 80038c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80038c2:	bf00      	nop
 80038c4:	08003ec0 	.word	0x08003ec0
 80038c8:	08003ee0 	.word	0x08003ee0
 80038cc:	08003ea0 	.word	0x08003ea0

080038d0 <_write_r>:
 80038d0:	b538      	push	{r3, r4, r5, lr}
 80038d2:	4c07      	ldr	r4, [pc, #28]	; (80038f0 <_write_r+0x20>)
 80038d4:	4605      	mov	r5, r0
 80038d6:	4608      	mov	r0, r1
 80038d8:	4611      	mov	r1, r2
 80038da:	2200      	movs	r2, #0
 80038dc:	6022      	str	r2, [r4, #0]
 80038de:	461a      	mov	r2, r3
 80038e0:	f000 fa68 	bl	8003db4 <_write>
 80038e4:	1c43      	adds	r3, r0, #1
 80038e6:	d102      	bne.n	80038ee <_write_r+0x1e>
 80038e8:	6823      	ldr	r3, [r4, #0]
 80038ea:	b103      	cbz	r3, 80038ee <_write_r+0x1e>
 80038ec:	602b      	str	r3, [r5, #0]
 80038ee:	bd38      	pop	{r3, r4, r5, pc}
 80038f0:	2001782c 	.word	0x2001782c

080038f4 <__swsetup_r>:
 80038f4:	4b32      	ldr	r3, [pc, #200]	; (80039c0 <__swsetup_r+0xcc>)
 80038f6:	b570      	push	{r4, r5, r6, lr}
 80038f8:	681d      	ldr	r5, [r3, #0]
 80038fa:	4606      	mov	r6, r0
 80038fc:	460c      	mov	r4, r1
 80038fe:	b125      	cbz	r5, 800390a <__swsetup_r+0x16>
 8003900:	69ab      	ldr	r3, [r5, #24]
 8003902:	b913      	cbnz	r3, 800390a <__swsetup_r+0x16>
 8003904:	4628      	mov	r0, r5
 8003906:	f7ff fb7f 	bl	8003008 <__sinit>
 800390a:	4b2e      	ldr	r3, [pc, #184]	; (80039c4 <__swsetup_r+0xd0>)
 800390c:	429c      	cmp	r4, r3
 800390e:	d10f      	bne.n	8003930 <__swsetup_r+0x3c>
 8003910:	686c      	ldr	r4, [r5, #4]
 8003912:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003916:	b29a      	uxth	r2, r3
 8003918:	0715      	lsls	r5, r2, #28
 800391a:	d42c      	bmi.n	8003976 <__swsetup_r+0x82>
 800391c:	06d0      	lsls	r0, r2, #27
 800391e:	d411      	bmi.n	8003944 <__swsetup_r+0x50>
 8003920:	2209      	movs	r2, #9
 8003922:	6032      	str	r2, [r6, #0]
 8003924:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003928:	81a3      	strh	r3, [r4, #12]
 800392a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800392e:	bd70      	pop	{r4, r5, r6, pc}
 8003930:	4b25      	ldr	r3, [pc, #148]	; (80039c8 <__swsetup_r+0xd4>)
 8003932:	429c      	cmp	r4, r3
 8003934:	d101      	bne.n	800393a <__swsetup_r+0x46>
 8003936:	68ac      	ldr	r4, [r5, #8]
 8003938:	e7eb      	b.n	8003912 <__swsetup_r+0x1e>
 800393a:	4b24      	ldr	r3, [pc, #144]	; (80039cc <__swsetup_r+0xd8>)
 800393c:	429c      	cmp	r4, r3
 800393e:	bf08      	it	eq
 8003940:	68ec      	ldreq	r4, [r5, #12]
 8003942:	e7e6      	b.n	8003912 <__swsetup_r+0x1e>
 8003944:	0751      	lsls	r1, r2, #29
 8003946:	d512      	bpl.n	800396e <__swsetup_r+0x7a>
 8003948:	6b61      	ldr	r1, [r4, #52]	; 0x34
 800394a:	b141      	cbz	r1, 800395e <__swsetup_r+0x6a>
 800394c:	f104 0344 	add.w	r3, r4, #68	; 0x44
 8003950:	4299      	cmp	r1, r3
 8003952:	d002      	beq.n	800395a <__swsetup_r+0x66>
 8003954:	4630      	mov	r0, r6
 8003956:	f000 f975 	bl	8003c44 <_free_r>
 800395a:	2300      	movs	r3, #0
 800395c:	6363      	str	r3, [r4, #52]	; 0x34
 800395e:	89a3      	ldrh	r3, [r4, #12]
 8003960:	f023 0324 	bic.w	r3, r3, #36	; 0x24
 8003964:	81a3      	strh	r3, [r4, #12]
 8003966:	2300      	movs	r3, #0
 8003968:	6063      	str	r3, [r4, #4]
 800396a:	6923      	ldr	r3, [r4, #16]
 800396c:	6023      	str	r3, [r4, #0]
 800396e:	89a3      	ldrh	r3, [r4, #12]
 8003970:	f043 0308 	orr.w	r3, r3, #8
 8003974:	81a3      	strh	r3, [r4, #12]
 8003976:	6923      	ldr	r3, [r4, #16]
 8003978:	b94b      	cbnz	r3, 800398e <__swsetup_r+0x9a>
 800397a:	89a3      	ldrh	r3, [r4, #12]
 800397c:	f403 7320 	and.w	r3, r3, #640	; 0x280
 8003980:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8003984:	d003      	beq.n	800398e <__swsetup_r+0x9a>
 8003986:	4621      	mov	r1, r4
 8003988:	4630      	mov	r0, r6
 800398a:	f000 f919 	bl	8003bc0 <__smakebuf_r>
 800398e:	89a2      	ldrh	r2, [r4, #12]
 8003990:	f012 0301 	ands.w	r3, r2, #1
 8003994:	d00c      	beq.n	80039b0 <__swsetup_r+0xbc>
 8003996:	2300      	movs	r3, #0
 8003998:	60a3      	str	r3, [r4, #8]
 800399a:	6963      	ldr	r3, [r4, #20]
 800399c:	425b      	negs	r3, r3
 800399e:	61a3      	str	r3, [r4, #24]
 80039a0:	6923      	ldr	r3, [r4, #16]
 80039a2:	b953      	cbnz	r3, 80039ba <__swsetup_r+0xc6>
 80039a4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80039a8:	f013 0080 	ands.w	r0, r3, #128	; 0x80
 80039ac:	d1ba      	bne.n	8003924 <__swsetup_r+0x30>
 80039ae:	bd70      	pop	{r4, r5, r6, pc}
 80039b0:	0792      	lsls	r2, r2, #30
 80039b2:	bf58      	it	pl
 80039b4:	6963      	ldrpl	r3, [r4, #20]
 80039b6:	60a3      	str	r3, [r4, #8]
 80039b8:	e7f2      	b.n	80039a0 <__swsetup_r+0xac>
 80039ba:	2000      	movs	r0, #0
 80039bc:	e7f7      	b.n	80039ae <__swsetup_r+0xba>
 80039be:	bf00      	nop
 80039c0:	20000008 	.word	0x20000008
 80039c4:	08003ec0 	.word	0x08003ec0
 80039c8:	08003ee0 	.word	0x08003ee0
 80039cc:	08003ea0 	.word	0x08003ea0

080039d0 <_close_r>:
 80039d0:	b538      	push	{r3, r4, r5, lr}
 80039d2:	4c06      	ldr	r4, [pc, #24]	; (80039ec <_close_r+0x1c>)
 80039d4:	2300      	movs	r3, #0
 80039d6:	4605      	mov	r5, r0
 80039d8:	4608      	mov	r0, r1
 80039da:	6023      	str	r3, [r4, #0]
 80039dc:	f000 f9b4 	bl	8003d48 <_close>
 80039e0:	1c43      	adds	r3, r0, #1
 80039e2:	d102      	bne.n	80039ea <_close_r+0x1a>
 80039e4:	6823      	ldr	r3, [r4, #0]
 80039e6:	b103      	cbz	r3, 80039ea <_close_r+0x1a>
 80039e8:	602b      	str	r3, [r5, #0]
 80039ea:	bd38      	pop	{r3, r4, r5, pc}
 80039ec:	2001782c 	.word	0x2001782c

080039f0 <__sflush_r>:
 80039f0:	898a      	ldrh	r2, [r1, #12]
 80039f2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80039f6:	4605      	mov	r5, r0
 80039f8:	0710      	lsls	r0, r2, #28
 80039fa:	460c      	mov	r4, r1
 80039fc:	d45a      	bmi.n	8003ab4 <__sflush_r+0xc4>
 80039fe:	684b      	ldr	r3, [r1, #4]
 8003a00:	2b00      	cmp	r3, #0
 8003a02:	dc05      	bgt.n	8003a10 <__sflush_r+0x20>
 8003a04:	6c0b      	ldr	r3, [r1, #64]	; 0x40
 8003a06:	2b00      	cmp	r3, #0
 8003a08:	dc02      	bgt.n	8003a10 <__sflush_r+0x20>
 8003a0a:	2000      	movs	r0, #0
 8003a0c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003a10:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
 8003a12:	2e00      	cmp	r6, #0
 8003a14:	d0f9      	beq.n	8003a0a <__sflush_r+0x1a>
 8003a16:	2300      	movs	r3, #0
 8003a18:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
 8003a1c:	682f      	ldr	r7, [r5, #0]
 8003a1e:	602b      	str	r3, [r5, #0]
 8003a20:	d033      	beq.n	8003a8a <__sflush_r+0x9a>
 8003a22:	6d60      	ldr	r0, [r4, #84]	; 0x54
 8003a24:	89a3      	ldrh	r3, [r4, #12]
 8003a26:	075a      	lsls	r2, r3, #29
 8003a28:	d505      	bpl.n	8003a36 <__sflush_r+0x46>
 8003a2a:	6863      	ldr	r3, [r4, #4]
 8003a2c:	1ac0      	subs	r0, r0, r3
 8003a2e:	6b63      	ldr	r3, [r4, #52]	; 0x34
 8003a30:	b10b      	cbz	r3, 8003a36 <__sflush_r+0x46>
 8003a32:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8003a34:	1ac0      	subs	r0, r0, r3
 8003a36:	2300      	movs	r3, #0
 8003a38:	4602      	mov	r2, r0
 8003a3a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
 8003a3c:	6a21      	ldr	r1, [r4, #32]
 8003a3e:	4628      	mov	r0, r5
 8003a40:	47b0      	blx	r6
 8003a42:	1c43      	adds	r3, r0, #1
 8003a44:	89a3      	ldrh	r3, [r4, #12]
 8003a46:	d106      	bne.n	8003a56 <__sflush_r+0x66>
 8003a48:	6829      	ldr	r1, [r5, #0]
 8003a4a:	291d      	cmp	r1, #29
 8003a4c:	d84b      	bhi.n	8003ae6 <__sflush_r+0xf6>
 8003a4e:	4a2b      	ldr	r2, [pc, #172]	; (8003afc <__sflush_r+0x10c>)
 8003a50:	40ca      	lsrs	r2, r1
 8003a52:	07d6      	lsls	r6, r2, #31
 8003a54:	d547      	bpl.n	8003ae6 <__sflush_r+0xf6>
 8003a56:	2200      	movs	r2, #0
 8003a58:	6062      	str	r2, [r4, #4]
 8003a5a:	04d9      	lsls	r1, r3, #19
 8003a5c:	6922      	ldr	r2, [r4, #16]
 8003a5e:	6022      	str	r2, [r4, #0]
 8003a60:	d504      	bpl.n	8003a6c <__sflush_r+0x7c>
 8003a62:	1c42      	adds	r2, r0, #1
 8003a64:	d101      	bne.n	8003a6a <__sflush_r+0x7a>
 8003a66:	682b      	ldr	r3, [r5, #0]
 8003a68:	b903      	cbnz	r3, 8003a6c <__sflush_r+0x7c>
 8003a6a:	6560      	str	r0, [r4, #84]	; 0x54
 8003a6c:	6b61      	ldr	r1, [r4, #52]	; 0x34
 8003a6e:	602f      	str	r7, [r5, #0]
 8003a70:	2900      	cmp	r1, #0
 8003a72:	d0ca      	beq.n	8003a0a <__sflush_r+0x1a>
 8003a74:	f104 0344 	add.w	r3, r4, #68	; 0x44
 8003a78:	4299      	cmp	r1, r3
 8003a7a:	d002      	beq.n	8003a82 <__sflush_r+0x92>
 8003a7c:	4628      	mov	r0, r5
 8003a7e:	f000 f8e1 	bl	8003c44 <_free_r>
 8003a82:	2000      	movs	r0, #0
 8003a84:	6360      	str	r0, [r4, #52]	; 0x34
 8003a86:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003a8a:	6a21      	ldr	r1, [r4, #32]
 8003a8c:	2301      	movs	r3, #1
 8003a8e:	4628      	mov	r0, r5
 8003a90:	47b0      	blx	r6
 8003a92:	1c41      	adds	r1, r0, #1
 8003a94:	d1c6      	bne.n	8003a24 <__sflush_r+0x34>
 8003a96:	682b      	ldr	r3, [r5, #0]
 8003a98:	2b00      	cmp	r3, #0
 8003a9a:	d0c3      	beq.n	8003a24 <__sflush_r+0x34>
 8003a9c:	2b1d      	cmp	r3, #29
 8003a9e:	d001      	beq.n	8003aa4 <__sflush_r+0xb4>
 8003aa0:	2b16      	cmp	r3, #22
 8003aa2:	d101      	bne.n	8003aa8 <__sflush_r+0xb8>
 8003aa4:	602f      	str	r7, [r5, #0]
 8003aa6:	e7b0      	b.n	8003a0a <__sflush_r+0x1a>
 8003aa8:	89a3      	ldrh	r3, [r4, #12]
 8003aaa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003aae:	81a3      	strh	r3, [r4, #12]
 8003ab0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003ab4:	690f      	ldr	r7, [r1, #16]
 8003ab6:	2f00      	cmp	r7, #0
 8003ab8:	d0a7      	beq.n	8003a0a <__sflush_r+0x1a>
 8003aba:	0793      	lsls	r3, r2, #30
 8003abc:	680e      	ldr	r6, [r1, #0]
 8003abe:	bf08      	it	eq
 8003ac0:	694b      	ldreq	r3, [r1, #20]
 8003ac2:	600f      	str	r7, [r1, #0]
 8003ac4:	bf18      	it	ne
 8003ac6:	2300      	movne	r3, #0
 8003ac8:	eba6 0807 	sub.w	r8, r6, r7
 8003acc:	608b      	str	r3, [r1, #8]
 8003ace:	f1b8 0f00 	cmp.w	r8, #0
 8003ad2:	dd9a      	ble.n	8003a0a <__sflush_r+0x1a>
 8003ad4:	4643      	mov	r3, r8
 8003ad6:	463a      	mov	r2, r7
 8003ad8:	6a21      	ldr	r1, [r4, #32]
 8003ada:	6aa6      	ldr	r6, [r4, #40]	; 0x28
 8003adc:	4628      	mov	r0, r5
 8003ade:	47b0      	blx	r6
 8003ae0:	2800      	cmp	r0, #0
 8003ae2:	dc07      	bgt.n	8003af4 <__sflush_r+0x104>
 8003ae4:	89a3      	ldrh	r3, [r4, #12]
 8003ae6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003aea:	81a3      	strh	r3, [r4, #12]
 8003aec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003af0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003af4:	4407      	add	r7, r0
 8003af6:	eba8 0800 	sub.w	r8, r8, r0
 8003afa:	e7e8      	b.n	8003ace <__sflush_r+0xde>
 8003afc:	20400001 	.word	0x20400001

08003b00 <_fflush_r>:
 8003b00:	b538      	push	{r3, r4, r5, lr}
 8003b02:	690b      	ldr	r3, [r1, #16]
 8003b04:	4605      	mov	r5, r0
 8003b06:	460c      	mov	r4, r1
 8003b08:	b1db      	cbz	r3, 8003b42 <_fflush_r+0x42>
 8003b0a:	b118      	cbz	r0, 8003b14 <_fflush_r+0x14>
 8003b0c:	6983      	ldr	r3, [r0, #24]
 8003b0e:	b90b      	cbnz	r3, 8003b14 <_fflush_r+0x14>
 8003b10:	f7ff fa7a 	bl	8003008 <__sinit>
 8003b14:	4b0c      	ldr	r3, [pc, #48]	; (8003b48 <_fflush_r+0x48>)
 8003b16:	429c      	cmp	r4, r3
 8003b18:	d109      	bne.n	8003b2e <_fflush_r+0x2e>
 8003b1a:	686c      	ldr	r4, [r5, #4]
 8003b1c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003b20:	b17b      	cbz	r3, 8003b42 <_fflush_r+0x42>
 8003b22:	4621      	mov	r1, r4
 8003b24:	4628      	mov	r0, r5
 8003b26:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8003b2a:	f7ff bf61 	b.w	80039f0 <__sflush_r>
 8003b2e:	4b07      	ldr	r3, [pc, #28]	; (8003b4c <_fflush_r+0x4c>)
 8003b30:	429c      	cmp	r4, r3
 8003b32:	d101      	bne.n	8003b38 <_fflush_r+0x38>
 8003b34:	68ac      	ldr	r4, [r5, #8]
 8003b36:	e7f1      	b.n	8003b1c <_fflush_r+0x1c>
 8003b38:	4b05      	ldr	r3, [pc, #20]	; (8003b50 <_fflush_r+0x50>)
 8003b3a:	429c      	cmp	r4, r3
 8003b3c:	bf08      	it	eq
 8003b3e:	68ec      	ldreq	r4, [r5, #12]
 8003b40:	e7ec      	b.n	8003b1c <_fflush_r+0x1c>
 8003b42:	2000      	movs	r0, #0
 8003b44:	bd38      	pop	{r3, r4, r5, pc}
 8003b46:	bf00      	nop
 8003b48:	08003ec0 	.word	0x08003ec0
 8003b4c:	08003ee0 	.word	0x08003ee0
 8003b50:	08003ea0 	.word	0x08003ea0

08003b54 <_lseek_r>:
 8003b54:	b538      	push	{r3, r4, r5, lr}
 8003b56:	4c07      	ldr	r4, [pc, #28]	; (8003b74 <_lseek_r+0x20>)
 8003b58:	4605      	mov	r5, r0
 8003b5a:	4608      	mov	r0, r1
 8003b5c:	4611      	mov	r1, r2
 8003b5e:	2200      	movs	r2, #0
 8003b60:	6022      	str	r2, [r4, #0]
 8003b62:	461a      	mov	r2, r3
 8003b64:	f000 f908 	bl	8003d78 <_lseek>
 8003b68:	1c43      	adds	r3, r0, #1
 8003b6a:	d102      	bne.n	8003b72 <_lseek_r+0x1e>
 8003b6c:	6823      	ldr	r3, [r4, #0]
 8003b6e:	b103      	cbz	r3, 8003b72 <_lseek_r+0x1e>
 8003b70:	602b      	str	r3, [r5, #0]
 8003b72:	bd38      	pop	{r3, r4, r5, pc}
 8003b74:	2001782c 	.word	0x2001782c

08003b78 <__swhatbuf_r>:
 8003b78:	b570      	push	{r4, r5, r6, lr}
 8003b7a:	460e      	mov	r6, r1
 8003b7c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8003b80:	2900      	cmp	r1, #0
 8003b82:	b090      	sub	sp, #64	; 0x40
 8003b84:	4614      	mov	r4, r2
 8003b86:	461d      	mov	r5, r3
 8003b88:	da07      	bge.n	8003b9a <__swhatbuf_r+0x22>
 8003b8a:	2300      	movs	r3, #0
 8003b8c:	602b      	str	r3, [r5, #0]
 8003b8e:	89b3      	ldrh	r3, [r6, #12]
 8003b90:	061a      	lsls	r2, r3, #24
 8003b92:	d410      	bmi.n	8003bb6 <__swhatbuf_r+0x3e>
 8003b94:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8003b98:	e00e      	b.n	8003bb8 <__swhatbuf_r+0x40>
 8003b9a:	aa01      	add	r2, sp, #4
 8003b9c:	f000 f8b2 	bl	8003d04 <_fstat_r>
 8003ba0:	2800      	cmp	r0, #0
 8003ba2:	dbf2      	blt.n	8003b8a <__swhatbuf_r+0x12>
 8003ba4:	9a02      	ldr	r2, [sp, #8]
 8003ba6:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
 8003baa:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
 8003bae:	425a      	negs	r2, r3
 8003bb0:	415a      	adcs	r2, r3
 8003bb2:	602a      	str	r2, [r5, #0]
 8003bb4:	e7ee      	b.n	8003b94 <__swhatbuf_r+0x1c>
 8003bb6:	2340      	movs	r3, #64	; 0x40
 8003bb8:	2000      	movs	r0, #0
 8003bba:	6023      	str	r3, [r4, #0]
 8003bbc:	b010      	add	sp, #64	; 0x40
 8003bbe:	bd70      	pop	{r4, r5, r6, pc}

08003bc0 <__smakebuf_r>:
 8003bc0:	898b      	ldrh	r3, [r1, #12]
 8003bc2:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8003bc4:	079d      	lsls	r5, r3, #30
 8003bc6:	4606      	mov	r6, r0
 8003bc8:	460c      	mov	r4, r1
 8003bca:	d507      	bpl.n	8003bdc <__smakebuf_r+0x1c>
 8003bcc:	f104 0347 	add.w	r3, r4, #71	; 0x47
 8003bd0:	6023      	str	r3, [r4, #0]
 8003bd2:	6123      	str	r3, [r4, #16]
 8003bd4:	2301      	movs	r3, #1
 8003bd6:	6163      	str	r3, [r4, #20]
 8003bd8:	b002      	add	sp, #8
 8003bda:	bd70      	pop	{r4, r5, r6, pc}
 8003bdc:	ab01      	add	r3, sp, #4
 8003bde:	466a      	mov	r2, sp
 8003be0:	f7ff ffca 	bl	8003b78 <__swhatbuf_r>
 8003be4:	9900      	ldr	r1, [sp, #0]
 8003be6:	4605      	mov	r5, r0
 8003be8:	4630      	mov	r0, r6
 8003bea:	f7ff fa97 	bl	800311c <_malloc_r>
 8003bee:	b948      	cbnz	r0, 8003c04 <__smakebuf_r+0x44>
 8003bf0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003bf4:	059a      	lsls	r2, r3, #22
 8003bf6:	d4ef      	bmi.n	8003bd8 <__smakebuf_r+0x18>
 8003bf8:	f023 0303 	bic.w	r3, r3, #3
 8003bfc:	f043 0302 	orr.w	r3, r3, #2
 8003c00:	81a3      	strh	r3, [r4, #12]
 8003c02:	e7e3      	b.n	8003bcc <__smakebuf_r+0xc>
 8003c04:	4b0d      	ldr	r3, [pc, #52]	; (8003c3c <__smakebuf_r+0x7c>)
 8003c06:	62b3      	str	r3, [r6, #40]	; 0x28
 8003c08:	89a3      	ldrh	r3, [r4, #12]
 8003c0a:	6020      	str	r0, [r4, #0]
 8003c0c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8003c10:	81a3      	strh	r3, [r4, #12]
 8003c12:	9b00      	ldr	r3, [sp, #0]
 8003c14:	6163      	str	r3, [r4, #20]
 8003c16:	9b01      	ldr	r3, [sp, #4]
 8003c18:	6120      	str	r0, [r4, #16]
 8003c1a:	b15b      	cbz	r3, 8003c34 <__smakebuf_r+0x74>
 8003c1c:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8003c20:	4630      	mov	r0, r6
 8003c22:	f000 f881 	bl	8003d28 <_isatty_r>
 8003c26:	b128      	cbz	r0, 8003c34 <__smakebuf_r+0x74>
 8003c28:	89a3      	ldrh	r3, [r4, #12]
 8003c2a:	f023 0303 	bic.w	r3, r3, #3
 8003c2e:	f043 0301 	orr.w	r3, r3, #1
 8003c32:	81a3      	strh	r3, [r4, #12]
 8003c34:	89a3      	ldrh	r3, [r4, #12]
 8003c36:	431d      	orrs	r5, r3
 8003c38:	81a5      	strh	r5, [r4, #12]
 8003c3a:	e7cd      	b.n	8003bd8 <__smakebuf_r+0x18>
 8003c3c:	08002f89 	.word	0x08002f89

08003c40 <__malloc_lock>:
 8003c40:	4770      	bx	lr

08003c42 <__malloc_unlock>:
 8003c42:	4770      	bx	lr

08003c44 <_free_r>:
 8003c44:	b538      	push	{r3, r4, r5, lr}
 8003c46:	4605      	mov	r5, r0
 8003c48:	2900      	cmp	r1, #0
 8003c4a:	d045      	beq.n	8003cd8 <_free_r+0x94>
 8003c4c:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8003c50:	1f0c      	subs	r4, r1, #4
 8003c52:	2b00      	cmp	r3, #0
 8003c54:	bfb8      	it	lt
 8003c56:	18e4      	addlt	r4, r4, r3
 8003c58:	f7ff fff2 	bl	8003c40 <__malloc_lock>
 8003c5c:	4a1f      	ldr	r2, [pc, #124]	; (8003cdc <_free_r+0x98>)
 8003c5e:	6813      	ldr	r3, [r2, #0]
 8003c60:	4610      	mov	r0, r2
 8003c62:	b933      	cbnz	r3, 8003c72 <_free_r+0x2e>
 8003c64:	6063      	str	r3, [r4, #4]
 8003c66:	6014      	str	r4, [r2, #0]
 8003c68:	4628      	mov	r0, r5
 8003c6a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8003c6e:	f7ff bfe8 	b.w	8003c42 <__malloc_unlock>
 8003c72:	42a3      	cmp	r3, r4
 8003c74:	d90c      	bls.n	8003c90 <_free_r+0x4c>
 8003c76:	6821      	ldr	r1, [r4, #0]
 8003c78:	1862      	adds	r2, r4, r1
 8003c7a:	4293      	cmp	r3, r2
 8003c7c:	bf04      	itt	eq
 8003c7e:	681a      	ldreq	r2, [r3, #0]
 8003c80:	685b      	ldreq	r3, [r3, #4]
 8003c82:	6063      	str	r3, [r4, #4]
 8003c84:	bf04      	itt	eq
 8003c86:	1852      	addeq	r2, r2, r1
 8003c88:	6022      	streq	r2, [r4, #0]
 8003c8a:	6004      	str	r4, [r0, #0]
 8003c8c:	e7ec      	b.n	8003c68 <_free_r+0x24>
 8003c8e:	4613      	mov	r3, r2
 8003c90:	685a      	ldr	r2, [r3, #4]
 8003c92:	b10a      	cbz	r2, 8003c98 <_free_r+0x54>
 8003c94:	42a2      	cmp	r2, r4
 8003c96:	d9fa      	bls.n	8003c8e <_free_r+0x4a>
 8003c98:	6819      	ldr	r1, [r3, #0]
 8003c9a:	1858      	adds	r0, r3, r1
 8003c9c:	42a0      	cmp	r0, r4
 8003c9e:	d10b      	bne.n	8003cb8 <_free_r+0x74>
 8003ca0:	6820      	ldr	r0, [r4, #0]
 8003ca2:	4401      	add	r1, r0
 8003ca4:	1858      	adds	r0, r3, r1
 8003ca6:	4282      	cmp	r2, r0
 8003ca8:	6019      	str	r1, [r3, #0]
 8003caa:	d1dd      	bne.n	8003c68 <_free_r+0x24>
 8003cac:	6810      	ldr	r0, [r2, #0]
 8003cae:	6852      	ldr	r2, [r2, #4]
 8003cb0:	605a      	str	r2, [r3, #4]
 8003cb2:	4401      	add	r1, r0
 8003cb4:	6019      	str	r1, [r3, #0]
 8003cb6:	e7d7      	b.n	8003c68 <_free_r+0x24>
 8003cb8:	d902      	bls.n	8003cc0 <_free_r+0x7c>
 8003cba:	230c      	movs	r3, #12
 8003cbc:	602b      	str	r3, [r5, #0]
 8003cbe:	e7d3      	b.n	8003c68 <_free_r+0x24>
 8003cc0:	6820      	ldr	r0, [r4, #0]
 8003cc2:	1821      	adds	r1, r4, r0
 8003cc4:	428a      	cmp	r2, r1
 8003cc6:	bf04      	itt	eq
 8003cc8:	6811      	ldreq	r1, [r2, #0]
 8003cca:	6852      	ldreq	r2, [r2, #4]
 8003ccc:	6062      	str	r2, [r4, #4]
 8003cce:	bf04      	itt	eq
 8003cd0:	1809      	addeq	r1, r1, r0
 8003cd2:	6021      	streq	r1, [r4, #0]
 8003cd4:	605c      	str	r4, [r3, #4]
 8003cd6:	e7c7      	b.n	8003c68 <_free_r+0x24>
 8003cd8:	bd38      	pop	{r3, r4, r5, pc}
 8003cda:	bf00      	nop
 8003cdc:	20017798 	.word	0x20017798

08003ce0 <_read_r>:
 8003ce0:	b538      	push	{r3, r4, r5, lr}
 8003ce2:	4c07      	ldr	r4, [pc, #28]	; (8003d00 <_read_r+0x20>)
 8003ce4:	4605      	mov	r5, r0
 8003ce6:	4608      	mov	r0, r1
 8003ce8:	4611      	mov	r1, r2
 8003cea:	2200      	movs	r2, #0
 8003cec:	6022      	str	r2, [r4, #0]
 8003cee:	461a      	mov	r2, r3
 8003cf0:	f000 f84a 	bl	8003d88 <_read>
 8003cf4:	1c43      	adds	r3, r0, #1
 8003cf6:	d102      	bne.n	8003cfe <_read_r+0x1e>
 8003cf8:	6823      	ldr	r3, [r4, #0]
 8003cfa:	b103      	cbz	r3, 8003cfe <_read_r+0x1e>
 8003cfc:	602b      	str	r3, [r5, #0]
 8003cfe:	bd38      	pop	{r3, r4, r5, pc}
 8003d00:	2001782c 	.word	0x2001782c

08003d04 <_fstat_r>:
 8003d04:	b538      	push	{r3, r4, r5, lr}
 8003d06:	4c07      	ldr	r4, [pc, #28]	; (8003d24 <_fstat_r+0x20>)
 8003d08:	2300      	movs	r3, #0
 8003d0a:	4605      	mov	r5, r0
 8003d0c:	4608      	mov	r0, r1
 8003d0e:	4611      	mov	r1, r2
 8003d10:	6023      	str	r3, [r4, #0]
 8003d12:	f000 f821 	bl	8003d58 <_fstat>
 8003d16:	1c43      	adds	r3, r0, #1
 8003d18:	d102      	bne.n	8003d20 <_fstat_r+0x1c>
 8003d1a:	6823      	ldr	r3, [r4, #0]
 8003d1c:	b103      	cbz	r3, 8003d20 <_fstat_r+0x1c>
 8003d1e:	602b      	str	r3, [r5, #0]
 8003d20:	bd38      	pop	{r3, r4, r5, pc}
 8003d22:	bf00      	nop
 8003d24:	2001782c 	.word	0x2001782c

08003d28 <_isatty_r>:
 8003d28:	b538      	push	{r3, r4, r5, lr}
 8003d2a:	4c06      	ldr	r4, [pc, #24]	; (8003d44 <_isatty_r+0x1c>)
 8003d2c:	2300      	movs	r3, #0
 8003d2e:	4605      	mov	r5, r0
 8003d30:	4608      	mov	r0, r1
 8003d32:	6023      	str	r3, [r4, #0]
 8003d34:	f000 f818 	bl	8003d68 <_isatty>
 8003d38:	1c43      	adds	r3, r0, #1
 8003d3a:	d102      	bne.n	8003d42 <_isatty_r+0x1a>
 8003d3c:	6823      	ldr	r3, [r4, #0]
 8003d3e:	b103      	cbz	r3, 8003d42 <_isatty_r+0x1a>
 8003d40:	602b      	str	r3, [r5, #0]
 8003d42:	bd38      	pop	{r3, r4, r5, pc}
 8003d44:	2001782c 	.word	0x2001782c

08003d48 <_close>:
 8003d48:	4b02      	ldr	r3, [pc, #8]	; (8003d54 <_close+0xc>)
 8003d4a:	2258      	movs	r2, #88	; 0x58
 8003d4c:	601a      	str	r2, [r3, #0]
 8003d4e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003d52:	4770      	bx	lr
 8003d54:	2001782c 	.word	0x2001782c

08003d58 <_fstat>:
 8003d58:	4b02      	ldr	r3, [pc, #8]	; (8003d64 <_fstat+0xc>)
 8003d5a:	2258      	movs	r2, #88	; 0x58
 8003d5c:	601a      	str	r2, [r3, #0]
 8003d5e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003d62:	4770      	bx	lr
 8003d64:	2001782c 	.word	0x2001782c

08003d68 <_isatty>:
 8003d68:	4b02      	ldr	r3, [pc, #8]	; (8003d74 <_isatty+0xc>)
 8003d6a:	2258      	movs	r2, #88	; 0x58
 8003d6c:	601a      	str	r2, [r3, #0]
 8003d6e:	2000      	movs	r0, #0
 8003d70:	4770      	bx	lr
 8003d72:	bf00      	nop
 8003d74:	2001782c 	.word	0x2001782c

08003d78 <_lseek>:
 8003d78:	4b02      	ldr	r3, [pc, #8]	; (8003d84 <_lseek+0xc>)
 8003d7a:	2258      	movs	r2, #88	; 0x58
 8003d7c:	601a      	str	r2, [r3, #0]
 8003d7e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003d82:	4770      	bx	lr
 8003d84:	2001782c 	.word	0x2001782c

08003d88 <_read>:
 8003d88:	4b02      	ldr	r3, [pc, #8]	; (8003d94 <_read+0xc>)
 8003d8a:	2258      	movs	r2, #88	; 0x58
 8003d8c:	601a      	str	r2, [r3, #0]
 8003d8e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003d92:	4770      	bx	lr
 8003d94:	2001782c 	.word	0x2001782c

08003d98 <_sbrk>:
 8003d98:	4a04      	ldr	r2, [pc, #16]	; (8003dac <_sbrk+0x14>)
 8003d9a:	4905      	ldr	r1, [pc, #20]	; (8003db0 <_sbrk+0x18>)
 8003d9c:	6813      	ldr	r3, [r2, #0]
 8003d9e:	2b00      	cmp	r3, #0
 8003da0:	bf08      	it	eq
 8003da2:	460b      	moveq	r3, r1
 8003da4:	4418      	add	r0, r3
 8003da6:	6010      	str	r0, [r2, #0]
 8003da8:	4618      	mov	r0, r3
 8003daa:	4770      	bx	lr
 8003dac:	200177a0 	.word	0x200177a0
 8003db0:	20017830 	.word	0x20017830

08003db4 <_write>:
 8003db4:	4b02      	ldr	r3, [pc, #8]	; (8003dc0 <_write+0xc>)
 8003db6:	2258      	movs	r2, #88	; 0x58
 8003db8:	601a      	str	r2, [r3, #0]
 8003dba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003dbe:	4770      	bx	lr
 8003dc0:	2001782c 	.word	0x2001782c

08003dc4 <_init>:
 8003dc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003dc6:	bf00      	nop
 8003dc8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003dca:	bc08      	pop	{r3}
 8003dcc:	469e      	mov	lr, r3
 8003dce:	4770      	bx	lr

08003dd0 <_fini>:
 8003dd0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003dd2:	bf00      	nop
 8003dd4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003dd6:	bc08      	pop	{r3}
 8003dd8:	469e      	mov	lr, r3
 8003dda:	4770      	bx	lr
 8003ddc:	0000      	movs	r0, r0
	...
