
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
 80001b0:	08003e68 	.word	0x08003e68

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
 80001ec:	08003e68 	.word	0x08003e68
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

08000328 <HAL_NVIC_EnableIRQ>:
 8000328:	0942      	lsrs	r2, r0, #5
 800032a:	f000 001f 	and.w	r0, r0, #31
 800032e:	2301      	movs	r3, #1
 8000330:	fa03 f000 	lsl.w	r0, r3, r0
 8000334:	4b01      	ldr	r3, [pc, #4]	; (800033c <HAL_NVIC_EnableIRQ+0x14>)
 8000336:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
 800033a:	4770      	bx	lr
 800033c:	e000e100 	.word	0xe000e100

08000340 <HAL_SYSTICK_Config>:
 8000340:	3801      	subs	r0, #1
 8000342:	f1b0 7f80 	cmp.w	r0, #16777216	; 0x1000000
 8000346:	d20a      	bcs.n	800035e <HAL_SYSTICK_Config+0x1e>
 8000348:	4b06      	ldr	r3, [pc, #24]	; (8000364 <HAL_SYSTICK_Config+0x24>)
 800034a:	6058      	str	r0, [r3, #4]
 800034c:	21f0      	movs	r1, #240	; 0xf0
 800034e:	4a06      	ldr	r2, [pc, #24]	; (8000368 <HAL_SYSTICK_Config+0x28>)
 8000350:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8000354:	2000      	movs	r0, #0
 8000356:	6098      	str	r0, [r3, #8]
 8000358:	2207      	movs	r2, #7
 800035a:	601a      	str	r2, [r3, #0]
 800035c:	4770      	bx	lr
 800035e:	2001      	movs	r0, #1
 8000360:	4770      	bx	lr
 8000362:	bf00      	nop
 8000364:	e000e010 	.word	0xe000e010
 8000368:	e000ed00 	.word	0xe000ed00

0800036c <HAL_SYSTICK_Callback>:
 800036c:	4770      	bx	lr

0800036e <HAL_SYSTICK_IRQHandler>:
 800036e:	b508      	push	{r3, lr}
 8000370:	f7ff fffc 	bl	800036c <HAL_SYSTICK_Callback>
 8000374:	bd08      	pop	{r3, pc}

08000376 <HAL_TIM_PeriodElapsedCallback>:
 8000376:	4770      	bx	lr

08000378 <HAL_TIM_OC_DelayElapsedCallback>:
 8000378:	4770      	bx	lr

0800037a <HAL_TIM_IC_CaptureCallback>:
 800037a:	4770      	bx	lr

0800037c <HAL_TIM_PWM_PulseFinishedCallback>:
 800037c:	4770      	bx	lr

0800037e <HAL_TIM_TriggerCallback>:
 800037e:	4770      	bx	lr

08000380 <HAL_TIM_IRQHandler>:
 8000380:	b510      	push	{r4, lr}
 8000382:	4604      	mov	r4, r0
 8000384:	6803      	ldr	r3, [r0, #0]
 8000386:	691a      	ldr	r2, [r3, #16]
 8000388:	f012 0f02 	tst.w	r2, #2
 800038c:	d011      	beq.n	80003b2 <HAL_TIM_IRQHandler+0x32>
 800038e:	68da      	ldr	r2, [r3, #12]
 8000390:	f012 0f02 	tst.w	r2, #2
 8000394:	d00d      	beq.n	80003b2 <HAL_TIM_IRQHandler+0x32>
 8000396:	f06f 0202 	mvn.w	r2, #2
 800039a:	611a      	str	r2, [r3, #16]
 800039c:	2301      	movs	r3, #1
 800039e:	7703      	strb	r3, [r0, #28]
 80003a0:	6803      	ldr	r3, [r0, #0]
 80003a2:	699b      	ldr	r3, [r3, #24]
 80003a4:	f013 0f03 	tst.w	r3, #3
 80003a8:	d070      	beq.n	800048c <HAL_TIM_IRQHandler+0x10c>
 80003aa:	f7ff ffe6 	bl	800037a <HAL_TIM_IC_CaptureCallback>
 80003ae:	2300      	movs	r3, #0
 80003b0:	7723      	strb	r3, [r4, #28]
 80003b2:	6823      	ldr	r3, [r4, #0]
 80003b4:	691a      	ldr	r2, [r3, #16]
 80003b6:	f012 0f04 	tst.w	r2, #4
 80003ba:	d012      	beq.n	80003e2 <HAL_TIM_IRQHandler+0x62>
 80003bc:	68da      	ldr	r2, [r3, #12]
 80003be:	f012 0f04 	tst.w	r2, #4
 80003c2:	d00e      	beq.n	80003e2 <HAL_TIM_IRQHandler+0x62>
 80003c4:	f06f 0204 	mvn.w	r2, #4
 80003c8:	611a      	str	r2, [r3, #16]
 80003ca:	2302      	movs	r3, #2
 80003cc:	7723      	strb	r3, [r4, #28]
 80003ce:	6823      	ldr	r3, [r4, #0]
 80003d0:	699b      	ldr	r3, [r3, #24]
 80003d2:	f413 7f40 	tst.w	r3, #768	; 0x300
 80003d6:	d05f      	beq.n	8000498 <HAL_TIM_IRQHandler+0x118>
 80003d8:	4620      	mov	r0, r4
 80003da:	f7ff ffce 	bl	800037a <HAL_TIM_IC_CaptureCallback>
 80003de:	2300      	movs	r3, #0
 80003e0:	7723      	strb	r3, [r4, #28]
 80003e2:	6823      	ldr	r3, [r4, #0]
 80003e4:	691a      	ldr	r2, [r3, #16]
 80003e6:	f012 0f08 	tst.w	r2, #8
 80003ea:	d012      	beq.n	8000412 <HAL_TIM_IRQHandler+0x92>
 80003ec:	68da      	ldr	r2, [r3, #12]
 80003ee:	f012 0f08 	tst.w	r2, #8
 80003f2:	d00e      	beq.n	8000412 <HAL_TIM_IRQHandler+0x92>
 80003f4:	f06f 0208 	mvn.w	r2, #8
 80003f8:	611a      	str	r2, [r3, #16]
 80003fa:	2304      	movs	r3, #4
 80003fc:	7723      	strb	r3, [r4, #28]
 80003fe:	6823      	ldr	r3, [r4, #0]
 8000400:	69db      	ldr	r3, [r3, #28]
 8000402:	f013 0f03 	tst.w	r3, #3
 8000406:	d04e      	beq.n	80004a6 <HAL_TIM_IRQHandler+0x126>
 8000408:	4620      	mov	r0, r4
 800040a:	f7ff ffb6 	bl	800037a <HAL_TIM_IC_CaptureCallback>
 800040e:	2300      	movs	r3, #0
 8000410:	7723      	strb	r3, [r4, #28]
 8000412:	6823      	ldr	r3, [r4, #0]
 8000414:	691a      	ldr	r2, [r3, #16]
 8000416:	f012 0f10 	tst.w	r2, #16
 800041a:	d012      	beq.n	8000442 <HAL_TIM_IRQHandler+0xc2>
 800041c:	68da      	ldr	r2, [r3, #12]
 800041e:	f012 0f10 	tst.w	r2, #16
 8000422:	d00e      	beq.n	8000442 <HAL_TIM_IRQHandler+0xc2>
 8000424:	f06f 0210 	mvn.w	r2, #16
 8000428:	611a      	str	r2, [r3, #16]
 800042a:	2308      	movs	r3, #8
 800042c:	7723      	strb	r3, [r4, #28]
 800042e:	6823      	ldr	r3, [r4, #0]
 8000430:	69db      	ldr	r3, [r3, #28]
 8000432:	f413 7f40 	tst.w	r3, #768	; 0x300
 8000436:	d03d      	beq.n	80004b4 <HAL_TIM_IRQHandler+0x134>
 8000438:	4620      	mov	r0, r4
 800043a:	f7ff ff9e 	bl	800037a <HAL_TIM_IC_CaptureCallback>
 800043e:	2300      	movs	r3, #0
 8000440:	7723      	strb	r3, [r4, #28]
 8000442:	6823      	ldr	r3, [r4, #0]
 8000444:	691a      	ldr	r2, [r3, #16]
 8000446:	f012 0f01 	tst.w	r2, #1
 800044a:	d003      	beq.n	8000454 <HAL_TIM_IRQHandler+0xd4>
 800044c:	68da      	ldr	r2, [r3, #12]
 800044e:	f012 0f01 	tst.w	r2, #1
 8000452:	d136      	bne.n	80004c2 <HAL_TIM_IRQHandler+0x142>
 8000454:	6823      	ldr	r3, [r4, #0]
 8000456:	691a      	ldr	r2, [r3, #16]
 8000458:	f012 0f80 	tst.w	r2, #128	; 0x80
 800045c:	d003      	beq.n	8000466 <HAL_TIM_IRQHandler+0xe6>
 800045e:	68da      	ldr	r2, [r3, #12]
 8000460:	f012 0f80 	tst.w	r2, #128	; 0x80
 8000464:	d134      	bne.n	80004d0 <HAL_TIM_IRQHandler+0x150>
 8000466:	6823      	ldr	r3, [r4, #0]
 8000468:	691a      	ldr	r2, [r3, #16]
 800046a:	f012 0f40 	tst.w	r2, #64	; 0x40
 800046e:	d003      	beq.n	8000478 <HAL_TIM_IRQHandler+0xf8>
 8000470:	68da      	ldr	r2, [r3, #12]
 8000472:	f012 0f40 	tst.w	r2, #64	; 0x40
 8000476:	d132      	bne.n	80004de <HAL_TIM_IRQHandler+0x15e>
 8000478:	6823      	ldr	r3, [r4, #0]
 800047a:	691a      	ldr	r2, [r3, #16]
 800047c:	f012 0f20 	tst.w	r2, #32
 8000480:	d003      	beq.n	800048a <HAL_TIM_IRQHandler+0x10a>
 8000482:	68da      	ldr	r2, [r3, #12]
 8000484:	f012 0f20 	tst.w	r2, #32
 8000488:	d130      	bne.n	80004ec <HAL_TIM_IRQHandler+0x16c>
 800048a:	bd10      	pop	{r4, pc}
 800048c:	f7ff ff74 	bl	8000378 <HAL_TIM_OC_DelayElapsedCallback>
 8000490:	4620      	mov	r0, r4
 8000492:	f7ff ff73 	bl	800037c <HAL_TIM_PWM_PulseFinishedCallback>
 8000496:	e78a      	b.n	80003ae <HAL_TIM_IRQHandler+0x2e>
 8000498:	4620      	mov	r0, r4
 800049a:	f7ff ff6d 	bl	8000378 <HAL_TIM_OC_DelayElapsedCallback>
 800049e:	4620      	mov	r0, r4
 80004a0:	f7ff ff6c 	bl	800037c <HAL_TIM_PWM_PulseFinishedCallback>
 80004a4:	e79b      	b.n	80003de <HAL_TIM_IRQHandler+0x5e>
 80004a6:	4620      	mov	r0, r4
 80004a8:	f7ff ff66 	bl	8000378 <HAL_TIM_OC_DelayElapsedCallback>
 80004ac:	4620      	mov	r0, r4
 80004ae:	f7ff ff65 	bl	800037c <HAL_TIM_PWM_PulseFinishedCallback>
 80004b2:	e7ac      	b.n	800040e <HAL_TIM_IRQHandler+0x8e>
 80004b4:	4620      	mov	r0, r4
 80004b6:	f7ff ff5f 	bl	8000378 <HAL_TIM_OC_DelayElapsedCallback>
 80004ba:	4620      	mov	r0, r4
 80004bc:	f7ff ff5e 	bl	800037c <HAL_TIM_PWM_PulseFinishedCallback>
 80004c0:	e7bd      	b.n	800043e <HAL_TIM_IRQHandler+0xbe>
 80004c2:	f06f 0201 	mvn.w	r2, #1
 80004c6:	611a      	str	r2, [r3, #16]
 80004c8:	4620      	mov	r0, r4
 80004ca:	f7ff ff54 	bl	8000376 <HAL_TIM_PeriodElapsedCallback>
 80004ce:	e7c1      	b.n	8000454 <HAL_TIM_IRQHandler+0xd4>
 80004d0:	f06f 0280 	mvn.w	r2, #128	; 0x80
 80004d4:	611a      	str	r2, [r3, #16]
 80004d6:	4620      	mov	r0, r4
 80004d8:	f000 fdc1 	bl	800105e <HAL_TIMEx_BreakCallback>
 80004dc:	e7c3      	b.n	8000466 <HAL_TIM_IRQHandler+0xe6>
 80004de:	f06f 0240 	mvn.w	r2, #64	; 0x40
 80004e2:	611a      	str	r2, [r3, #16]
 80004e4:	4620      	mov	r0, r4
 80004e6:	f7ff ff4a 	bl	800037e <HAL_TIM_TriggerCallback>
 80004ea:	e7c5      	b.n	8000478 <HAL_TIM_IRQHandler+0xf8>
 80004ec:	f06f 0220 	mvn.w	r2, #32
 80004f0:	611a      	str	r2, [r3, #16]
 80004f2:	4620      	mov	r0, r4
 80004f4:	f000 fdb2 	bl	800105c <HAL_TIMEx_CommutationCallback>
 80004f8:	e7c7      	b.n	800048a <HAL_TIM_IRQHandler+0x10a>
	...

080004fc <TIM_Base_SetConfig>:
 80004fc:	6803      	ldr	r3, [r0, #0]
 80004fe:	4a30      	ldr	r2, [pc, #192]	; (80005c0 <TIM_Base_SetConfig+0xc4>)
 8000500:	4290      	cmp	r0, r2
 8000502:	d012      	beq.n	800052a <TIM_Base_SetConfig+0x2e>
 8000504:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8000508:	d00f      	beq.n	800052a <TIM_Base_SetConfig+0x2e>
 800050a:	f5a2 3294 	sub.w	r2, r2, #75776	; 0x12800
 800050e:	4290      	cmp	r0, r2
 8000510:	d00b      	beq.n	800052a <TIM_Base_SetConfig+0x2e>
 8000512:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8000516:	4290      	cmp	r0, r2
 8000518:	d007      	beq.n	800052a <TIM_Base_SetConfig+0x2e>
 800051a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800051e:	4290      	cmp	r0, r2
 8000520:	d003      	beq.n	800052a <TIM_Base_SetConfig+0x2e>
 8000522:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
 8000526:	4290      	cmp	r0, r2
 8000528:	d103      	bne.n	8000532 <TIM_Base_SetConfig+0x36>
 800052a:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800052e:	684a      	ldr	r2, [r1, #4]
 8000530:	4313      	orrs	r3, r2
 8000532:	4a23      	ldr	r2, [pc, #140]	; (80005c0 <TIM_Base_SetConfig+0xc4>)
 8000534:	4290      	cmp	r0, r2
 8000536:	d01e      	beq.n	8000576 <TIM_Base_SetConfig+0x7a>
 8000538:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800053c:	d01b      	beq.n	8000576 <TIM_Base_SetConfig+0x7a>
 800053e:	f5a2 3294 	sub.w	r2, r2, #75776	; 0x12800
 8000542:	4290      	cmp	r0, r2
 8000544:	d017      	beq.n	8000576 <TIM_Base_SetConfig+0x7a>
 8000546:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800054a:	4290      	cmp	r0, r2
 800054c:	d013      	beq.n	8000576 <TIM_Base_SetConfig+0x7a>
 800054e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8000552:	4290      	cmp	r0, r2
 8000554:	d00f      	beq.n	8000576 <TIM_Base_SetConfig+0x7a>
 8000556:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
 800055a:	4290      	cmp	r0, r2
 800055c:	d00b      	beq.n	8000576 <TIM_Base_SetConfig+0x7a>
 800055e:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8000562:	4290      	cmp	r0, r2
 8000564:	d007      	beq.n	8000576 <TIM_Base_SetConfig+0x7a>
 8000566:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800056a:	4290      	cmp	r0, r2
 800056c:	d003      	beq.n	8000576 <TIM_Base_SetConfig+0x7a>
 800056e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8000572:	4290      	cmp	r0, r2
 8000574:	d103      	bne.n	800057e <TIM_Base_SetConfig+0x82>
 8000576:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 800057a:	68ca      	ldr	r2, [r1, #12]
 800057c:	4313      	orrs	r3, r2
 800057e:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000582:	694a      	ldr	r2, [r1, #20]
 8000584:	4313      	orrs	r3, r2
 8000586:	6003      	str	r3, [r0, #0]
 8000588:	688b      	ldr	r3, [r1, #8]
 800058a:	62c3      	str	r3, [r0, #44]	; 0x2c
 800058c:	680b      	ldr	r3, [r1, #0]
 800058e:	6283      	str	r3, [r0, #40]	; 0x28
 8000590:	4b0b      	ldr	r3, [pc, #44]	; (80005c0 <TIM_Base_SetConfig+0xc4>)
 8000592:	4298      	cmp	r0, r3
 8000594:	d00f      	beq.n	80005b6 <TIM_Base_SetConfig+0xba>
 8000596:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800059a:	4298      	cmp	r0, r3
 800059c:	d00b      	beq.n	80005b6 <TIM_Base_SetConfig+0xba>
 800059e:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80005a2:	4298      	cmp	r0, r3
 80005a4:	d007      	beq.n	80005b6 <TIM_Base_SetConfig+0xba>
 80005a6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80005aa:	4298      	cmp	r0, r3
 80005ac:	d003      	beq.n	80005b6 <TIM_Base_SetConfig+0xba>
 80005ae:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80005b2:	4298      	cmp	r0, r3
 80005b4:	d101      	bne.n	80005ba <TIM_Base_SetConfig+0xbe>
 80005b6:	690b      	ldr	r3, [r1, #16]
 80005b8:	6303      	str	r3, [r0, #48]	; 0x30
 80005ba:	2301      	movs	r3, #1
 80005bc:	6143      	str	r3, [r0, #20]
 80005be:	4770      	bx	lr
 80005c0:	40012c00 	.word	0x40012c00

080005c4 <HAL_TIM_Base_Init>:
 80005c4:	b1a8      	cbz	r0, 80005f2 <HAL_TIM_Base_Init+0x2e>
 80005c6:	b510      	push	{r4, lr}
 80005c8:	4604      	mov	r4, r0
 80005ca:	f890 303d 	ldrb.w	r3, [r0, #61]	; 0x3d
 80005ce:	b15b      	cbz	r3, 80005e8 <HAL_TIM_Base_Init+0x24>
 80005d0:	2302      	movs	r3, #2
 80005d2:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 80005d6:	1d21      	adds	r1, r4, #4
 80005d8:	6820      	ldr	r0, [r4, #0]
 80005da:	f7ff ff8f 	bl	80004fc <TIM_Base_SetConfig>
 80005de:	2301      	movs	r3, #1
 80005e0:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 80005e4:	2000      	movs	r0, #0
 80005e6:	bd10      	pop	{r4, pc}
 80005e8:	f880 303c 	strb.w	r3, [r0, #60]	; 0x3c
 80005ec:	f000 f8f2 	bl	80007d4 <HAL_TIM_Base_MspInit>
 80005f0:	e7ee      	b.n	80005d0 <HAL_TIM_Base_Init+0xc>
 80005f2:	2001      	movs	r0, #1
 80005f4:	4770      	bx	lr
	...

080005f8 <HAL_RCC_GetSysClockFreq>:
 80005f8:	4b3b      	ldr	r3, [pc, #236]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 80005fa:	689b      	ldr	r3, [r3, #8]
 80005fc:	f013 0f0c 	tst.w	r3, #12
 8000600:	d01a      	beq.n	8000638 <HAL_RCC_GetSysClockFreq+0x40>
 8000602:	4b39      	ldr	r3, [pc, #228]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000604:	689b      	ldr	r3, [r3, #8]
 8000606:	f003 030c 	and.w	r3, r3, #12
 800060a:	2b0c      	cmp	r3, #12
 800060c:	d00e      	beq.n	800062c <HAL_RCC_GetSysClockFreq+0x34>
 800060e:	4b36      	ldr	r3, [pc, #216]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000610:	689b      	ldr	r3, [r3, #8]
 8000612:	f003 030c 	and.w	r3, r3, #12
 8000616:	2b04      	cmp	r3, #4
 8000618:	d02f      	beq.n	800067a <HAL_RCC_GetSysClockFreq+0x82>
 800061a:	4b33      	ldr	r3, [pc, #204]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 800061c:	689b      	ldr	r3, [r3, #8]
 800061e:	f003 030c 	and.w	r3, r3, #12
 8000622:	2b08      	cmp	r3, #8
 8000624:	d02c      	beq.n	8000680 <HAL_RCC_GetSysClockFreq+0x88>
 8000626:	2000      	movs	r0, #0
 8000628:	4601      	mov	r1, r0
 800062a:	e018      	b.n	800065e <HAL_RCC_GetSysClockFreq+0x66>
 800062c:	4b2e      	ldr	r3, [pc, #184]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 800062e:	68db      	ldr	r3, [r3, #12]
 8000630:	f003 0303 	and.w	r3, r3, #3
 8000634:	2b01      	cmp	r3, #1
 8000636:	d1ea      	bne.n	800060e <HAL_RCC_GetSysClockFreq+0x16>
 8000638:	4b2b      	ldr	r3, [pc, #172]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 800063a:	681b      	ldr	r3, [r3, #0]
 800063c:	f013 0f08 	tst.w	r3, #8
 8000640:	d114      	bne.n	800066c <HAL_RCC_GetSysClockFreq+0x74>
 8000642:	4b29      	ldr	r3, [pc, #164]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000644:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8000648:	f3c3 2303 	ubfx	r3, r3, #8, #4
 800064c:	4a27      	ldr	r2, [pc, #156]	; (80006ec <HAL_RCC_GetSysClockFreq+0xf4>)
 800064e:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 8000652:	4b25      	ldr	r3, [pc, #148]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000654:	689b      	ldr	r3, [r3, #8]
 8000656:	f013 0f0c 	tst.w	r3, #12
 800065a:	d00c      	beq.n	8000676 <HAL_RCC_GetSysClockFreq+0x7e>
 800065c:	2000      	movs	r0, #0
 800065e:	4a22      	ldr	r2, [pc, #136]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 8000660:	6893      	ldr	r3, [r2, #8]
 8000662:	f003 030c 	and.w	r3, r3, #12
 8000666:	2b0c      	cmp	r3, #12
 8000668:	d00d      	beq.n	8000686 <HAL_RCC_GetSysClockFreq+0x8e>
 800066a:	4770      	bx	lr
 800066c:	4b1e      	ldr	r3, [pc, #120]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 800066e:	681b      	ldr	r3, [r3, #0]
 8000670:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8000674:	e7ea      	b.n	800064c <HAL_RCC_GetSysClockFreq+0x54>
 8000676:	4608      	mov	r0, r1
 8000678:	e7f1      	b.n	800065e <HAL_RCC_GetSysClockFreq+0x66>
 800067a:	481d      	ldr	r0, [pc, #116]	; (80006f0 <HAL_RCC_GetSysClockFreq+0xf8>)
 800067c:	2100      	movs	r1, #0
 800067e:	e7ee      	b.n	800065e <HAL_RCC_GetSysClockFreq+0x66>
 8000680:	481c      	ldr	r0, [pc, #112]	; (80006f4 <HAL_RCC_GetSysClockFreq+0xfc>)
 8000682:	2100      	movs	r1, #0
 8000684:	e7eb      	b.n	800065e <HAL_RCC_GetSysClockFreq+0x66>
 8000686:	4613      	mov	r3, r2
 8000688:	68d2      	ldr	r2, [r2, #12]
 800068a:	f002 0203 	and.w	r2, r2, #3
 800068e:	68db      	ldr	r3, [r3, #12]
 8000690:	f3c3 1302 	ubfx	r3, r3, #4, #3
 8000694:	3301      	adds	r3, #1
 8000696:	2a02      	cmp	r2, #2
 8000698:	d00a      	beq.n	80006b0 <HAL_RCC_GetSysClockFreq+0xb8>
 800069a:	2a03      	cmp	r2, #3
 800069c:	d01a      	beq.n	80006d4 <HAL_RCC_GetSysClockFreq+0xdc>
 800069e:	fbb1 f3f3 	udiv	r3, r1, r3
 80006a2:	4a11      	ldr	r2, [pc, #68]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 80006a4:	68d0      	ldr	r0, [r2, #12]
 80006a6:	f3c0 2006 	ubfx	r0, r0, #8, #7
 80006aa:	fb00 f003 	mul.w	r0, r0, r3
 80006ae:	e008      	b.n	80006c2 <HAL_RCC_GetSysClockFreq+0xca>
 80006b0:	480f      	ldr	r0, [pc, #60]	; (80006f0 <HAL_RCC_GetSysClockFreq+0xf8>)
 80006b2:	fbb0 f3f3 	udiv	r3, r0, r3
 80006b6:	4a0c      	ldr	r2, [pc, #48]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 80006b8:	68d0      	ldr	r0, [r2, #12]
 80006ba:	f3c0 2006 	ubfx	r0, r0, #8, #7
 80006be:	fb00 f003 	mul.w	r0, r0, r3
 80006c2:	4b09      	ldr	r3, [pc, #36]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 80006c4:	68db      	ldr	r3, [r3, #12]
 80006c6:	f3c3 6341 	ubfx	r3, r3, #25, #2
 80006ca:	3301      	adds	r3, #1
 80006cc:	005b      	lsls	r3, r3, #1
 80006ce:	fbb0 f0f3 	udiv	r0, r0, r3
 80006d2:	e7ca      	b.n	800066a <HAL_RCC_GetSysClockFreq+0x72>
 80006d4:	4807      	ldr	r0, [pc, #28]	; (80006f4 <HAL_RCC_GetSysClockFreq+0xfc>)
 80006d6:	fbb0 f3f3 	udiv	r3, r0, r3
 80006da:	4a03      	ldr	r2, [pc, #12]	; (80006e8 <HAL_RCC_GetSysClockFreq+0xf0>)
 80006dc:	68d0      	ldr	r0, [r2, #12]
 80006de:	f3c0 2006 	ubfx	r0, r0, #8, #7
 80006e2:	fb00 f003 	mul.w	r0, r0, r3
 80006e6:	e7ec      	b.n	80006c2 <HAL_RCC_GetSysClockFreq+0xca>
 80006e8:	40021000 	.word	0x40021000
 80006ec:	08003eac 	.word	0x08003eac
 80006f0:	00f42400 	.word	0x00f42400
 80006f4:	007a1200 	.word	0x007a1200

080006f8 <HAL_RCC_GetHCLKFreq>:
 80006f8:	4b01      	ldr	r3, [pc, #4]	; (8000700 <HAL_RCC_GetHCLKFreq+0x8>)
 80006fa:	6818      	ldr	r0, [r3, #0]
 80006fc:	4770      	bx	lr
 80006fe:	bf00      	nop
 8000700:	20000000 	.word	0x20000000

08000704 <HAL_RCC_GetPCLK1Freq>:
 8000704:	b508      	push	{r3, lr}
 8000706:	f7ff fff7 	bl	80006f8 <HAL_RCC_GetHCLKFreq>
 800070a:	4b04      	ldr	r3, [pc, #16]	; (800071c <HAL_RCC_GetPCLK1Freq+0x18>)
 800070c:	689b      	ldr	r3, [r3, #8]
 800070e:	f3c3 2302 	ubfx	r3, r3, #8, #3
 8000712:	4a03      	ldr	r2, [pc, #12]	; (8000720 <HAL_RCC_GetPCLK1Freq+0x1c>)
 8000714:	5cd3      	ldrb	r3, [r2, r3]
 8000716:	40d8      	lsrs	r0, r3
 8000718:	bd08      	pop	{r3, pc}
 800071a:	bf00      	nop
 800071c:	40021000 	.word	0x40021000
 8000720:	08003ea4 	.word	0x08003ea4

08000724 <HAL_RCC_GetPCLK2Freq>:
 8000724:	b508      	push	{r3, lr}
 8000726:	f7ff ffe7 	bl	80006f8 <HAL_RCC_GetHCLKFreq>
 800072a:	4b04      	ldr	r3, [pc, #16]	; (800073c <HAL_RCC_GetPCLK2Freq+0x18>)
 800072c:	689b      	ldr	r3, [r3, #8]
 800072e:	f3c3 23c2 	ubfx	r3, r3, #11, #3
 8000732:	4a03      	ldr	r2, [pc, #12]	; (8000740 <HAL_RCC_GetPCLK2Freq+0x1c>)
 8000734:	5cd3      	ldrb	r3, [r2, r3]
 8000736:	40d8      	lsrs	r0, r3
 8000738:	bd08      	pop	{r3, pc}
 800073a:	bf00      	nop
 800073c:	40021000 	.word	0x40021000
 8000740:	08003ea4 	.word	0x08003ea4

08000744 <HAL_MspInit>:
 8000744:	b500      	push	{lr}
 8000746:	b083      	sub	sp, #12
 8000748:	4b21      	ldr	r3, [pc, #132]	; (80007d0 <HAL_MspInit+0x8c>)
 800074a:	6e1a      	ldr	r2, [r3, #96]	; 0x60
 800074c:	f042 0201 	orr.w	r2, r2, #1
 8000750:	661a      	str	r2, [r3, #96]	; 0x60
 8000752:	6e1a      	ldr	r2, [r3, #96]	; 0x60
 8000754:	f002 0201 	and.w	r2, r2, #1
 8000758:	9200      	str	r2, [sp, #0]
 800075a:	9a00      	ldr	r2, [sp, #0]
 800075c:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 800075e:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 8000762:	659a      	str	r2, [r3, #88]	; 0x58
 8000764:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000766:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 800076a:	9301      	str	r3, [sp, #4]
 800076c:	9b01      	ldr	r3, [sp, #4]
 800076e:	2003      	movs	r0, #3
 8000770:	f7ff fd96 	bl	80002a0 <HAL_NVIC_SetPriorityGrouping>
 8000774:	2200      	movs	r2, #0
 8000776:	4611      	mov	r1, r2
 8000778:	f06f 000b 	mvn.w	r0, #11
 800077c:	f7ff fda2 	bl	80002c4 <HAL_NVIC_SetPriority>
 8000780:	2200      	movs	r2, #0
 8000782:	4611      	mov	r1, r2
 8000784:	f06f 000a 	mvn.w	r0, #10
 8000788:	f7ff fd9c 	bl	80002c4 <HAL_NVIC_SetPriority>
 800078c:	2200      	movs	r2, #0
 800078e:	4611      	mov	r1, r2
 8000790:	f06f 0009 	mvn.w	r0, #9
 8000794:	f7ff fd96 	bl	80002c4 <HAL_NVIC_SetPriority>
 8000798:	2200      	movs	r2, #0
 800079a:	4611      	mov	r1, r2
 800079c:	f06f 0004 	mvn.w	r0, #4
 80007a0:	f7ff fd90 	bl	80002c4 <HAL_NVIC_SetPriority>
 80007a4:	2200      	movs	r2, #0
 80007a6:	4611      	mov	r1, r2
 80007a8:	f06f 0003 	mvn.w	r0, #3
 80007ac:	f7ff fd8a 	bl	80002c4 <HAL_NVIC_SetPriority>
 80007b0:	2200      	movs	r2, #0
 80007b2:	4611      	mov	r1, r2
 80007b4:	f06f 0001 	mvn.w	r0, #1
 80007b8:	f7ff fd84 	bl	80002c4 <HAL_NVIC_SetPriority>
 80007bc:	2200      	movs	r2, #0
 80007be:	4611      	mov	r1, r2
 80007c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80007c4:	f7ff fd7e 	bl	80002c4 <HAL_NVIC_SetPriority>
 80007c8:	b003      	add	sp, #12
 80007ca:	f85d fb04 	ldr.w	pc, [sp], #4
 80007ce:	bf00      	nop
 80007d0:	40021000 	.word	0x40021000

080007d4 <HAL_TIM_Base_MspInit>:
 80007d4:	6802      	ldr	r2, [r0, #0]
 80007d6:	4b0e      	ldr	r3, [pc, #56]	; (8000810 <HAL_TIM_Base_MspInit+0x3c>)
 80007d8:	429a      	cmp	r2, r3
 80007da:	d000      	beq.n	80007de <HAL_TIM_Base_MspInit+0xa>
 80007dc:	4770      	bx	lr
 80007de:	b500      	push	{lr}
 80007e0:	b083      	sub	sp, #12
 80007e2:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 80007e6:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 80007e8:	f042 0210 	orr.w	r2, r2, #16
 80007ec:	659a      	str	r2, [r3, #88]	; 0x58
 80007ee:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80007f0:	f003 0310 	and.w	r3, r3, #16
 80007f4:	9301      	str	r3, [sp, #4]
 80007f6:	9b01      	ldr	r3, [sp, #4]
 80007f8:	2200      	movs	r2, #0
 80007fa:	4611      	mov	r1, r2
 80007fc:	2036      	movs	r0, #54	; 0x36
 80007fe:	f7ff fd61 	bl	80002c4 <HAL_NVIC_SetPriority>
 8000802:	2036      	movs	r0, #54	; 0x36
 8000804:	f7ff fd90 	bl	8000328 <HAL_NVIC_EnableIRQ>
 8000808:	b003      	add	sp, #12
 800080a:	f85d fb04 	ldr.w	pc, [sp], #4
 800080e:	bf00      	nop
 8000810:	40001000 	.word	0x40001000

08000814 <HAL_SAI_MspInit>:
 8000814:	6802      	ldr	r2, [r0, #0]
 8000816:	4b13      	ldr	r3, [pc, #76]	; (8000864 <HAL_SAI_MspInit+0x50>)
 8000818:	429a      	cmp	r2, r3
 800081a:	d000      	beq.n	800081e <HAL_SAI_MspInit+0xa>
 800081c:	4770      	bx	lr
 800081e:	b500      	push	{lr}
 8000820:	b087      	sub	sp, #28
 8000822:	4b11      	ldr	r3, [pc, #68]	; (8000868 <HAL_SAI_MspInit+0x54>)
 8000824:	681b      	ldr	r3, [r3, #0]
 8000826:	b94b      	cbnz	r3, 800083c <HAL_SAI_MspInit+0x28>
 8000828:	4a10      	ldr	r2, [pc, #64]	; (800086c <HAL_SAI_MspInit+0x58>)
 800082a:	6e11      	ldr	r1, [r2, #96]	; 0x60
 800082c:	f441 1100 	orr.w	r1, r1, #2097152	; 0x200000
 8000830:	6611      	str	r1, [r2, #96]	; 0x60
 8000832:	6e12      	ldr	r2, [r2, #96]	; 0x60
 8000834:	f402 1200 	and.w	r2, r2, #2097152	; 0x200000
 8000838:	9200      	str	r2, [sp, #0]
 800083a:	9a00      	ldr	r2, [sp, #0]
 800083c:	3301      	adds	r3, #1
 800083e:	4a0a      	ldr	r2, [pc, #40]	; (8000868 <HAL_SAI_MspInit+0x54>)
 8000840:	6013      	str	r3, [r2, #0]
 8000842:	2378      	movs	r3, #120	; 0x78
 8000844:	9301      	str	r3, [sp, #4]
 8000846:	2302      	movs	r3, #2
 8000848:	9302      	str	r3, [sp, #8]
 800084a:	2300      	movs	r3, #0
 800084c:	9303      	str	r3, [sp, #12]
 800084e:	9304      	str	r3, [sp, #16]
 8000850:	230d      	movs	r3, #13
 8000852:	9305      	str	r3, [sp, #20]
 8000854:	a901      	add	r1, sp, #4
 8000856:	4806      	ldr	r0, [pc, #24]	; (8000870 <HAL_SAI_MspInit+0x5c>)
 8000858:	f000 fe58 	bl	800150c <HAL_GPIO_Init>
 800085c:	b007      	add	sp, #28
 800085e:	f85d fb04 	ldr.w	pc, [sp], #4
 8000862:	bf00      	nop
 8000864:	40015424 	.word	0x40015424
 8000868:	2000008c 	.word	0x2000008c
 800086c:	40021000 	.word	0x40021000
 8000870:	48000400 	.word	0x48000400

08000874 <SystemInit>:
 8000874:	490f      	ldr	r1, [pc, #60]	; (80008b4 <SystemInit+0x40>)
 8000876:	f8d1 3088 	ldr.w	r3, [r1, #136]	; 0x88
 800087a:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800087e:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 8000882:	4b0d      	ldr	r3, [pc, #52]	; (80008b8 <SystemInit+0x44>)
 8000884:	681a      	ldr	r2, [r3, #0]
 8000886:	f042 0201 	orr.w	r2, r2, #1
 800088a:	601a      	str	r2, [r3, #0]
 800088c:	2000      	movs	r0, #0
 800088e:	6098      	str	r0, [r3, #8]
 8000890:	681a      	ldr	r2, [r3, #0]
 8000892:	f022 52a8 	bic.w	r2, r2, #352321536	; 0x15000000
 8000896:	f422 2210 	bic.w	r2, r2, #589824	; 0x90000
 800089a:	601a      	str	r2, [r3, #0]
 800089c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80008a0:	60da      	str	r2, [r3, #12]
 80008a2:	681a      	ldr	r2, [r3, #0]
 80008a4:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80008a8:	601a      	str	r2, [r3, #0]
 80008aa:	6198      	str	r0, [r3, #24]
 80008ac:	f04f 6300 	mov.w	r3, #134217728	; 0x8000000
 80008b0:	608b      	str	r3, [r1, #8]
 80008b2:	4770      	bx	lr
 80008b4:	e000ed00 	.word	0xe000ed00
 80008b8:	40021000 	.word	0x40021000

080008bc <MX_GPIO_Init>:
 80008bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80008c0:	b08b      	sub	sp, #44	; 0x2c
 80008c2:	4b34      	ldr	r3, [pc, #208]	; (8000994 <MX_GPIO_Init+0xd8>)
 80008c4:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 80008c6:	f042 0204 	orr.w	r2, r2, #4
 80008ca:	64da      	str	r2, [r3, #76]	; 0x4c
 80008cc:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 80008ce:	f002 0204 	and.w	r2, r2, #4
 80008d2:	9203      	str	r2, [sp, #12]
 80008d4:	9a03      	ldr	r2, [sp, #12]
 80008d6:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 80008d8:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80008dc:	64da      	str	r2, [r3, #76]	; 0x4c
 80008de:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 80008e0:	f002 0280 	and.w	r2, r2, #128	; 0x80
 80008e4:	9202      	str	r2, [sp, #8]
 80008e6:	9a02      	ldr	r2, [sp, #8]
 80008e8:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 80008ea:	f042 0201 	orr.w	r2, r2, #1
 80008ee:	64da      	str	r2, [r3, #76]	; 0x4c
 80008f0:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 80008f2:	f002 0201 	and.w	r2, r2, #1
 80008f6:	9201      	str	r2, [sp, #4]
 80008f8:	9a01      	ldr	r2, [sp, #4]
 80008fa:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 80008fc:	f042 0202 	orr.w	r2, r2, #2
 8000900:	64da      	str	r2, [r3, #76]	; 0x4c
 8000902:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8000904:	f003 0302 	and.w	r3, r3, #2
 8000908:	9300      	str	r3, [sp, #0]
 800090a:	9b00      	ldr	r3, [sp, #0]
 800090c:	f8df b088 	ldr.w	fp, [pc, #136]	; 8000998 <MX_GPIO_Init+0xdc>
 8000910:	2503      	movs	r5, #3
 8000912:	f8cb 5028 	str.w	r5, [fp, #40]	; 0x28
 8000916:	f8df 8084 	ldr.w	r8, [pc, #132]	; 800099c <MX_GPIO_Init+0xe0>
 800091a:	f04f 0906 	mov.w	r9, #6
 800091e:	f8c8 9028 	str.w	r9, [r8, #40]	; 0x28
 8000922:	f04f 4690 	mov.w	r6, #1207959552	; 0x48000000
 8000926:	f44f 477f 	mov.w	r7, #65280	; 0xff00
 800092a:	62b7      	str	r7, [r6, #40]	; 0x28
 800092c:	f64f 7301 	movw	r3, #65281	; 0xff01
 8000930:	9304      	str	r3, [sp, #16]
 8000932:	2400      	movs	r4, #0
 8000934:	9405      	str	r4, [sp, #20]
 8000936:	9408      	str	r4, [sp, #32]
 8000938:	f8df a064 	ldr.w	sl, [pc, #100]	; 80009a0 <MX_GPIO_Init+0xe4>
 800093c:	a904      	add	r1, sp, #16
 800093e:	4650      	mov	r0, sl
 8000940:	f001 fad6 	bl	8001ef0 <LL_GPIO_Init>
 8000944:	9504      	str	r5, [sp, #16]
 8000946:	2501      	movs	r5, #1
 8000948:	9505      	str	r5, [sp, #20]
 800094a:	9406      	str	r4, [sp, #24]
 800094c:	9407      	str	r4, [sp, #28]
 800094e:	9408      	str	r4, [sp, #32]
 8000950:	a904      	add	r1, sp, #16
 8000952:	4658      	mov	r0, fp
 8000954:	f001 facc 	bl	8001ef0 <LL_GPIO_Init>
 8000958:	23fe      	movs	r3, #254	; 0xfe
 800095a:	9304      	str	r3, [sp, #16]
 800095c:	9405      	str	r4, [sp, #20]
 800095e:	9508      	str	r5, [sp, #32]
 8000960:	a904      	add	r1, sp, #16
 8000962:	4650      	mov	r0, sl
 8000964:	f001 fac4 	bl	8001ef0 <LL_GPIO_Init>
 8000968:	f8cd 9010 	str.w	r9, [sp, #16]
 800096c:	9505      	str	r5, [sp, #20]
 800096e:	9406      	str	r4, [sp, #24]
 8000970:	9407      	str	r4, [sp, #28]
 8000972:	9408      	str	r4, [sp, #32]
 8000974:	a904      	add	r1, sp, #16
 8000976:	4640      	mov	r0, r8
 8000978:	f001 faba 	bl	8001ef0 <LL_GPIO_Init>
 800097c:	9704      	str	r7, [sp, #16]
 800097e:	9505      	str	r5, [sp, #20]
 8000980:	9406      	str	r4, [sp, #24]
 8000982:	9407      	str	r4, [sp, #28]
 8000984:	9408      	str	r4, [sp, #32]
 8000986:	a904      	add	r1, sp, #16
 8000988:	4630      	mov	r0, r6
 800098a:	f001 fab1 	bl	8001ef0 <LL_GPIO_Init>
 800098e:	b00b      	add	sp, #44	; 0x2c
 8000990:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000994:	40021000 	.word	0x40021000
 8000998:	48001c00 	.word	0x48001c00
 800099c:	48000400 	.word	0x48000400
 80009a0:	48000800 	.word	0x48000800

080009a4 <MX_TIM4_Init>:
 80009a4:	b570      	push	{r4, r5, r6, lr}
 80009a6:	b094      	sub	sp, #80	; 0x50
 80009a8:	4b34      	ldr	r3, [pc, #208]	; (8000a7c <MX_TIM4_Init+0xd8>)
 80009aa:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 80009ac:	f042 0204 	orr.w	r2, r2, #4
 80009b0:	659a      	str	r2, [r3, #88]	; 0x58
 80009b2:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80009b4:	f003 0304 	and.w	r3, r3, #4
 80009b8:	9300      	str	r3, [sp, #0]
 80009ba:	9b00      	ldr	r3, [sp, #0]
 80009bc:	4b30      	ldr	r3, [pc, #192]	; (8000a80 <MX_TIM4_Init+0xdc>)
 80009be:	68db      	ldr	r3, [r3, #12]
 80009c0:	4b30      	ldr	r3, [pc, #192]	; (8000a84 <MX_TIM4_Init+0xe0>)
 80009c2:	2500      	movs	r5, #0
 80009c4:	f883 531e 	strb.w	r5, [r3, #798]	; 0x31e
 80009c8:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80009cc:	601a      	str	r2, [r3, #0]
 80009ce:	f8ad 503c 	strh.w	r5, [sp, #60]	; 0x3c
 80009d2:	9510      	str	r5, [sp, #64]	; 0x40
 80009d4:	9511      	str	r5, [sp, #68]	; 0x44
 80009d6:	9512      	str	r5, [sp, #72]	; 0x48
 80009d8:	4c2b      	ldr	r4, [pc, #172]	; (8000a88 <MX_TIM4_Init+0xe4>)
 80009da:	a90f      	add	r1, sp, #60	; 0x3c
 80009dc:	4620      	mov	r0, r4
 80009de:	f001 ff91 	bl	8002904 <LL_TIM_Init>
 80009e2:	6823      	ldr	r3, [r4, #0]
 80009e4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80009e8:	6023      	str	r3, [r4, #0]
 80009ea:	4e28      	ldr	r6, [pc, #160]	; (8000a8c <MX_TIM4_Init+0xe8>)
 80009ec:	6873      	ldr	r3, [r6, #4]
 80009ee:	f043 0308 	orr.w	r3, r3, #8
 80009f2:	6073      	str	r3, [r6, #4]
 80009f4:	2360      	movs	r3, #96	; 0x60
 80009f6:	9307      	str	r3, [sp, #28]
 80009f8:	9508      	str	r5, [sp, #32]
 80009fa:	9509      	str	r5, [sp, #36]	; 0x24
 80009fc:	f243 3333 	movw	r3, #13107	; 0x3333
 8000a00:	930a      	str	r3, [sp, #40]	; 0x28
 8000a02:	950b      	str	r5, [sp, #44]	; 0x2c
 8000a04:	aa07      	add	r2, sp, #28
 8000a06:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000a0a:	4620      	mov	r0, r4
 8000a0c:	f001 ffde 	bl	80029cc <LL_TIM_OC_Init>
 8000a10:	6873      	ldr	r3, [r6, #4]
 8000a12:	f023 0304 	bic.w	r3, r3, #4
 8000a16:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8000a1a:	6073      	str	r3, [r6, #4]
 8000a1c:	9508      	str	r5, [sp, #32]
 8000a1e:	9509      	str	r5, [sp, #36]	; 0x24
 8000a20:	aa07      	add	r2, sp, #28
 8000a22:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8000a26:	4620      	mov	r0, r4
 8000a28:	f001 ffd0 	bl	80029cc <LL_TIM_OC_Init>
 8000a2c:	6873      	ldr	r3, [r6, #4]
 8000a2e:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8000a32:	6073      	str	r3, [r6, #4]
 8000a34:	68a3      	ldr	r3, [r4, #8]
 8000a36:	f023 0308 	bic.w	r3, r3, #8
 8000a3a:	60a3      	str	r3, [r4, #8]
 8000a3c:	68a3      	ldr	r3, [r4, #8]
 8000a3e:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000a42:	60a3      	str	r3, [r4, #8]
 8000a44:	68a3      	ldr	r3, [r4, #8]
 8000a46:	f423 433f 	bic.w	r3, r3, #48896	; 0xbf00
 8000a4a:	60a3      	str	r3, [r4, #8]
 8000a4c:	6863      	ldr	r3, [r4, #4]
 8000a4e:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000a52:	6063      	str	r3, [r4, #4]
 8000a54:	68a3      	ldr	r3, [r4, #8]
 8000a56:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000a5a:	60a3      	str	r3, [r4, #8]
 8000a5c:	f44f 7340 	mov.w	r3, #768	; 0x300
 8000a60:	9301      	str	r3, [sp, #4]
 8000a62:	2302      	movs	r3, #2
 8000a64:	9302      	str	r3, [sp, #8]
 8000a66:	9503      	str	r5, [sp, #12]
 8000a68:	9504      	str	r5, [sp, #16]
 8000a6a:	9505      	str	r5, [sp, #20]
 8000a6c:	9306      	str	r3, [sp, #24]
 8000a6e:	a901      	add	r1, sp, #4
 8000a70:	4807      	ldr	r0, [pc, #28]	; (8000a90 <MX_TIM4_Init+0xec>)
 8000a72:	f001 fa3d 	bl	8001ef0 <LL_GPIO_Init>
 8000a76:	b014      	add	sp, #80	; 0x50
 8000a78:	bd70      	pop	{r4, r5, r6, pc}
 8000a7a:	bf00      	nop
 8000a7c:	40021000 	.word	0x40021000
 8000a80:	e000ed00 	.word	0xe000ed00
 8000a84:	e000e100 	.word	0xe000e100
 8000a88:	40000800 	.word	0x40000800
 8000a8c:	40000818 	.word	0x40000818
 8000a90:	48000400 	.word	0x48000400

08000a94 <MX_ADC2_Init>:
 8000a94:	b530      	push	{r4, r5, lr}
 8000a96:	b095      	sub	sp, #84	; 0x54
 8000a98:	4b3a      	ldr	r3, [pc, #232]	; (8000b84 <MX_ADC2_Init+0xf0>)
 8000a9a:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 8000a9c:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8000aa0:	64da      	str	r2, [r3, #76]	; 0x4c
 8000aa2:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8000aa4:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 8000aa8:	9300      	str	r3, [sp, #0]
 8000aaa:	9b00      	ldr	r3, [sp, #0]
 8000aac:	231c      	movs	r3, #28
 8000aae:	9301      	str	r3, [sp, #4]
 8000ab0:	2303      	movs	r3, #3
 8000ab2:	9302      	str	r3, [sp, #8]
 8000ab4:	2500      	movs	r5, #0
 8000ab6:	9505      	str	r5, [sp, #20]
 8000ab8:	a901      	add	r1, sp, #4
 8000aba:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000abe:	f001 fa17 	bl	8001ef0 <LL_GPIO_Init>
 8000ac2:	f04f 4290 	mov.w	r2, #1207959552	; 0x48000000
 8000ac6:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
 8000ac8:	f043 031c 	orr.w	r3, r3, #28
 8000acc:	62d3      	str	r3, [r2, #44]	; 0x2c
 8000ace:	4b2e      	ldr	r3, [pc, #184]	; (8000b88 <MX_ADC2_Init+0xf4>)
 8000ad0:	68db      	ldr	r3, [r3, #12]
 8000ad2:	4b2e      	ldr	r3, [pc, #184]	; (8000b8c <MX_ADC2_Init+0xf8>)
 8000ad4:	f883 5312 	strb.w	r5, [r3, #786]	; 0x312
 8000ad8:	f44f 2280 	mov.w	r2, #262144	; 0x40000
 8000adc:	601a      	str	r2, [r3, #0]
 8000ade:	9511      	str	r5, [sp, #68]	; 0x44
 8000ae0:	9512      	str	r5, [sp, #72]	; 0x48
 8000ae2:	9513      	str	r5, [sp, #76]	; 0x4c
 8000ae4:	4c2a      	ldr	r4, [pc, #168]	; (8000b90 <MX_ADC2_Init+0xfc>)
 8000ae6:	a911      	add	r1, sp, #68	; 0x44
 8000ae8:	4620      	mov	r0, r4
 8000aea:	f002 f801 	bl	8002af0 <LL_ADC_Init>
 8000aee:	950b      	str	r5, [sp, #44]	; 0x2c
 8000af0:	950c      	str	r5, [sp, #48]	; 0x30
 8000af2:	950d      	str	r5, [sp, #52]	; 0x34
 8000af4:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8000af8:	930e      	str	r3, [sp, #56]	; 0x38
 8000afa:	2301      	movs	r3, #1
 8000afc:	930f      	str	r3, [sp, #60]	; 0x3c
 8000afe:	9510      	str	r5, [sp, #64]	; 0x40
 8000b00:	a90b      	add	r1, sp, #44	; 0x2c
 8000b02:	4620      	mov	r0, r4
 8000b04:	f002 f80c 	bl	8002b20 <LL_ADC_REG_Init>
 8000b08:	6923      	ldr	r3, [r4, #16]
 8000b0a:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8000b0e:	f023 0303 	bic.w	r3, r3, #3
 8000b12:	6123      	str	r3, [r4, #16]
 8000b14:	a914      	add	r1, sp, #80	; 0x50
 8000b16:	f44f 13c0 	mov.w	r3, #1572864	; 0x180000
 8000b1a:	f841 3d34 	str.w	r3, [r1, #-52]!
 8000b1e:	481d      	ldr	r0, [pc, #116]	; (8000b94 <MX_ADC2_Init+0x100>)
 8000b20:	f001 ffb4 	bl	8002a8c <LL_ADC_CommonInit>
 8000b24:	6863      	ldr	r3, [r4, #4]
 8000b26:	f043 0304 	orr.w	r3, r3, #4
 8000b2a:	6063      	str	r3, [r4, #4]
 8000b2c:	6863      	ldr	r3, [r4, #4]
 8000b2e:	f023 0308 	bic.w	r3, r3, #8
 8000b32:	6063      	str	r3, [r4, #4]
 8000b34:	f44f 7340 	mov.w	r3, #768	; 0x300
 8000b38:	fa93 f3a3 	rbit	r3, r3
 8000b3c:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8000b3e:	f423 63f8 	bic.w	r3, r3, #1984	; 0x7c0
 8000b42:	f443 7310 	orr.w	r3, r3, #576	; 0x240
 8000b46:	6323      	str	r3, [r4, #48]	; 0x30
 8000b48:	f04f 7300 	mov.w	r3, #33554432	; 0x2000000
 8000b4c:	fa93 f3a3 	rbit	r3, r3
 8000b50:	6963      	ldr	r3, [r4, #20]
 8000b52:	f04f 72f8 	mov.w	r2, #32505856	; 0x1f00000
 8000b56:	fa92 f0a2 	rbit	r0, r2
 8000b5a:	fab0 f080 	clz	r0, r0
 8000b5e:	f04f 71d8 	mov.w	r1, #28311552	; 0x1b00000
 8000b62:	fa21 f000 	lsr.w	r0, r1, r0
 8000b66:	2107      	movs	r1, #7
 8000b68:	4081      	lsls	r1, r0
 8000b6a:	ea23 0301 	bic.w	r3, r3, r1
 8000b6e:	fa92 f2a2 	rbit	r2, r2
 8000b72:	6163      	str	r3, [r4, #20]
 8000b74:	f8d4 30b0 	ldr.w	r3, [r4, #176]	; 0xb0
 8000b78:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8000b7c:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
 8000b80:	b015      	add	sp, #84	; 0x54
 8000b82:	bd30      	pop	{r4, r5, pc}
 8000b84:	40021000 	.word	0x40021000
 8000b88:	e000ed00 	.word	0xe000ed00
 8000b8c:	e000e100 	.word	0xe000e100
 8000b90:	50040100 	.word	0x50040100
 8000b94:	50040300 	.word	0x50040300

08000b98 <MX_SPI2_Init>:
 8000b98:	b510      	push	{r4, lr}
 8000b9a:	b092      	sub	sp, #72	; 0x48
 8000b9c:	4b1c      	ldr	r3, [pc, #112]	; (8000c10 <MX_SPI2_Init+0x78>)
 8000b9e:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 8000ba0:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 8000ba4:	659a      	str	r2, [r3, #88]	; 0x58
 8000ba6:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000ba8:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8000bac:	9301      	str	r3, [sp, #4]
 8000bae:	9b01      	ldr	r3, [sp, #4]
 8000bb0:	f44f 4360 	mov.w	r3, #57344	; 0xe000
 8000bb4:	9302      	str	r3, [sp, #8]
 8000bb6:	2302      	movs	r3, #2
 8000bb8:	9303      	str	r3, [sp, #12]
 8000bba:	2303      	movs	r3, #3
 8000bbc:	9304      	str	r3, [sp, #16]
 8000bbe:	2400      	movs	r4, #0
 8000bc0:	9405      	str	r4, [sp, #20]
 8000bc2:	9406      	str	r4, [sp, #24]
 8000bc4:	2305      	movs	r3, #5
 8000bc6:	9307      	str	r3, [sp, #28]
 8000bc8:	a902      	add	r1, sp, #8
 8000bca:	4812      	ldr	r0, [pc, #72]	; (8000c14 <MX_SPI2_Init+0x7c>)
 8000bcc:	f001 f990 	bl	8001ef0 <LL_GPIO_Init>
 8000bd0:	9408      	str	r4, [sp, #32]
 8000bd2:	f44f 7382 	mov.w	r3, #260	; 0x104
 8000bd6:	9309      	str	r3, [sp, #36]	; 0x24
 8000bd8:	f44f 7340 	mov.w	r3, #768	; 0x300
 8000bdc:	930a      	str	r3, [sp, #40]	; 0x28
 8000bde:	940b      	str	r4, [sp, #44]	; 0x2c
 8000be0:	940c      	str	r4, [sp, #48]	; 0x30
 8000be2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8000be6:	930d      	str	r3, [sp, #52]	; 0x34
 8000be8:	940e      	str	r4, [sp, #56]	; 0x38
 8000bea:	940f      	str	r4, [sp, #60]	; 0x3c
 8000bec:	9410      	str	r4, [sp, #64]	; 0x40
 8000bee:	2307      	movs	r3, #7
 8000bf0:	9311      	str	r3, [sp, #68]	; 0x44
 8000bf2:	4c09      	ldr	r4, [pc, #36]	; (8000c18 <MX_SPI2_Init+0x80>)
 8000bf4:	a908      	add	r1, sp, #32
 8000bf6:	4620      	mov	r0, r4
 8000bf8:	f001 fc30 	bl	800245c <LL_SPI_Init>
 8000bfc:	6863      	ldr	r3, [r4, #4]
 8000bfe:	f023 0310 	bic.w	r3, r3, #16
 8000c02:	6063      	str	r3, [r4, #4]
 8000c04:	6863      	ldr	r3, [r4, #4]
 8000c06:	f043 0308 	orr.w	r3, r3, #8
 8000c0a:	6063      	str	r3, [r4, #4]
 8000c0c:	b012      	add	sp, #72	; 0x48
 8000c0e:	bd10      	pop	{r4, pc}
 8000c10:	40021000 	.word	0x40021000
 8000c14:	48000400 	.word	0x48000400
 8000c18:	40003800 	.word	0x40003800

08000c1c <MX_USART3_Init>:
 8000c1c:	b530      	push	{r4, r5, lr}
 8000c1e:	b093      	sub	sp, #76	; 0x4c
 8000c20:	4b22      	ldr	r3, [pc, #136]	; (8000cac <MX_USART3_Init+0x90>)
 8000c22:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 8000c24:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
 8000c28:	659a      	str	r2, [r3, #88]	; 0x58
 8000c2a:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000c2c:	f403 2380 	and.w	r3, r3, #262144	; 0x40000
 8000c30:	9300      	str	r3, [sp, #0]
 8000c32:	9b00      	ldr	r3, [sp, #0]
 8000c34:	f640 4301 	movw	r3, #3073	; 0xc01
 8000c38:	9301      	str	r3, [sp, #4]
 8000c3a:	2302      	movs	r3, #2
 8000c3c:	9302      	str	r3, [sp, #8]
 8000c3e:	2303      	movs	r3, #3
 8000c40:	9303      	str	r3, [sp, #12]
 8000c42:	2500      	movs	r5, #0
 8000c44:	9504      	str	r5, [sp, #16]
 8000c46:	9505      	str	r5, [sp, #20]
 8000c48:	2307      	movs	r3, #7
 8000c4a:	9306      	str	r3, [sp, #24]
 8000c4c:	a901      	add	r1, sp, #4
 8000c4e:	4818      	ldr	r0, [pc, #96]	; (8000cb0 <MX_USART3_Init+0x94>)
 8000c50:	f001 f94e 	bl	8001ef0 <LL_GPIO_Init>
 8000c54:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8000c58:	930b      	str	r3, [sp, #44]	; 0x2c
 8000c5a:	f04f 5380 	mov.w	r3, #268435456	; 0x10000000
 8000c5e:	930c      	str	r3, [sp, #48]	; 0x30
 8000c60:	950d      	str	r5, [sp, #52]	; 0x34
 8000c62:	950e      	str	r5, [sp, #56]	; 0x38
 8000c64:	230c      	movs	r3, #12
 8000c66:	930f      	str	r3, [sp, #60]	; 0x3c
 8000c68:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8000c6c:	9311      	str	r3, [sp, #68]	; 0x44
 8000c6e:	4c11      	ldr	r4, [pc, #68]	; (8000cb4 <MX_USART3_Init+0x98>)
 8000c70:	a90b      	add	r1, sp, #44	; 0x2c
 8000c72:	4620      	mov	r0, r4
 8000c74:	f001 fc26 	bl	80024c4 <LL_USART_Init>
 8000c78:	9508      	str	r5, [sp, #32]
 8000c7a:	9509      	str	r5, [sp, #36]	; 0x24
 8000c7c:	950a      	str	r5, [sp, #40]	; 0x28
 8000c7e:	a907      	add	r1, sp, #28
 8000c80:	4620      	mov	r0, r4
 8000c82:	f001 fc93 	bl	80025ac <LL_USART_ClockInit>
 8000c86:	6863      	ldr	r3, [r4, #4]
 8000c88:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000c8c:	6063      	str	r3, [r4, #4]
 8000c8e:	68a3      	ldr	r3, [r4, #8]
 8000c90:	f023 032a 	bic.w	r3, r3, #42	; 0x2a
 8000c94:	60a3      	str	r3, [r4, #8]
 8000c96:	6863      	ldr	r3, [r4, #4]
 8000c98:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8000c9c:	6063      	str	r3, [r4, #4]
 8000c9e:	6823      	ldr	r3, [r4, #0]
 8000ca0:	f043 0301 	orr.w	r3, r3, #1
 8000ca4:	6023      	str	r3, [r4, #0]
 8000ca6:	b013      	add	sp, #76	; 0x4c
 8000ca8:	bd30      	pop	{r4, r5, pc}
 8000caa:	bf00      	nop
 8000cac:	40021000 	.word	0x40021000
 8000cb0:	48000400 	.word	0x48000400
 8000cb4:	40004800 	.word	0x40004800

08000cb8 <MX_DAC1_Init>:
 8000cb8:	b510      	push	{r4, lr}
 8000cba:	b08e      	sub	sp, #56	; 0x38
 8000cbc:	4b17      	ldr	r3, [pc, #92]	; (8000d1c <MX_DAC1_Init+0x64>)
 8000cbe:	6d9a      	ldr	r2, [r3, #88]	; 0x58
 8000cc0:	f042 5200 	orr.w	r2, r2, #536870912	; 0x20000000
 8000cc4:	659a      	str	r2, [r3, #88]	; 0x58
 8000cc6:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000cc8:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
 8000ccc:	9301      	str	r3, [sp, #4]
 8000cce:	9b01      	ldr	r3, [sp, #4]
 8000cd0:	2320      	movs	r3, #32
 8000cd2:	9302      	str	r3, [sp, #8]
 8000cd4:	2303      	movs	r3, #3
 8000cd6:	9303      	str	r3, [sp, #12]
 8000cd8:	2400      	movs	r4, #0
 8000cda:	9406      	str	r4, [sp, #24]
 8000cdc:	a902      	add	r1, sp, #8
 8000cde:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ce2:	f001 f905 	bl	8001ef0 <LL_GPIO_Init>
 8000ce6:	4b0e      	ldr	r3, [pc, #56]	; (8000d20 <MX_DAC1_Init+0x68>)
 8000ce8:	68db      	ldr	r3, [r3, #12]
 8000cea:	4b0e      	ldr	r3, [pc, #56]	; (8000d24 <MX_DAC1_Init+0x6c>)
 8000cec:	f883 4336 	strb.w	r4, [r3, #822]	; 0x336
 8000cf0:	f44f 0280 	mov.w	r2, #4194304	; 0x400000
 8000cf4:	605a      	str	r2, [r3, #4]
 8000cf6:	2338      	movs	r3, #56	; 0x38
 8000cf8:	9308      	str	r3, [sp, #32]
 8000cfa:	9409      	str	r4, [sp, #36]	; 0x24
 8000cfc:	940b      	str	r4, [sp, #44]	; 0x2c
 8000cfe:	940c      	str	r4, [sp, #48]	; 0x30
 8000d00:	940d      	str	r4, [sp, #52]	; 0x34
 8000d02:	4c09      	ldr	r4, [pc, #36]	; (8000d28 <MX_DAC1_Init+0x70>)
 8000d04:	aa08      	add	r2, sp, #32
 8000d06:	4909      	ldr	r1, [pc, #36]	; (8000d2c <MX_DAC1_Init+0x74>)
 8000d08:	4620      	mov	r0, r4
 8000d0a:	f001 fe8b 	bl	8002a24 <LL_DAC_Init>
 8000d0e:	6823      	ldr	r3, [r4, #0]
 8000d10:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8000d14:	6023      	str	r3, [r4, #0]
 8000d16:	b00e      	add	sp, #56	; 0x38
 8000d18:	bd10      	pop	{r4, pc}
 8000d1a:	bf00      	nop
 8000d1c:	40021000 	.word	0x40021000
 8000d20:	e000ed00 	.word	0xe000ed00
 8000d24:	e000e100 	.word	0xe000e100
 8000d28:	40007400 	.word	0x40007400
 8000d2c:	15431012 	.word	0x15431012

08000d30 <_Error_Handler>:
 8000d30:	b508      	push	{r3, lr}
 8000d32:	460a      	mov	r2, r1
 8000d34:	4601      	mov	r1, r0
 8000d36:	4802      	ldr	r0, [pc, #8]	; (8000d40 <_Error_Handler+0x10>)
 8000d38:	f002 f960 	bl	8002ffc <iprintf>
 8000d3c:	bd08      	pop	{r3, pc}
 8000d3e:	bf00      	nop
 8000d40:	08003ee8 	.word	0x08003ee8

08000d44 <MX_SAI1_Init>:
 8000d44:	b508      	push	{r3, lr}
 8000d46:	480e      	ldr	r0, [pc, #56]	; (8000d80 <MX_SAI1_Init+0x3c>)
 8000d48:	4b0e      	ldr	r3, [pc, #56]	; (8000d84 <MX_SAI1_Init+0x40>)
 8000d4a:	6003      	str	r3, [r0, #0]
 8000d4c:	2100      	movs	r1, #0
 8000d4e:	6041      	str	r1, [r0, #4]
 8000d50:	6081      	str	r1, [r0, #8]
 8000d52:	6101      	str	r1, [r0, #16]
 8000d54:	6141      	str	r1, [r0, #20]
 8000d56:	6181      	str	r1, [r0, #24]
 8000d58:	f64a 4344 	movw	r3, #44100	; 0xac44
 8000d5c:	61c3      	str	r3, [r0, #28]
 8000d5e:	60c1      	str	r1, [r0, #12]
 8000d60:	6241      	str	r1, [r0, #36]	; 0x24
 8000d62:	6281      	str	r1, [r0, #40]	; 0x28
 8000d64:	62c1      	str	r1, [r0, #44]	; 0x2c
 8000d66:	2302      	movs	r3, #2
 8000d68:	460a      	mov	r2, r1
 8000d6a:	f000 fb6f 	bl	800144c <HAL_SAI_InitProtocol>
 8000d6e:	b900      	cbnz	r0, 8000d72 <MX_SAI1_Init+0x2e>
 8000d70:	bd08      	pop	{r3, pc}
 8000d72:	f44f 71ad 	mov.w	r1, #346	; 0x15a
 8000d76:	4804      	ldr	r0, [pc, #16]	; (8000d88 <MX_SAI1_Init+0x44>)
 8000d78:	f7ff ffda 	bl	8000d30 <_Error_Handler>
 8000d7c:	e7f8      	b.n	8000d70 <MX_SAI1_Init+0x2c>
 8000d7e:	bf00      	nop
 8000d80:	200177a4 	.word	0x200177a4
 8000d84:	40015424 	.word	0x40015424
 8000d88:	08003edc 	.word	0x08003edc

08000d8c <MX_TIM6_Init>:
 8000d8c:	b500      	push	{lr}
 8000d8e:	b085      	sub	sp, #20
 8000d90:	4812      	ldr	r0, [pc, #72]	; (8000ddc <MX_TIM6_Init+0x50>)
 8000d92:	4b13      	ldr	r3, [pc, #76]	; (8000de0 <MX_TIM6_Init+0x54>)
 8000d94:	6003      	str	r3, [r0, #0]
 8000d96:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000d9a:	6043      	str	r3, [r0, #4]
 8000d9c:	2300      	movs	r3, #0
 8000d9e:	6083      	str	r3, [r0, #8]
 8000da0:	2228      	movs	r2, #40	; 0x28
 8000da2:	60c2      	str	r2, [r0, #12]
 8000da4:	6183      	str	r3, [r0, #24]
 8000da6:	f7ff fc0d 	bl	80005c4 <HAL_TIM_Base_Init>
 8000daa:	b950      	cbnz	r0, 8000dc2 <MX_TIM6_Init+0x36>
 8000dac:	2300      	movs	r3, #0
 8000dae:	9301      	str	r3, [sp, #4]
 8000db0:	9303      	str	r3, [sp, #12]
 8000db2:	a901      	add	r1, sp, #4
 8000db4:	4809      	ldr	r0, [pc, #36]	; (8000ddc <MX_TIM6_Init+0x50>)
 8000db6:	f000 f925 	bl	8001004 <HAL_TIMEx_MasterConfigSynchronization>
 8000dba:	b940      	cbnz	r0, 8000dce <MX_TIM6_Init+0x42>
 8000dbc:	b005      	add	sp, #20
 8000dbe:	f85d fb04 	ldr.w	pc, [sp], #4
 8000dc2:	f44f 71ed 	mov.w	r1, #474	; 0x1da
 8000dc6:	4807      	ldr	r0, [pc, #28]	; (8000de4 <MX_TIM6_Init+0x58>)
 8000dc8:	f7ff ffb2 	bl	8000d30 <_Error_Handler>
 8000dcc:	e7ee      	b.n	8000dac <MX_TIM6_Init+0x20>
 8000dce:	f240 11e1 	movw	r1, #481	; 0x1e1
 8000dd2:	4804      	ldr	r0, [pc, #16]	; (8000de4 <MX_TIM6_Init+0x58>)
 8000dd4:	f7ff ffac 	bl	8000d30 <_Error_Handler>
 8000dd8:	e7f0      	b.n	8000dbc <MX_TIM6_Init+0x30>
 8000dda:	bf00      	nop
 8000ddc:	20017828 	.word	0x20017828
 8000de0:	40001000 	.word	0x40001000
 8000de4:	08003edc 	.word	0x08003edc

08000de8 <SystemClock_Config>:
 8000de8:	b538      	push	{r3, r4, r5, lr}
 8000dea:	4a62      	ldr	r2, [pc, #392]	; (8000f74 <SystemClock_Config+0x18c>)
 8000dec:	6813      	ldr	r3, [r2, #0]
 8000dee:	f023 0307 	bic.w	r3, r3, #7
 8000df2:	f043 0303 	orr.w	r3, r3, #3
 8000df6:	6013      	str	r3, [r2, #0]
 8000df8:	6813      	ldr	r3, [r2, #0]
 8000dfa:	f003 0307 	and.w	r3, r3, #7
 8000dfe:	2b03      	cmp	r3, #3
 8000e00:	d003      	beq.n	8000e0a <SystemClock_Config+0x22>
 8000e02:	2197      	movs	r1, #151	; 0x97
 8000e04:	485c      	ldr	r0, [pc, #368]	; (8000f78 <SystemClock_Config+0x190>)
 8000e06:	f7ff ff93 	bl	8000d30 <_Error_Handler>
 8000e0a:	4a5c      	ldr	r2, [pc, #368]	; (8000f7c <SystemClock_Config+0x194>)
 8000e0c:	6813      	ldr	r3, [r2, #0]
 8000e0e:	f423 63c0 	bic.w	r3, r3, #1536	; 0x600
 8000e12:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000e16:	6013      	str	r3, [r2, #0]
 8000e18:	f502 32d0 	add.w	r2, r2, #106496	; 0x1a000
 8000e1c:	6813      	ldr	r3, [r2, #0]
 8000e1e:	f043 0301 	orr.w	r3, r3, #1
 8000e22:	6013      	str	r3, [r2, #0]
 8000e24:	4b56      	ldr	r3, [pc, #344]	; (8000f80 <SystemClock_Config+0x198>)
 8000e26:	681b      	ldr	r3, [r3, #0]
 8000e28:	f013 0f02 	tst.w	r3, #2
 8000e2c:	d0fa      	beq.n	8000e24 <SystemClock_Config+0x3c>
 8000e2e:	4b54      	ldr	r3, [pc, #336]	; (8000f80 <SystemClock_Config+0x198>)
 8000e30:	681a      	ldr	r2, [r3, #0]
 8000e32:	f042 0208 	orr.w	r2, r2, #8
 8000e36:	601a      	str	r2, [r3, #0]
 8000e38:	681a      	ldr	r2, [r3, #0]
 8000e3a:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8000e3e:	f042 0260 	orr.w	r2, r2, #96	; 0x60
 8000e42:	601a      	str	r2, [r3, #0]
 8000e44:	685a      	ldr	r2, [r3, #4]
 8000e46:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
 8000e4a:	605a      	str	r2, [r3, #4]
 8000e4c:	68d9      	ldr	r1, [r3, #12]
 8000e4e:	4a4d      	ldr	r2, [pc, #308]	; (8000f84 <SystemClock_Config+0x19c>)
 8000e50:	400a      	ands	r2, r1
 8000e52:	f442 5220 	orr.w	r2, r2, #10240	; 0x2800
 8000e56:	f042 0201 	orr.w	r2, r2, #1
 8000e5a:	60da      	str	r2, [r3, #12]
 8000e5c:	68da      	ldr	r2, [r3, #12]
 8000e5e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8000e62:	60da      	str	r2, [r3, #12]
 8000e64:	681a      	ldr	r2, [r3, #0]
 8000e66:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8000e6a:	601a      	str	r2, [r3, #0]
 8000e6c:	4b44      	ldr	r3, [pc, #272]	; (8000f80 <SystemClock_Config+0x198>)
 8000e6e:	681b      	ldr	r3, [r3, #0]
 8000e70:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 8000e74:	d0fa      	beq.n	8000e6c <SystemClock_Config+0x84>
 8000e76:	4a42      	ldr	r2, [pc, #264]	; (8000f80 <SystemClock_Config+0x198>)
 8000e78:	68d3      	ldr	r3, [r2, #12]
 8000e7a:	f023 0373 	bic.w	r3, r3, #115	; 0x73
 8000e7e:	f043 0301 	orr.w	r3, r3, #1
 8000e82:	60d3      	str	r3, [r2, #12]
 8000e84:	6913      	ldr	r3, [r2, #16]
 8000e86:	f023 63c0 	bic.w	r3, r3, #100663296	; 0x6000000
 8000e8a:	f423 43fe 	bic.w	r3, r3, #32512	; 0x7f00
 8000e8e:	f043 63c0 	orr.w	r3, r3, #100663296	; 0x6000000
 8000e92:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 8000e96:	6113      	str	r3, [r2, #16]
 8000e98:	6913      	ldr	r3, [r2, #16]
 8000e9a:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000e9e:	6113      	str	r3, [r2, #16]
 8000ea0:	6813      	ldr	r3, [r2, #0]
 8000ea2:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 8000ea6:	6013      	str	r3, [r2, #0]
 8000ea8:	4b35      	ldr	r3, [pc, #212]	; (8000f80 <SystemClock_Config+0x198>)
 8000eaa:	681b      	ldr	r3, [r3, #0]
 8000eac:	f013 6f00 	tst.w	r3, #134217728	; 0x8000000
 8000eb0:	d0fa      	beq.n	8000ea8 <SystemClock_Config+0xc0>
 8000eb2:	4b33      	ldr	r3, [pc, #204]	; (8000f80 <SystemClock_Config+0x198>)
 8000eb4:	68da      	ldr	r2, [r3, #12]
 8000eb6:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8000eba:	f042 0201 	orr.w	r2, r2, #1
 8000ebe:	60da      	str	r2, [r3, #12]
 8000ec0:	695a      	ldr	r2, [r3, #20]
 8000ec2:	f422 321f 	bic.w	r2, r2, #162816	; 0x27c00
 8000ec6:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8000eca:	f442 52e0 	orr.w	r2, r2, #7168	; 0x1c00
 8000ece:	615a      	str	r2, [r3, #20]
 8000ed0:	695a      	ldr	r2, [r3, #20]
 8000ed2:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8000ed6:	615a      	str	r2, [r3, #20]
 8000ed8:	681a      	ldr	r2, [r3, #0]
 8000eda:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 8000ede:	601a      	str	r2, [r3, #0]
 8000ee0:	4b27      	ldr	r3, [pc, #156]	; (8000f80 <SystemClock_Config+0x198>)
 8000ee2:	681b      	ldr	r3, [r3, #0]
 8000ee4:	f013 5f00 	tst.w	r3, #536870912	; 0x20000000
 8000ee8:	d0fa      	beq.n	8000ee0 <SystemClock_Config+0xf8>
 8000eea:	4a25      	ldr	r2, [pc, #148]	; (8000f80 <SystemClock_Config+0x198>)
 8000eec:	6893      	ldr	r3, [r2, #8]
 8000eee:	f043 0303 	orr.w	r3, r3, #3
 8000ef2:	6093      	str	r3, [r2, #8]
 8000ef4:	4b22      	ldr	r3, [pc, #136]	; (8000f80 <SystemClock_Config+0x198>)
 8000ef6:	689b      	ldr	r3, [r3, #8]
 8000ef8:	f003 030c 	and.w	r3, r3, #12
 8000efc:	2b0c      	cmp	r3, #12
 8000efe:	d1f9      	bne.n	8000ef4 <SystemClock_Config+0x10c>
 8000f00:	4c1f      	ldr	r4, [pc, #124]	; (8000f80 <SystemClock_Config+0x198>)
 8000f02:	68a3      	ldr	r3, [r4, #8]
 8000f04:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8000f08:	60a3      	str	r3, [r4, #8]
 8000f0a:	68a3      	ldr	r3, [r4, #8]
 8000f0c:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 8000f10:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
 8000f14:	60a3      	str	r3, [r4, #8]
 8000f16:	68a3      	ldr	r3, [r4, #8]
 8000f18:	f423 5360 	bic.w	r3, r3, #14336	; 0x3800
 8000f1c:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
 8000f20:	60a3      	str	r3, [r4, #8]
 8000f22:	4d19      	ldr	r5, [pc, #100]	; (8000f88 <SystemClock_Config+0x1a0>)
 8000f24:	4628      	mov	r0, r5
 8000f26:	f000 ffb7 	bl	8001e98 <LL_Init1msTick>
 8000f2a:	4a18      	ldr	r2, [pc, #96]	; (8000f8c <SystemClock_Config+0x1a4>)
 8000f2c:	6813      	ldr	r3, [r2, #0]
 8000f2e:	f043 0304 	orr.w	r3, r3, #4
 8000f32:	6013      	str	r3, [r2, #0]
 8000f34:	4628      	mov	r0, r5
 8000f36:	f000 ffd5 	bl	8001ee4 <LL_SetSystemCoreClock>
 8000f3a:	f8d4 3088 	ldr.w	r3, [r4, #136]	; 0x88
 8000f3e:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 8000f42:	f8c4 3088 	str.w	r3, [r4, #136]	; 0x88
 8000f46:	f8d4 3088 	ldr.w	r3, [r4, #136]	; 0x88
 8000f4a:	f423 0340 	bic.w	r3, r3, #12582912	; 0xc00000
 8000f4e:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8000f52:	f8c4 3088 	str.w	r3, [r4, #136]	; 0x88
 8000f56:	f8d4 3088 	ldr.w	r3, [r4, #136]	; 0x88
 8000f5a:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
 8000f5e:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8000f62:	f8c4 3088 	str.w	r3, [r4, #136]	; 0x88
 8000f66:	4b0a      	ldr	r3, [pc, #40]	; (8000f90 <SystemClock_Config+0x1a8>)
 8000f68:	68da      	ldr	r2, [r3, #12]
 8000f6a:	2200      	movs	r2, #0
 8000f6c:	f883 2023 	strb.w	r2, [r3, #35]	; 0x23
 8000f70:	bd38      	pop	{r3, r4, r5, pc}
 8000f72:	bf00      	nop
 8000f74:	40022000 	.word	0x40022000
 8000f78:	08003edc 	.word	0x08003edc
 8000f7c:	40007000 	.word	0x40007000
 8000f80:	40021000 	.word	0x40021000
 8000f84:	f9ff808c 	.word	0xf9ff808c
 8000f88:	04c4b400 	.word	0x04c4b400
 8000f8c:	e000e010 	.word	0xe000e010
 8000f90:	e000ed00 	.word	0xe000ed00

08000f94 <main>:
 8000f94:	b530      	push	{r4, r5, lr}
 8000f96:	b087      	sub	sp, #28
 8000f98:	f000 f878 	bl	800108c <HAL_Init>
 8000f9c:	f7ff ff24 	bl	8000de8 <SystemClock_Config>
 8000fa0:	f7ff fc8c 	bl	80008bc <MX_GPIO_Init>
 8000fa4:	f7ff fece 	bl	8000d44 <MX_SAI1_Init>
 8000fa8:	f7ff fcfc 	bl	80009a4 <MX_TIM4_Init>
 8000fac:	f7ff fd72 	bl	8000a94 <MX_ADC2_Init>
 8000fb0:	f7ff fdf2 	bl	8000b98 <MX_SPI2_Init>
 8000fb4:	f7ff fe32 	bl	8000c1c <MX_USART3_Init>
 8000fb8:	f7ff fe7e 	bl	8000cb8 <MX_DAC1_Init>
 8000fbc:	f7ff fee6 	bl	8000d8c <MX_TIM6_Init>
 8000fc0:	f001 fe38 	bl	8002c34 <init_LCD>
 8000fc4:	f001 fec2 	bl	8002d4c <effects_init>
 8000fc8:	466c      	mov	r4, sp
 8000fca:	4d0d      	ldr	r5, [pc, #52]	; (8001000 <main+0x6c>)
 8000fcc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000fce:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000fd0:	e895 0003 	ldmia.w	r5, {r0, r1}
 8000fd4:	f844 0b04 	str.w	r0, [r4], #4
 8000fd8:	7021      	strb	r1, [r4, #0]
 8000fda:	2400      	movs	r4, #0
 8000fdc:	e006      	b.n	8000fec <main+0x58>
 8000fde:	ab06      	add	r3, sp, #24
 8000fe0:	4423      	add	r3, r4
 8000fe2:	f813 0c18 	ldrb.w	r0, [r3, #-24]
 8000fe6:	f001 fdcb 	bl	8002b80 <LCD_write_data>
 8000fea:	3401      	adds	r4, #1
 8000fec:	2c13      	cmp	r4, #19
 8000fee:	d9f6      	bls.n	8000fde <main+0x4a>
 8000ff0:	2305      	movs	r3, #5
 8000ff2:	4622      	mov	r2, r4
 8000ff4:	210f      	movs	r1, #15
 8000ff6:	2001      	movs	r0, #1
 8000ff8:	f001 fe66 	bl	8002cc8 <LCD_write_integer>
 8000ffc:	e7f8      	b.n	8000ff0 <main+0x5c>
 8000ffe:	bf00      	nop
 8001000:	08003ef0 	.word	0x08003ef0

08001004 <HAL_TIMEx_MasterConfigSynchronization>:
 8001004:	f890 303c 	ldrb.w	r3, [r0, #60]	; 0x3c
 8001008:	2b01      	cmp	r3, #1
 800100a:	d023      	beq.n	8001054 <HAL_TIMEx_MasterConfigSynchronization+0x50>
 800100c:	b430      	push	{r4, r5}
 800100e:	2301      	movs	r3, #1
 8001010:	f880 303c 	strb.w	r3, [r0, #60]	; 0x3c
 8001014:	6804      	ldr	r4, [r0, #0]
 8001016:	6863      	ldr	r3, [r4, #4]
 8001018:	68a2      	ldr	r2, [r4, #8]
 800101a:	4d0f      	ldr	r5, [pc, #60]	; (8001058 <HAL_TIMEx_MasterConfigSynchronization+0x54>)
 800101c:	42ac      	cmp	r4, r5
 800101e:	d014      	beq.n	800104a <HAL_TIMEx_MasterConfigSynchronization+0x46>
 8001020:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001024:	42ac      	cmp	r4, r5
 8001026:	d010      	beq.n	800104a <HAL_TIMEx_MasterConfigSynchronization+0x46>
 8001028:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800102c:	680d      	ldr	r5, [r1, #0]
 800102e:	432b      	orrs	r3, r5
 8001030:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8001034:	6889      	ldr	r1, [r1, #8]
 8001036:	430a      	orrs	r2, r1
 8001038:	6063      	str	r3, [r4, #4]
 800103a:	6803      	ldr	r3, [r0, #0]
 800103c:	609a      	str	r2, [r3, #8]
 800103e:	2300      	movs	r3, #0
 8001040:	f880 303c 	strb.w	r3, [r0, #60]	; 0x3c
 8001044:	4618      	mov	r0, r3
 8001046:	bc30      	pop	{r4, r5}
 8001048:	4770      	bx	lr
 800104a:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800104e:	684d      	ldr	r5, [r1, #4]
 8001050:	432b      	orrs	r3, r5
 8001052:	e7e9      	b.n	8001028 <HAL_TIMEx_MasterConfigSynchronization+0x24>
 8001054:	2002      	movs	r0, #2
 8001056:	4770      	bx	lr
 8001058:	40012c00 	.word	0x40012c00

0800105c <HAL_TIMEx_CommutationCallback>:
 800105c:	4770      	bx	lr

0800105e <HAL_TIMEx_BreakCallback>:
 800105e:	4770      	bx	lr

08001060 <HAL_InitTick>:
 8001060:	b510      	push	{r4, lr}
 8001062:	4604      	mov	r4, r0
 8001064:	4b07      	ldr	r3, [pc, #28]	; (8001084 <HAL_InitTick+0x24>)
 8001066:	6818      	ldr	r0, [r3, #0]
 8001068:	4b07      	ldr	r3, [pc, #28]	; (8001088 <HAL_InitTick+0x28>)
 800106a:	fba3 3000 	umull	r3, r0, r3, r0
 800106e:	0980      	lsrs	r0, r0, #6
 8001070:	f7ff f966 	bl	8000340 <HAL_SYSTICK_Config>
 8001074:	2200      	movs	r2, #0
 8001076:	4621      	mov	r1, r4
 8001078:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800107c:	f7ff f922 	bl	80002c4 <HAL_NVIC_SetPriority>
 8001080:	2000      	movs	r0, #0
 8001082:	bd10      	pop	{r4, pc}
 8001084:	20000000 	.word	0x20000000
 8001088:	10624dd3 	.word	0x10624dd3

0800108c <HAL_Init>:
 800108c:	b508      	push	{r3, lr}
 800108e:	2003      	movs	r0, #3
 8001090:	f7ff f906 	bl	80002a0 <HAL_NVIC_SetPriorityGrouping>
 8001094:	2000      	movs	r0, #0
 8001096:	f7ff ffe3 	bl	8001060 <HAL_InitTick>
 800109a:	f7ff fb53 	bl	8000744 <HAL_MspInit>
 800109e:	2000      	movs	r0, #0
 80010a0:	bd08      	pop	{r3, pc}
	...

080010a4 <HAL_IncTick>:
 80010a4:	4a02      	ldr	r2, [pc, #8]	; (80010b0 <HAL_IncTick+0xc>)
 80010a6:	6813      	ldr	r3, [r2, #0]
 80010a8:	3301      	adds	r3, #1
 80010aa:	6013      	str	r3, [r2, #0]
 80010ac:	4770      	bx	lr
 80010ae:	bf00      	nop
 80010b0:	20017868 	.word	0x20017868

080010b4 <HAL_GetTick>:
 80010b4:	4b01      	ldr	r3, [pc, #4]	; (80010bc <HAL_GetTick+0x8>)
 80010b6:	6818      	ldr	r0, [r3, #0]
 80010b8:	4770      	bx	lr
 80010ba:	bf00      	nop
 80010bc:	20017868 	.word	0x20017868

080010c0 <SAI_InitI2S>:
 80010c0:	b430      	push	{r4, r5}
 80010c2:	2400      	movs	r4, #0
 80010c4:	6304      	str	r4, [r0, #48]	; 0x30
 80010c6:	6384      	str	r4, [r0, #56]	; 0x38
 80010c8:	6844      	ldr	r4, [r0, #4]
 80010ca:	b124      	cbz	r4, 80010d6 <SAI_InitI2S+0x16>
 80010cc:	2c02      	cmp	r4, #2
 80010ce:	d002      	beq.n	80010d6 <SAI_InitI2S+0x16>
 80010d0:	2401      	movs	r4, #1
 80010d2:	63c4      	str	r4, [r0, #60]	; 0x3c
 80010d4:	e001      	b.n	80010da <SAI_InitI2S+0x1a>
 80010d6:	2400      	movs	r4, #0
 80010d8:	63c4      	str	r4, [r0, #60]	; 0x3c
 80010da:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 80010de:	6484      	str	r4, [r0, #72]	; 0x48
 80010e0:	f64f 74ff 	movw	r4, #65535	; 0xffff
 80010e4:	6604      	str	r4, [r0, #96]	; 0x60
 80010e6:	2400      	movs	r4, #0
 80010e8:	6544      	str	r4, [r0, #84]	; 0x54
 80010ea:	65c3      	str	r3, [r0, #92]	; 0x5c
 80010ec:	f013 0f01 	tst.w	r3, #1
 80010f0:	d14a      	bne.n	8001188 <SAI_InitI2S+0xc8>
 80010f2:	b139      	cbz	r1, 8001104 <SAI_InitI2S+0x44>
 80010f4:	2902      	cmp	r1, #2
 80010f6:	d84a      	bhi.n	800118e <SAI_InitI2S+0xce>
 80010f8:	f44f 3400 	mov.w	r4, #131072	; 0x20000
 80010fc:	64c4      	str	r4, [r0, #76]	; 0x4c
 80010fe:	2400      	movs	r4, #0
 8001100:	6504      	str	r4, [r0, #80]	; 0x50
 8001102:	e004      	b.n	800110e <SAI_InitI2S+0x4e>
 8001104:	2400      	movs	r4, #0
 8001106:	64c4      	str	r4, [r0, #76]	; 0x4c
 8001108:	f44f 2480 	mov.w	r4, #262144	; 0x40000
 800110c:	6504      	str	r4, [r0, #80]	; 0x50
 800110e:	2a03      	cmp	r2, #3
 8001110:	d83f      	bhi.n	8001192 <SAI_InitI2S+0xd2>
 8001112:	e8df f002 	tbb	[pc, r2]
 8001116:	0f02      	.short	0x0f02
 8001118:	2218      	.short	0x2218
 800111a:	2480      	movs	r4, #128	; 0x80
 800111c:	6344      	str	r4, [r0, #52]	; 0x34
 800111e:	085b      	lsrs	r3, r3, #1
 8001120:	015c      	lsls	r4, r3, #5
 8001122:	6404      	str	r4, [r0, #64]	; 0x40
 8001124:	011b      	lsls	r3, r3, #4
 8001126:	6443      	str	r3, [r0, #68]	; 0x44
 8001128:	2340      	movs	r3, #64	; 0x40
 800112a:	6583      	str	r3, [r0, #88]	; 0x58
 800112c:	2902      	cmp	r1, #2
 800112e:	d01e      	beq.n	800116e <SAI_InitI2S+0xae>
 8001130:	2000      	movs	r0, #0
 8001132:	e02a      	b.n	800118a <SAI_InitI2S+0xca>
 8001134:	2480      	movs	r4, #128	; 0x80
 8001136:	6344      	str	r4, [r0, #52]	; 0x34
 8001138:	085b      	lsrs	r3, r3, #1
 800113a:	019d      	lsls	r5, r3, #6
 800113c:	6405      	str	r5, [r0, #64]	; 0x40
 800113e:	015b      	lsls	r3, r3, #5
 8001140:	6443      	str	r3, [r0, #68]	; 0x44
 8001142:	6584      	str	r4, [r0, #88]	; 0x58
 8001144:	e7f2      	b.n	800112c <SAI_InitI2S+0x6c>
 8001146:	24c0      	movs	r4, #192	; 0xc0
 8001148:	6344      	str	r4, [r0, #52]	; 0x34
 800114a:	085b      	lsrs	r3, r3, #1
 800114c:	019c      	lsls	r4, r3, #6
 800114e:	6404      	str	r4, [r0, #64]	; 0x40
 8001150:	015b      	lsls	r3, r3, #5
 8001152:	6443      	str	r3, [r0, #68]	; 0x44
 8001154:	2380      	movs	r3, #128	; 0x80
 8001156:	6583      	str	r3, [r0, #88]	; 0x58
 8001158:	e7e8      	b.n	800112c <SAI_InitI2S+0x6c>
 800115a:	24e0      	movs	r4, #224	; 0xe0
 800115c:	6344      	str	r4, [r0, #52]	; 0x34
 800115e:	085b      	lsrs	r3, r3, #1
 8001160:	019c      	lsls	r4, r3, #6
 8001162:	6404      	str	r4, [r0, #64]	; 0x40
 8001164:	015b      	lsls	r3, r3, #5
 8001166:	6443      	str	r3, [r0, #68]	; 0x44
 8001168:	2380      	movs	r3, #128	; 0x80
 800116a:	6583      	str	r3, [r0, #88]	; 0x58
 800116c:	e7de      	b.n	800112c <SAI_InitI2S+0x6c>
 800116e:	2a01      	cmp	r2, #1
 8001170:	d003      	beq.n	800117a <SAI_InitI2S+0xba>
 8001172:	2a02      	cmp	r2, #2
 8001174:	d004      	beq.n	8001180 <SAI_InitI2S+0xc0>
 8001176:	2000      	movs	r0, #0
 8001178:	e007      	b.n	800118a <SAI_InitI2S+0xca>
 800117a:	2310      	movs	r3, #16
 800117c:	6543      	str	r3, [r0, #84]	; 0x54
 800117e:	e7f8      	b.n	8001172 <SAI_InitI2S+0xb2>
 8001180:	2308      	movs	r3, #8
 8001182:	6543      	str	r3, [r0, #84]	; 0x54
 8001184:	2000      	movs	r0, #0
 8001186:	e000      	b.n	800118a <SAI_InitI2S+0xca>
 8001188:	2001      	movs	r0, #1
 800118a:	bc30      	pop	{r4, r5}
 800118c:	4770      	bx	lr
 800118e:	2001      	movs	r0, #1
 8001190:	e7fb      	b.n	800118a <SAI_InitI2S+0xca>
 8001192:	2001      	movs	r0, #1
 8001194:	e7f9      	b.n	800118a <SAI_InitI2S+0xca>

08001196 <SAI_InitPCM>:
 8001196:	b430      	push	{r4, r5}
 8001198:	2400      	movs	r4, #0
 800119a:	6304      	str	r4, [r0, #48]	; 0x30
 800119c:	6384      	str	r4, [r0, #56]	; 0x38
 800119e:	6844      	ldr	r4, [r0, #4]
 80011a0:	b124      	cbz	r4, 80011ac <SAI_InitPCM+0x16>
 80011a2:	2c02      	cmp	r4, #2
 80011a4:	d002      	beq.n	80011ac <SAI_InitPCM+0x16>
 80011a6:	2400      	movs	r4, #0
 80011a8:	63c4      	str	r4, [r0, #60]	; 0x3c
 80011aa:	e001      	b.n	80011b0 <SAI_InitPCM+0x1a>
 80011ac:	2401      	movs	r4, #1
 80011ae:	63c4      	str	r4, [r0, #60]	; 0x3c
 80011b0:	2400      	movs	r4, #0
 80011b2:	6484      	str	r4, [r0, #72]	; 0x48
 80011b4:	f44f 3500 	mov.w	r5, #131072	; 0x20000
 80011b8:	64c5      	str	r5, [r0, #76]	; 0x4c
 80011ba:	f44f 2580 	mov.w	r5, #262144	; 0x40000
 80011be:	6505      	str	r5, [r0, #80]	; 0x50
 80011c0:	6544      	str	r4, [r0, #84]	; 0x54
 80011c2:	65c3      	str	r3, [r0, #92]	; 0x5c
 80011c4:	f64f 74ff 	movw	r4, #65535	; 0xffff
 80011c8:	6604      	str	r4, [r0, #96]	; 0x60
 80011ca:	2903      	cmp	r1, #3
 80011cc:	d009      	beq.n	80011e2 <SAI_InitPCM+0x4c>
 80011ce:	2904      	cmp	r1, #4
 80011d0:	d129      	bne.n	8001226 <SAI_InitPCM+0x90>
 80011d2:	2101      	movs	r1, #1
 80011d4:	6441      	str	r1, [r0, #68]	; 0x44
 80011d6:	2a03      	cmp	r2, #3
 80011d8:	d828      	bhi.n	800122c <SAI_InitPCM+0x96>
 80011da:	e8df f002 	tbb	[pc, r2]
 80011de:	0d05      	.short	0x0d05
 80011e0:	1c14      	.short	0x1c14
 80011e2:	210d      	movs	r1, #13
 80011e4:	6441      	str	r1, [r0, #68]	; 0x44
 80011e6:	e7f6      	b.n	80011d6 <SAI_InitPCM+0x40>
 80011e8:	2280      	movs	r2, #128	; 0x80
 80011ea:	6342      	str	r2, [r0, #52]	; 0x34
 80011ec:	011b      	lsls	r3, r3, #4
 80011ee:	6403      	str	r3, [r0, #64]	; 0x40
 80011f0:	2340      	movs	r3, #64	; 0x40
 80011f2:	6583      	str	r3, [r0, #88]	; 0x58
 80011f4:	2000      	movs	r0, #0
 80011f6:	e017      	b.n	8001228 <SAI_InitPCM+0x92>
 80011f8:	2280      	movs	r2, #128	; 0x80
 80011fa:	6342      	str	r2, [r0, #52]	; 0x34
 80011fc:	015b      	lsls	r3, r3, #5
 80011fe:	6403      	str	r3, [r0, #64]	; 0x40
 8001200:	6582      	str	r2, [r0, #88]	; 0x58
 8001202:	2000      	movs	r0, #0
 8001204:	e010      	b.n	8001228 <SAI_InitPCM+0x92>
 8001206:	22c0      	movs	r2, #192	; 0xc0
 8001208:	6342      	str	r2, [r0, #52]	; 0x34
 800120a:	015b      	lsls	r3, r3, #5
 800120c:	6403      	str	r3, [r0, #64]	; 0x40
 800120e:	2380      	movs	r3, #128	; 0x80
 8001210:	6583      	str	r3, [r0, #88]	; 0x58
 8001212:	2000      	movs	r0, #0
 8001214:	e008      	b.n	8001228 <SAI_InitPCM+0x92>
 8001216:	22e0      	movs	r2, #224	; 0xe0
 8001218:	6342      	str	r2, [r0, #52]	; 0x34
 800121a:	015b      	lsls	r3, r3, #5
 800121c:	6403      	str	r3, [r0, #64]	; 0x40
 800121e:	2380      	movs	r3, #128	; 0x80
 8001220:	6583      	str	r3, [r0, #88]	; 0x58
 8001222:	2000      	movs	r0, #0
 8001224:	e000      	b.n	8001228 <SAI_InitPCM+0x92>
 8001226:	2001      	movs	r0, #1
 8001228:	bc30      	pop	{r4, r5}
 800122a:	4770      	bx	lr
 800122c:	2001      	movs	r0, #1
 800122e:	e7fb      	b.n	8001228 <SAI_InitPCM+0x92>

08001230 <SAI_Disable>:
 8001230:	b538      	push	{r3, r4, r5, lr}
 8001232:	4604      	mov	r4, r0
 8001234:	f7ff ff3e 	bl	80010b4 <HAL_GetTick>
 8001238:	4605      	mov	r5, r0
 800123a:	6822      	ldr	r2, [r4, #0]
 800123c:	6813      	ldr	r3, [r2, #0]
 800123e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001242:	6013      	str	r3, [r2, #0]
 8001244:	6823      	ldr	r3, [r4, #0]
 8001246:	681b      	ldr	r3, [r3, #0]
 8001248:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 800124c:	d00c      	beq.n	8001268 <SAI_Disable+0x38>
 800124e:	f7ff ff31 	bl	80010b4 <HAL_GetTick>
 8001252:	1b40      	subs	r0, r0, r5
 8001254:	2804      	cmp	r0, #4
 8001256:	d9f5      	bls.n	8001244 <SAI_Disable+0x14>
 8001258:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
 800125c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001260:	f8c4 3080 	str.w	r3, [r4, #128]	; 0x80
 8001264:	2003      	movs	r0, #3
 8001266:	bd38      	pop	{r3, r4, r5, pc}
 8001268:	2000      	movs	r0, #0
 800126a:	bd38      	pop	{r3, r4, r5, pc}

0800126c <HAL_SAI_Init>:
 800126c:	2800      	cmp	r0, #0
 800126e:	f000 80dd 	beq.w	800142c <HAL_SAI_Init+0x1c0>
 8001272:	b570      	push	{r4, r5, r6, lr}
 8001274:	4604      	mov	r4, r0
 8001276:	f890 307d 	ldrb.w	r3, [r0, #125]	; 0x7d
 800127a:	2b00      	cmp	r3, #0
 800127c:	d04b      	beq.n	8001316 <HAL_SAI_Init+0xaa>
 800127e:	2302      	movs	r3, #2
 8001280:	f884 307d 	strb.w	r3, [r4, #125]	; 0x7d
 8001284:	4620      	mov	r0, r4
 8001286:	f7ff ffd3 	bl	8001230 <SAI_Disable>
 800128a:	68e3      	ldr	r3, [r4, #12]
 800128c:	2b01      	cmp	r3, #1
 800128e:	d049      	beq.n	8001324 <HAL_SAI_Init+0xb8>
 8001290:	2b02      	cmp	r3, #2
 8001292:	d045      	beq.n	8001320 <HAL_SAI_Init+0xb4>
 8001294:	2200      	movs	r2, #0
 8001296:	68a3      	ldr	r3, [r4, #8]
 8001298:	2b02      	cmp	r3, #2
 800129a:	d045      	beq.n	8001328 <HAL_SAI_Init+0xbc>
 800129c:	2b03      	cmp	r3, #3
 800129e:	d046      	beq.n	800132e <HAL_SAI_Init+0xc2>
 80012a0:	2b01      	cmp	r3, #1
 80012a2:	d049      	beq.n	8001338 <HAL_SAI_Init+0xcc>
 80012a4:	2500      	movs	r5, #0
 80012a6:	6823      	ldr	r3, [r4, #0]
 80012a8:	4961      	ldr	r1, [pc, #388]	; (8001430 <HAL_SAI_Init+0x1c4>)
 80012aa:	428b      	cmp	r3, r1
 80012ac:	d047      	beq.n	800133e <HAL_SAI_Init+0xd2>
 80012ae:	3120      	adds	r1, #32
 80012b0:	428b      	cmp	r3, r1
 80012b2:	d044      	beq.n	800133e <HAL_SAI_Init+0xd2>
 80012b4:	4b5f      	ldr	r3, [pc, #380]	; (8001434 <HAL_SAI_Init+0x1c8>)
 80012b6:	601a      	str	r2, [r3, #0]
 80012b8:	69e3      	ldr	r3, [r4, #28]
 80012ba:	b313      	cbz	r3, 8001302 <HAL_SAI_Init+0x96>
 80012bc:	6823      	ldr	r3, [r4, #0]
 80012be:	4a5c      	ldr	r2, [pc, #368]	; (8001430 <HAL_SAI_Init+0x1c4>)
 80012c0:	4293      	cmp	r3, r2
 80012c2:	d03f      	beq.n	8001344 <HAL_SAI_Init+0xd8>
 80012c4:	3220      	adds	r2, #32
 80012c6:	4293      	cmp	r3, r2
 80012c8:	d03c      	beq.n	8001344 <HAL_SAI_Init+0xd8>
 80012ca:	2000      	movs	r0, #0
 80012cc:	6823      	ldr	r3, [r4, #0]
 80012ce:	4a5a      	ldr	r2, [pc, #360]	; (8001438 <HAL_SAI_Init+0x1cc>)
 80012d0:	4293      	cmp	r3, r2
 80012d2:	d03c      	beq.n	800134e <HAL_SAI_Init+0xe2>
 80012d4:	3220      	adds	r2, #32
 80012d6:	4293      	cmp	r3, r2
 80012d8:	d039      	beq.n	800134e <HAL_SAI_Init+0xe2>
 80012da:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 80012de:	0041      	lsls	r1, r0, #1
 80012e0:	69e3      	ldr	r3, [r4, #28]
 80012e2:	025b      	lsls	r3, r3, #9
 80012e4:	fbb1 f1f3 	udiv	r1, r1, r3
 80012e8:	4b54      	ldr	r3, [pc, #336]	; (800143c <HAL_SAI_Init+0x1d0>)
 80012ea:	fba3 2301 	umull	r2, r3, r3, r1
 80012ee:	08db      	lsrs	r3, r3, #3
 80012f0:	6223      	str	r3, [r4, #32]
 80012f2:	eb03 0083 	add.w	r0, r3, r3, lsl #2
 80012f6:	0042      	lsls	r2, r0, #1
 80012f8:	1a8a      	subs	r2, r1, r2
 80012fa:	2a08      	cmp	r2, #8
 80012fc:	d901      	bls.n	8001302 <HAL_SAI_Init+0x96>
 80012fe:	3301      	adds	r3, #1
 8001300:	6223      	str	r3, [r4, #32]
 8001302:	6863      	ldr	r3, [r4, #4]
 8001304:	b343      	cbz	r3, 8001358 <HAL_SAI_Init+0xec>
 8001306:	2b02      	cmp	r3, #2
 8001308:	d026      	beq.n	8001358 <HAL_SAI_Init+0xec>
 800130a:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 800130c:	2b01      	cmp	r3, #1
 800130e:	f000 808a 	beq.w	8001426 <HAL_SAI_Init+0x1ba>
 8001312:	2300      	movs	r3, #0
 8001314:	e025      	b.n	8001362 <HAL_SAI_Init+0xf6>
 8001316:	f880 307c 	strb.w	r3, [r0, #124]	; 0x7c
 800131a:	f7ff fa7b 	bl	8000814 <HAL_SAI_MspInit>
 800131e:	e7ae      	b.n	800127e <HAL_SAI_Init+0x12>
 8001320:	2220      	movs	r2, #32
 8001322:	e7b8      	b.n	8001296 <HAL_SAI_Init+0x2a>
 8001324:	2210      	movs	r2, #16
 8001326:	e7b6      	b.n	8001296 <HAL_SAI_Init+0x2a>
 8001328:	f44f 6500 	mov.w	r5, #2048	; 0x800
 800132c:	e7bb      	b.n	80012a6 <HAL_SAI_Init+0x3a>
 800132e:	f042 0201 	orr.w	r2, r2, #1
 8001332:	f44f 6500 	mov.w	r5, #2048	; 0x800
 8001336:	e7b6      	b.n	80012a6 <HAL_SAI_Init+0x3a>
 8001338:	f44f 6580 	mov.w	r5, #1024	; 0x400
 800133c:	e7b3      	b.n	80012a6 <HAL_SAI_Init+0x3a>
 800133e:	4b40      	ldr	r3, [pc, #256]	; (8001440 <HAL_SAI_Init+0x1d4>)
 8001340:	601a      	str	r2, [r3, #0]
 8001342:	e7b9      	b.n	80012b8 <HAL_SAI_Init+0x4c>
 8001344:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8001348:	f000 f9ca 	bl	80016e0 <HAL_RCCEx_GetPeriphCLKFreq>
 800134c:	e7be      	b.n	80012cc <HAL_SAI_Init+0x60>
 800134e:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 8001352:	f000 f9c5 	bl	80016e0 <HAL_RCCEx_GetPeriphCLKFreq>
 8001356:	e7c0      	b.n	80012da <HAL_SAI_Init+0x6e>
 8001358:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 800135a:	2b01      	cmp	r3, #1
 800135c:	d061      	beq.n	8001422 <HAL_SAI_Init+0x1b6>
 800135e:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001362:	6822      	ldr	r2, [r4, #0]
 8001364:	6810      	ldr	r0, [r2, #0]
 8001366:	4937      	ldr	r1, [pc, #220]	; (8001444 <HAL_SAI_Init+0x1d8>)
 8001368:	4001      	ands	r1, r0
 800136a:	6011      	str	r1, [r2, #0]
 800136c:	6820      	ldr	r0, [r4, #0]
 800136e:	6801      	ldr	r1, [r0, #0]
 8001370:	6862      	ldr	r2, [r4, #4]
 8001372:	6b26      	ldr	r6, [r4, #48]	; 0x30
 8001374:	4332      	orrs	r2, r6
 8001376:	6b66      	ldr	r6, [r4, #52]	; 0x34
 8001378:	4332      	orrs	r2, r6
 800137a:	6ba6      	ldr	r6, [r4, #56]	; 0x38
 800137c:	4332      	orrs	r2, r6
 800137e:	4313      	orrs	r3, r2
 8001380:	432b      	orrs	r3, r5
 8001382:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8001384:	432b      	orrs	r3, r5
 8001386:	6925      	ldr	r5, [r4, #16]
 8001388:	432b      	orrs	r3, r5
 800138a:	6965      	ldr	r5, [r4, #20]
 800138c:	432b      	orrs	r3, r5
 800138e:	6a22      	ldr	r2, [r4, #32]
 8001390:	ea43 5302 	orr.w	r3, r3, r2, lsl #20
 8001394:	430b      	orrs	r3, r1
 8001396:	6003      	str	r3, [r0, #0]
 8001398:	6822      	ldr	r2, [r4, #0]
 800139a:	6853      	ldr	r3, [r2, #4]
 800139c:	f423 4360 	bic.w	r3, r3, #57344	; 0xe000
 80013a0:	f023 030f 	bic.w	r3, r3, #15
 80013a4:	6053      	str	r3, [r2, #4]
 80013a6:	6821      	ldr	r1, [r4, #0]
 80013a8:	684a      	ldr	r2, [r1, #4]
 80013aa:	69a3      	ldr	r3, [r4, #24]
 80013ac:	6aa0      	ldr	r0, [r4, #40]	; 0x28
 80013ae:	4303      	orrs	r3, r0
 80013b0:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 80013b2:	4303      	orrs	r3, r0
 80013b4:	4313      	orrs	r3, r2
 80013b6:	604b      	str	r3, [r1, #4]
 80013b8:	6822      	ldr	r2, [r4, #0]
 80013ba:	6891      	ldr	r1, [r2, #8]
 80013bc:	4b22      	ldr	r3, [pc, #136]	; (8001448 <HAL_SAI_Init+0x1dc>)
 80013be:	400b      	ands	r3, r1
 80013c0:	6093      	str	r3, [r2, #8]
 80013c2:	6820      	ldr	r0, [r4, #0]
 80013c4:	6882      	ldr	r2, [r0, #8]
 80013c6:	6c23      	ldr	r3, [r4, #64]	; 0x40
 80013c8:	3b01      	subs	r3, #1
 80013ca:	6d21      	ldr	r1, [r4, #80]	; 0x50
 80013cc:	430b      	orrs	r3, r1
 80013ce:	6ca1      	ldr	r1, [r4, #72]	; 0x48
 80013d0:	430b      	orrs	r3, r1
 80013d2:	6ce1      	ldr	r1, [r4, #76]	; 0x4c
 80013d4:	430b      	orrs	r3, r1
 80013d6:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80013d8:	3901      	subs	r1, #1
 80013da:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80013de:	4313      	orrs	r3, r2
 80013e0:	6083      	str	r3, [r0, #8]
 80013e2:	6822      	ldr	r2, [r4, #0]
 80013e4:	68d3      	ldr	r3, [r2, #12]
 80013e6:	f423 637d 	bic.w	r3, r3, #4048	; 0xfd0
 80013ea:	f023 030f 	bic.w	r3, r3, #15
 80013ee:	041b      	lsls	r3, r3, #16
 80013f0:	0c1b      	lsrs	r3, r3, #16
 80013f2:	60d3      	str	r3, [r2, #12]
 80013f4:	6820      	ldr	r0, [r4, #0]
 80013f6:	68c2      	ldr	r2, [r0, #12]
 80013f8:	6d63      	ldr	r3, [r4, #84]	; 0x54
 80013fa:	6da1      	ldr	r1, [r4, #88]	; 0x58
 80013fc:	430b      	orrs	r3, r1
 80013fe:	6e21      	ldr	r1, [r4, #96]	; 0x60
 8001400:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8001404:	6de1      	ldr	r1, [r4, #92]	; 0x5c
 8001406:	3901      	subs	r1, #1
 8001408:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800140c:	4313      	orrs	r3, r2
 800140e:	60c3      	str	r3, [r0, #12]
 8001410:	2000      	movs	r0, #0
 8001412:	f8c4 0080 	str.w	r0, [r4, #128]	; 0x80
 8001416:	2301      	movs	r3, #1
 8001418:	f884 307d 	strb.w	r3, [r4, #125]	; 0x7d
 800141c:	f884 007c 	strb.w	r0, [r4, #124]	; 0x7c
 8001420:	bd70      	pop	{r4, r5, r6, pc}
 8001422:	2300      	movs	r3, #0
 8001424:	e79d      	b.n	8001362 <HAL_SAI_Init+0xf6>
 8001426:	f44f 7300 	mov.w	r3, #512	; 0x200
 800142a:	e79a      	b.n	8001362 <HAL_SAI_Init+0xf6>
 800142c:	2001      	movs	r0, #1
 800142e:	4770      	bx	lr
 8001430:	40015404 	.word	0x40015404
 8001434:	40015800 	.word	0x40015800
 8001438:	40015804 	.word	0x40015804
 800143c:	cccccccd 	.word	0xcccccccd
 8001440:	40015400 	.word	0x40015400
 8001444:	ff05c010 	.word	0xff05c010
 8001448:	fff88000 	.word	0xfff88000

0800144c <HAL_SAI_InitProtocol>:
 800144c:	b510      	push	{r4, lr}
 800144e:	4604      	mov	r4, r0
 8001450:	2904      	cmp	r1, #4
 8001452:	d80d      	bhi.n	8001470 <HAL_SAI_InitProtocol+0x24>
 8001454:	e8df f001 	tbb	[pc, r1]
 8001458:	08030303 	.word	0x08030303
 800145c:	08          	.byte	0x08
 800145d:	00          	.byte	0x00
 800145e:	4620      	mov	r0, r4
 8001460:	f7ff fe2e 	bl	80010c0 <SAI_InitI2S>
 8001464:	b130      	cbz	r0, 8001474 <HAL_SAI_InitProtocol+0x28>
 8001466:	bd10      	pop	{r4, pc}
 8001468:	4620      	mov	r0, r4
 800146a:	f7ff fe94 	bl	8001196 <SAI_InitPCM>
 800146e:	e7f9      	b.n	8001464 <HAL_SAI_InitProtocol+0x18>
 8001470:	2001      	movs	r0, #1
 8001472:	e7f7      	b.n	8001464 <HAL_SAI_InitProtocol+0x18>
 8001474:	4620      	mov	r0, r4
 8001476:	f7ff fef9 	bl	800126c <HAL_SAI_Init>
 800147a:	e7f4      	b.n	8001466 <HAL_SAI_InitProtocol+0x1a>

0800147c <NMI_Handler>:
 800147c:	4770      	bx	lr

0800147e <HardFault_Handler>:
 800147e:	e7fe      	b.n	800147e <HardFault_Handler>

08001480 <MemManage_Handler>:
 8001480:	e7fe      	b.n	8001480 <MemManage_Handler>

08001482 <BusFault_Handler>:
 8001482:	e7fe      	b.n	8001482 <BusFault_Handler>

08001484 <UsageFault_Handler>:
 8001484:	e7fe      	b.n	8001484 <UsageFault_Handler>

08001486 <SVC_Handler>:
 8001486:	4770      	bx	lr

08001488 <DebugMon_Handler>:
 8001488:	4770      	bx	lr

0800148a <PendSV_Handler>:
 800148a:	4770      	bx	lr

0800148c <SysTick_Handler>:
 800148c:	b508      	push	{r3, lr}
 800148e:	f7ff fe09 	bl	80010a4 <HAL_IncTick>
 8001492:	f7fe ff6c 	bl	800036e <HAL_SYSTICK_IRQHandler>
 8001496:	bd08      	pop	{r3, pc}

08001498 <ADC1_2_IRQHandler>:
 8001498:	b510      	push	{r4, lr}
 800149a:	4b14      	ldr	r3, [pc, #80]	; (80014ec <ADC1_2_IRQHandler+0x54>)
 800149c:	6c1c      	ldr	r4, [r3, #64]	; 0x40
 800149e:	b224      	sxth	r4, r4
 80014a0:	4620      	mov	r0, r4
 80014a2:	f001 fc63 	bl	8002d6c <delay_sample>
 80014a6:	2214      	movs	r2, #20
 80014a8:	210a      	movs	r1, #10
 80014aa:	4620      	mov	r0, r4
 80014ac:	f001 fcaa 	bl	8002e04 <flange>
 80014b0:	2232      	movs	r2, #50	; 0x32
 80014b2:	2105      	movs	r1, #5
 80014b4:	f001 fd0e 	bl	8002ed4 <tanh_OD>
 80014b8:	4c0d      	ldr	r4, [pc, #52]	; (80014f0 <ADC1_2_IRQHandler+0x58>)
 80014ba:	f44f 0270 	mov.w	r2, #15728640	; 0xf00000
 80014be:	fa92 f2a2 	rbit	r2, r2
 80014c2:	fab2 f282 	clz	r2, r2
 80014c6:	f44f 0180 	mov.w	r1, #4194304	; 0x400000
 80014ca:	fa21 f202 	lsr.w	r2, r1, r2
 80014ce:	f854 3022 	ldr.w	r3, [r4, r2, lsl #2]
 80014d2:	f423 437f 	bic.w	r3, r3, #65280	; 0xff00
 80014d6:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 80014da:	4303      	orrs	r3, r0
 80014dc:	f844 3022 	str.w	r3, [r4, r2, lsl #2]
 80014e0:	4a04      	ldr	r2, [pc, #16]	; (80014f4 <ADC1_2_IRQHandler+0x5c>)
 80014e2:	6853      	ldr	r3, [r2, #4]
 80014e4:	f043 0302 	orr.w	r3, r3, #2
 80014e8:	6053      	str	r3, [r2, #4]
 80014ea:	bd10      	pop	{r4, pc}
 80014ec:	50040000 	.word	0x50040000
 80014f0:	40007408 	.word	0x40007408
 80014f4:	40007400 	.word	0x40007400

080014f8 <TIM4_IRQHandler>:
 80014f8:	4770      	bx	lr
	...

080014fc <TIM6_DAC_IRQHandler>:
 80014fc:	b508      	push	{r3, lr}
 80014fe:	4802      	ldr	r0, [pc, #8]	; (8001508 <TIM6_DAC_IRQHandler+0xc>)
 8001500:	f7fe ff3e 	bl	8000380 <HAL_TIM_IRQHandler>
 8001504:	bd08      	pop	{r3, pc}
 8001506:	bf00      	nop
 8001508:	20017828 	.word	0x20017828

0800150c <HAL_GPIO_Init>:
 800150c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800150e:	b083      	sub	sp, #12
 8001510:	2300      	movs	r3, #0
 8001512:	e09a      	b.n	800164a <HAL_GPIO_Init+0x13e>
 8001514:	ea4f 0ed3 	mov.w	lr, r3, lsr #3
 8001518:	f10e 0e08 	add.w	lr, lr, #8
 800151c:	f850 402e 	ldr.w	r4, [r0, lr, lsl #2]
 8001520:	f003 0607 	and.w	r6, r3, #7
 8001524:	00b6      	lsls	r6, r6, #2
 8001526:	270f      	movs	r7, #15
 8001528:	40b7      	lsls	r7, r6
 800152a:	ea24 0407 	bic.w	r4, r4, r7
 800152e:	690f      	ldr	r7, [r1, #16]
 8001530:	fa07 f606 	lsl.w	r6, r7, r6
 8001534:	4334      	orrs	r4, r6
 8001536:	f840 402e 	str.w	r4, [r0, lr, lsl #2]
 800153a:	e095      	b.n	8001668 <HAL_GPIO_Init+0x15c>
 800153c:	6886      	ldr	r6, [r0, #8]
 800153e:	4026      	ands	r6, r4
 8001540:	68cf      	ldr	r7, [r1, #12]
 8001542:	fa07 f70e 	lsl.w	r7, r7, lr
 8001546:	433e      	orrs	r6, r7
 8001548:	6086      	str	r6, [r0, #8]
 800154a:	6846      	ldr	r6, [r0, #4]
 800154c:	ea26 0605 	bic.w	r6, r6, r5
 8001550:	684f      	ldr	r7, [r1, #4]
 8001552:	f3c7 1700 	ubfx	r7, r7, #4, #1
 8001556:	409f      	lsls	r7, r3
 8001558:	433e      	orrs	r6, r7
 800155a:	6046      	str	r6, [r0, #4]
 800155c:	684e      	ldr	r6, [r1, #4]
 800155e:	f006 0703 	and.w	r7, r6, #3
 8001562:	2f03      	cmp	r7, #3
 8001564:	f000 809b 	beq.w	800169e <HAL_GPIO_Init+0x192>
 8001568:	68c5      	ldr	r5, [r0, #12]
 800156a:	402c      	ands	r4, r5
 800156c:	688d      	ldr	r5, [r1, #8]
 800156e:	fa05 f50e 	lsl.w	r5, r5, lr
 8001572:	432c      	orrs	r4, r5
 8001574:	60c4      	str	r4, [r0, #12]
 8001576:	684c      	ldr	r4, [r1, #4]
 8001578:	f014 5f80 	tst.w	r4, #268435456	; 0x10000000
 800157c:	d064      	beq.n	8001648 <HAL_GPIO_Init+0x13c>
 800157e:	4c54      	ldr	r4, [pc, #336]	; (80016d0 <HAL_GPIO_Init+0x1c4>)
 8001580:	6e25      	ldr	r5, [r4, #96]	; 0x60
 8001582:	f045 0501 	orr.w	r5, r5, #1
 8001586:	6625      	str	r5, [r4, #96]	; 0x60
 8001588:	6e24      	ldr	r4, [r4, #96]	; 0x60
 800158a:	f004 0401 	and.w	r4, r4, #1
 800158e:	9401      	str	r4, [sp, #4]
 8001590:	9c01      	ldr	r4, [sp, #4]
 8001592:	089c      	lsrs	r4, r3, #2
 8001594:	1ca6      	adds	r6, r4, #2
 8001596:	4d4f      	ldr	r5, [pc, #316]	; (80016d4 <HAL_GPIO_Init+0x1c8>)
 8001598:	f855 5026 	ldr.w	r5, [r5, r6, lsl #2]
 800159c:	f003 0603 	and.w	r6, r3, #3
 80015a0:	00b7      	lsls	r7, r6, #2
 80015a2:	260f      	movs	r6, #15
 80015a4:	40be      	lsls	r6, r7
 80015a6:	ea25 0506 	bic.w	r5, r5, r6
 80015aa:	f1b0 4f90 	cmp.w	r0, #1207959552	; 0x48000000
 80015ae:	f000 8081 	beq.w	80016b4 <HAL_GPIO_Init+0x1a8>
 80015b2:	4e49      	ldr	r6, [pc, #292]	; (80016d8 <HAL_GPIO_Init+0x1cc>)
 80015b4:	42b0      	cmp	r0, r6
 80015b6:	d07f      	beq.n	80016b8 <HAL_GPIO_Init+0x1ac>
 80015b8:	f506 6680 	add.w	r6, r6, #1024	; 0x400
 80015bc:	42b0      	cmp	r0, r6
 80015be:	d07d      	beq.n	80016bc <HAL_GPIO_Init+0x1b0>
 80015c0:	f506 6680 	add.w	r6, r6, #1024	; 0x400
 80015c4:	42b0      	cmp	r0, r6
 80015c6:	d07b      	beq.n	80016c0 <HAL_GPIO_Init+0x1b4>
 80015c8:	f506 6680 	add.w	r6, r6, #1024	; 0x400
 80015cc:	42b0      	cmp	r0, r6
 80015ce:	d079      	beq.n	80016c4 <HAL_GPIO_Init+0x1b8>
 80015d0:	f506 6680 	add.w	r6, r6, #1024	; 0x400
 80015d4:	42b0      	cmp	r0, r6
 80015d6:	d077      	beq.n	80016c8 <HAL_GPIO_Init+0x1bc>
 80015d8:	f506 6680 	add.w	r6, r6, #1024	; 0x400
 80015dc:	42b0      	cmp	r0, r6
 80015de:	d067      	beq.n	80016b0 <HAL_GPIO_Init+0x1a4>
 80015e0:	2607      	movs	r6, #7
 80015e2:	40be      	lsls	r6, r7
 80015e4:	4335      	orrs	r5, r6
 80015e6:	3402      	adds	r4, #2
 80015e8:	4e3a      	ldr	r6, [pc, #232]	; (80016d4 <HAL_GPIO_Init+0x1c8>)
 80015ea:	f846 5024 	str.w	r5, [r6, r4, lsl #2]
 80015ee:	4c3b      	ldr	r4, [pc, #236]	; (80016dc <HAL_GPIO_Init+0x1d0>)
 80015f0:	6825      	ldr	r5, [r4, #0]
 80015f2:	43d4      	mvns	r4, r2
 80015f4:	ea05 0604 	and.w	r6, r5, r4
 80015f8:	684f      	ldr	r7, [r1, #4]
 80015fa:	f417 3f80 	tst.w	r7, #65536	; 0x10000
 80015fe:	d001      	beq.n	8001604 <HAL_GPIO_Init+0xf8>
 8001600:	ea42 0605 	orr.w	r6, r2, r5
 8001604:	4d35      	ldr	r5, [pc, #212]	; (80016dc <HAL_GPIO_Init+0x1d0>)
 8001606:	602e      	str	r6, [r5, #0]
 8001608:	686d      	ldr	r5, [r5, #4]
 800160a:	ea04 0605 	and.w	r6, r4, r5
 800160e:	684f      	ldr	r7, [r1, #4]
 8001610:	f417 3f00 	tst.w	r7, #131072	; 0x20000
 8001614:	d001      	beq.n	800161a <HAL_GPIO_Init+0x10e>
 8001616:	ea42 0605 	orr.w	r6, r2, r5
 800161a:	4d30      	ldr	r5, [pc, #192]	; (80016dc <HAL_GPIO_Init+0x1d0>)
 800161c:	606e      	str	r6, [r5, #4]
 800161e:	68ad      	ldr	r5, [r5, #8]
 8001620:	ea04 0605 	and.w	r6, r4, r5
 8001624:	684f      	ldr	r7, [r1, #4]
 8001626:	f417 1f80 	tst.w	r7, #1048576	; 0x100000
 800162a:	d001      	beq.n	8001630 <HAL_GPIO_Init+0x124>
 800162c:	ea42 0605 	orr.w	r6, r2, r5
 8001630:	4d2a      	ldr	r5, [pc, #168]	; (80016dc <HAL_GPIO_Init+0x1d0>)
 8001632:	60ae      	str	r6, [r5, #8]
 8001634:	68ed      	ldr	r5, [r5, #12]
 8001636:	402c      	ands	r4, r5
 8001638:	684e      	ldr	r6, [r1, #4]
 800163a:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 800163e:	d001      	beq.n	8001644 <HAL_GPIO_Init+0x138>
 8001640:	ea42 0405 	orr.w	r4, r2, r5
 8001644:	4a25      	ldr	r2, [pc, #148]	; (80016dc <HAL_GPIO_Init+0x1d0>)
 8001646:	60d4      	str	r4, [r2, #12]
 8001648:	3301      	adds	r3, #1
 800164a:	680a      	ldr	r2, [r1, #0]
 800164c:	fa32 f403 	lsrs.w	r4, r2, r3
 8001650:	d03c      	beq.n	80016cc <HAL_GPIO_Init+0x1c0>
 8001652:	2501      	movs	r5, #1
 8001654:	409d      	lsls	r5, r3
 8001656:	402a      	ands	r2, r5
 8001658:	d0f6      	beq.n	8001648 <HAL_GPIO_Init+0x13c>
 800165a:	684c      	ldr	r4, [r1, #4]
 800165c:	2c02      	cmp	r4, #2
 800165e:	f43f af59 	beq.w	8001514 <HAL_GPIO_Init+0x8>
 8001662:	2c12      	cmp	r4, #18
 8001664:	f43f af56 	beq.w	8001514 <HAL_GPIO_Init+0x8>
 8001668:	6806      	ldr	r6, [r0, #0]
 800166a:	ea4f 0e43 	mov.w	lr, r3, lsl #1
 800166e:	2403      	movs	r4, #3
 8001670:	fa04 f40e 	lsl.w	r4, r4, lr
 8001674:	43e4      	mvns	r4, r4
 8001676:	4026      	ands	r6, r4
 8001678:	684f      	ldr	r7, [r1, #4]
 800167a:	f007 0703 	and.w	r7, r7, #3
 800167e:	fa07 f70e 	lsl.w	r7, r7, lr
 8001682:	433e      	orrs	r6, r7
 8001684:	6006      	str	r6, [r0, #0]
 8001686:	684e      	ldr	r6, [r1, #4]
 8001688:	1e77      	subs	r7, r6, #1
 800168a:	2f01      	cmp	r7, #1
 800168c:	f67f af56 	bls.w	800153c <HAL_GPIO_Init+0x30>
 8001690:	2e11      	cmp	r6, #17
 8001692:	f43f af53 	beq.w	800153c <HAL_GPIO_Init+0x30>
 8001696:	2e12      	cmp	r6, #18
 8001698:	f47f af60 	bne.w	800155c <HAL_GPIO_Init+0x50>
 800169c:	e74e      	b.n	800153c <HAL_GPIO_Init+0x30>
 800169e:	6ac7      	ldr	r7, [r0, #44]	; 0x2c
 80016a0:	ea27 0505 	bic.w	r5, r7, r5
 80016a4:	f3c6 06c0 	ubfx	r6, r6, #3, #1
 80016a8:	409e      	lsls	r6, r3
 80016aa:	432e      	orrs	r6, r5
 80016ac:	62c6      	str	r6, [r0, #44]	; 0x2c
 80016ae:	e75b      	b.n	8001568 <HAL_GPIO_Init+0x5c>
 80016b0:	2606      	movs	r6, #6
 80016b2:	e796      	b.n	80015e2 <HAL_GPIO_Init+0xd6>
 80016b4:	2600      	movs	r6, #0
 80016b6:	e794      	b.n	80015e2 <HAL_GPIO_Init+0xd6>
 80016b8:	2601      	movs	r6, #1
 80016ba:	e792      	b.n	80015e2 <HAL_GPIO_Init+0xd6>
 80016bc:	2602      	movs	r6, #2
 80016be:	e790      	b.n	80015e2 <HAL_GPIO_Init+0xd6>
 80016c0:	2603      	movs	r6, #3
 80016c2:	e78e      	b.n	80015e2 <HAL_GPIO_Init+0xd6>
 80016c4:	2604      	movs	r6, #4
 80016c6:	e78c      	b.n	80015e2 <HAL_GPIO_Init+0xd6>
 80016c8:	2605      	movs	r6, #5
 80016ca:	e78a      	b.n	80015e2 <HAL_GPIO_Init+0xd6>
 80016cc:	b003      	add	sp, #12
 80016ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80016d0:	40021000 	.word	0x40021000
 80016d4:	40010000 	.word	0x40010000
 80016d8:	48000400 	.word	0x48000400
 80016dc:	40010400 	.word	0x40010400

080016e0 <HAL_RCCEx_GetPeriphCLKFreq>:
 80016e0:	b508      	push	{r3, lr}
 80016e2:	f5b0 3f00 	cmp.w	r0, #131072	; 0x20000
 80016e6:	d040      	beq.n	800176a <HAL_RCCEx_GetPeriphCLKFreq+0x8a>
 80016e8:	4bc4      	ldr	r3, [pc, #784]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80016ea:	68db      	ldr	r3, [r3, #12]
 80016ec:	f003 0303 	and.w	r3, r3, #3
 80016f0:	2b01      	cmp	r3, #1
 80016f2:	d065      	beq.n	80017c0 <HAL_RCCEx_GetPeriphCLKFreq+0xe0>
 80016f4:	4bc1      	ldr	r3, [pc, #772]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80016f6:	68db      	ldr	r3, [r3, #12]
 80016f8:	f003 0303 	and.w	r3, r3, #3
 80016fc:	2b02      	cmp	r3, #2
 80016fe:	d077      	beq.n	80017f0 <HAL_RCCEx_GetPeriphCLKFreq+0x110>
 8001700:	4bbe      	ldr	r3, [pc, #760]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001702:	68db      	ldr	r3, [r3, #12]
 8001704:	f003 0303 	and.w	r3, r3, #3
 8001708:	2b03      	cmp	r3, #3
 800170a:	d078      	beq.n	80017fe <HAL_RCCEx_GetPeriphCLKFreq+0x11e>
 800170c:	2100      	movs	r1, #0
 800170e:	4abb      	ldr	r2, [pc, #748]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001710:	68d3      	ldr	r3, [r2, #12]
 8001712:	f3c3 1302 	ubfx	r3, r3, #4, #3
 8001716:	3301      	adds	r3, #1
 8001718:	fbb1 f3f3 	udiv	r3, r1, r3
 800171c:	f5b0 7f00 	cmp.w	r0, #512	; 0x200
 8001720:	f000 8351 	beq.w	8001dc6 <HAL_RCCEx_GetPeriphCLKFreq+0x6e6>
 8001724:	f200 80c1 	bhi.w	80018aa <HAL_RCCEx_GetPeriphCLKFreq+0x1ca>
 8001728:	2810      	cmp	r0, #16
 800172a:	f000 8263 	beq.w	8001bf4 <HAL_RCCEx_GetPeriphCLKFreq+0x514>
 800172e:	f200 8088 	bhi.w	8001842 <HAL_RCCEx_GetPeriphCLKFreq+0x162>
 8001732:	2802      	cmp	r0, #2
 8001734:	f000 81f9 	beq.w	8001b2a <HAL_RCCEx_GetPeriphCLKFreq+0x44a>
 8001738:	d96e      	bls.n	8001818 <HAL_RCCEx_GetPeriphCLKFreq+0x138>
 800173a:	2804      	cmp	r0, #4
 800173c:	f000 821b 	beq.w	8001b76 <HAL_RCCEx_GetPeriphCLKFreq+0x496>
 8001740:	2808      	cmp	r0, #8
 8001742:	f040 8135 	bne.w	80019b0 <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 8001746:	4bad      	ldr	r3, [pc, #692]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001748:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800174c:	f013 03c0 	ands.w	r3, r3, #192	; 0xc0
 8001750:	f000 8237 	beq.w	8001bc2 <HAL_RCCEx_GetPeriphCLKFreq+0x4e2>
 8001754:	2b40      	cmp	r3, #64	; 0x40
 8001756:	f000 8237 	beq.w	8001bc8 <HAL_RCCEx_GetPeriphCLKFreq+0x4e8>
 800175a:	2b80      	cmp	r3, #128	; 0x80
 800175c:	f000 8237 	beq.w	8001bce <HAL_RCCEx_GetPeriphCLKFreq+0x4ee>
 8001760:	2bc0      	cmp	r3, #192	; 0xc0
 8001762:	f000 823c 	beq.w	8001bde <HAL_RCCEx_GetPeriphCLKFreq+0x4fe>
 8001766:	2000      	movs	r0, #0
 8001768:	bd08      	pop	{r3, pc}
 800176a:	4ba4      	ldr	r3, [pc, #656]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 800176c:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001770:	f403 7340 	and.w	r3, r3, #768	; 0x300
 8001774:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001778:	d007      	beq.n	800178a <HAL_RCCEx_GetPeriphCLKFreq+0xaa>
 800177a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800177e:	d00d      	beq.n	800179c <HAL_RCCEx_GetPeriphCLKFreq+0xbc>
 8001780:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
 8001784:	d013      	beq.n	80017ae <HAL_RCCEx_GetPeriphCLKFreq+0xce>
 8001786:	2000      	movs	r0, #0
 8001788:	bd08      	pop	{r3, pc}
 800178a:	4a9c      	ldr	r2, [pc, #624]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 800178c:	f8d2 2090 	ldr.w	r2, [r2, #144]	; 0x90
 8001790:	f012 0f02 	tst.w	r2, #2
 8001794:	d0f1      	beq.n	800177a <HAL_RCCEx_GetPeriphCLKFreq+0x9a>
 8001796:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800179a:	bd08      	pop	{r3, pc}
 800179c:	4a97      	ldr	r2, [pc, #604]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 800179e:	f8d2 2094 	ldr.w	r2, [r2, #148]	; 0x94
 80017a2:	f012 0f02 	tst.w	r2, #2
 80017a6:	d0eb      	beq.n	8001780 <HAL_RCCEx_GetPeriphCLKFreq+0xa0>
 80017a8:	f44f 40fa 	mov.w	r0, #32000	; 0x7d00
 80017ac:	bd08      	pop	{r3, pc}
 80017ae:	4b93      	ldr	r3, [pc, #588]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017b0:	681b      	ldr	r3, [r3, #0]
 80017b2:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 80017b6:	d001      	beq.n	80017bc <HAL_RCCEx_GetPeriphCLKFreq+0xdc>
 80017b8:	4891      	ldr	r0, [pc, #580]	; (8001a00 <HAL_RCCEx_GetPeriphCLKFreq+0x320>)
 80017ba:	bd08      	pop	{r3, pc}
 80017bc:	2000      	movs	r0, #0
 80017be:	bd08      	pop	{r3, pc}
 80017c0:	4b8e      	ldr	r3, [pc, #568]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017c2:	681b      	ldr	r3, [r3, #0]
 80017c4:	f013 0f02 	tst.w	r3, #2
 80017c8:	d020      	beq.n	800180c <HAL_RCCEx_GetPeriphCLKFreq+0x12c>
 80017ca:	4b8c      	ldr	r3, [pc, #560]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017cc:	681b      	ldr	r3, [r3, #0]
 80017ce:	f013 0f08 	tst.w	r3, #8
 80017d2:	d007      	beq.n	80017e4 <HAL_RCCEx_GetPeriphCLKFreq+0x104>
 80017d4:	4b89      	ldr	r3, [pc, #548]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017d6:	681b      	ldr	r3, [r3, #0]
 80017d8:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80017dc:	4a89      	ldr	r2, [pc, #548]	; (8001a04 <HAL_RCCEx_GetPeriphCLKFreq+0x324>)
 80017de:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 80017e2:	e794      	b.n	800170e <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 80017e4:	4b85      	ldr	r3, [pc, #532]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017e6:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80017ea:	f3c3 2303 	ubfx	r3, r3, #8, #4
 80017ee:	e7f5      	b.n	80017dc <HAL_RCCEx_GetPeriphCLKFreq+0xfc>
 80017f0:	4b82      	ldr	r3, [pc, #520]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80017f2:	681b      	ldr	r3, [r3, #0]
 80017f4:	f413 6f80 	tst.w	r3, #1024	; 0x400
 80017f8:	d00a      	beq.n	8001810 <HAL_RCCEx_GetPeriphCLKFreq+0x130>
 80017fa:	4983      	ldr	r1, [pc, #524]	; (8001a08 <HAL_RCCEx_GetPeriphCLKFreq+0x328>)
 80017fc:	e787      	b.n	800170e <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 80017fe:	4b7f      	ldr	r3, [pc, #508]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001800:	681b      	ldr	r3, [r3, #0]
 8001802:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8001806:	d005      	beq.n	8001814 <HAL_RCCEx_GetPeriphCLKFreq+0x134>
 8001808:	4980      	ldr	r1, [pc, #512]	; (8001a0c <HAL_RCCEx_GetPeriphCLKFreq+0x32c>)
 800180a:	e780      	b.n	800170e <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 800180c:	2100      	movs	r1, #0
 800180e:	e77e      	b.n	800170e <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 8001810:	2100      	movs	r1, #0
 8001812:	e77c      	b.n	800170e <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 8001814:	2100      	movs	r1, #0
 8001816:	e77a      	b.n	800170e <HAL_RCCEx_GetPeriphCLKFreq+0x2e>
 8001818:	2801      	cmp	r0, #1
 800181a:	f040 80c9 	bne.w	80019b0 <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 800181e:	4b77      	ldr	r3, [pc, #476]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001820:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001824:	f013 0303 	ands.w	r3, r3, #3
 8001828:	f000 8166 	beq.w	8001af8 <HAL_RCCEx_GetPeriphCLKFreq+0x418>
 800182c:	2b01      	cmp	r3, #1
 800182e:	f000 8166 	beq.w	8001afe <HAL_RCCEx_GetPeriphCLKFreq+0x41e>
 8001832:	2b02      	cmp	r3, #2
 8001834:	f000 8166 	beq.w	8001b04 <HAL_RCCEx_GetPeriphCLKFreq+0x424>
 8001838:	2b03      	cmp	r3, #3
 800183a:	f000 816b 	beq.w	8001b14 <HAL_RCCEx_GetPeriphCLKFreq+0x434>
 800183e:	2000      	movs	r0, #0
 8001840:	bd08      	pop	{r3, pc}
 8001842:	2840      	cmp	r0, #64	; 0x40
 8001844:	f000 826d 	beq.w	8001d22 <HAL_RCCEx_GetPeriphCLKFreq+0x642>
 8001848:	d917      	bls.n	800187a <HAL_RCCEx_GetPeriphCLKFreq+0x19a>
 800184a:	2880      	cmp	r0, #128	; 0x80
 800184c:	f000 8289 	beq.w	8001d62 <HAL_RCCEx_GetPeriphCLKFreq+0x682>
 8001850:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8001854:	f040 80ac 	bne.w	80019b0 <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 8001858:	4b68      	ldr	r3, [pc, #416]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 800185a:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800185e:	f413 3340 	ands.w	r3, r3, #196608	; 0x30000
 8001862:	f000 829e 	beq.w	8001da2 <HAL_RCCEx_GetPeriphCLKFreq+0x6c2>
 8001866:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 800186a:	f000 829d 	beq.w	8001da8 <HAL_RCCEx_GetPeriphCLKFreq+0x6c8>
 800186e:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 8001872:	f000 829c 	beq.w	8001dae <HAL_RCCEx_GetPeriphCLKFreq+0x6ce>
 8001876:	2000      	movs	r0, #0
 8001878:	bd08      	pop	{r3, pc}
 800187a:	2820      	cmp	r0, #32
 800187c:	f040 8098 	bne.w	80019b0 <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 8001880:	4b5e      	ldr	r3, [pc, #376]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001882:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001886:	f413 6340 	ands.w	r3, r3, #3072	; 0xc00
 800188a:	f000 81dc 	beq.w	8001c46 <HAL_RCCEx_GetPeriphCLKFreq+0x566>
 800188e:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8001892:	f000 81db 	beq.w	8001c4c <HAL_RCCEx_GetPeriphCLKFreq+0x56c>
 8001896:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
 800189a:	f000 81da 	beq.w	8001c52 <HAL_RCCEx_GetPeriphCLKFreq+0x572>
 800189e:	f5b3 6f40 	cmp.w	r3, #3072	; 0xc00
 80018a2:	f000 81de 	beq.w	8001c62 <HAL_RCCEx_GetPeriphCLKFreq+0x582>
 80018a6:	2000      	movs	r0, #0
 80018a8:	bd08      	pop	{r3, pc}
 80018aa:	f5b0 4f80 	cmp.w	r0, #16384	; 0x4000
 80018ae:	f000 81e6 	beq.w	8001c7e <HAL_RCCEx_GetPeriphCLKFreq+0x59e>
 80018b2:	d916      	bls.n	80018e2 <HAL_RCCEx_GetPeriphCLKFreq+0x202>
 80018b4:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
 80018b8:	f000 8222 	beq.w	8001d00 <HAL_RCCEx_GetPeriphCLKFreq+0x620>
 80018bc:	d872      	bhi.n	80019a4 <HAL_RCCEx_GetPeriphCLKFreq+0x2c4>
 80018be:	f5b0 4f00 	cmp.w	r0, #32768	; 0x8000
 80018c2:	d175      	bne.n	80019b0 <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 80018c4:	4b4d      	ldr	r3, [pc, #308]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80018c6:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80018ca:	f013 4f80 	tst.w	r3, #1073741824	; 0x40000000
 80018ce:	f000 82cc 	beq.w	8001e6a <HAL_RCCEx_GetPeriphCLKFreq+0x78a>
 80018d2:	4b4a      	ldr	r3, [pc, #296]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80018d4:	681b      	ldr	r3, [r3, #0]
 80018d6:	f413 6f80 	tst.w	r3, #1024	; 0x400
 80018da:	f000 82d7 	beq.w	8001e8c <HAL_RCCEx_GetPeriphCLKFreq+0x7ac>
 80018de:	484a      	ldr	r0, [pc, #296]	; (8001a08 <HAL_RCCEx_GetPeriphCLKFreq+0x328>)
 80018e0:	bd08      	pop	{r3, pc}
 80018e2:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
 80018e6:	d01b      	beq.n	8001920 <HAL_RCCEx_GetPeriphCLKFreq+0x240>
 80018e8:	d817      	bhi.n	800191a <HAL_RCCEx_GetPeriphCLKFreq+0x23a>
 80018ea:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
 80018ee:	d15f      	bne.n	80019b0 <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 80018f0:	4b42      	ldr	r3, [pc, #264]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80018f2:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80018f6:	f413 1340 	ands.w	r3, r3, #3145728	; 0x300000
 80018fa:	f000 8296 	beq.w	8001e2a <HAL_RCCEx_GetPeriphCLKFreq+0x74a>
 80018fe:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001902:	f000 8295 	beq.w	8001e30 <HAL_RCCEx_GetPeriphCLKFreq+0x750>
 8001906:	f5b3 1f00 	cmp.w	r3, #2097152	; 0x200000
 800190a:	f000 829b 	beq.w	8001e44 <HAL_RCCEx_GetPeriphCLKFreq+0x764>
 800190e:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001912:	f000 829f 	beq.w	8001e54 <HAL_RCCEx_GetPeriphCLKFreq+0x774>
 8001916:	2000      	movs	r0, #0
 8001918:	bd08      	pop	{r3, pc}
 800191a:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 800191e:	d12d      	bne.n	800197c <HAL_RCCEx_GetPeriphCLKFreq+0x29c>
 8001920:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
 8001924:	d046      	beq.n	80019b4 <HAL_RCCEx_GetPeriphCLKFreq+0x2d4>
 8001926:	4a35      	ldr	r2, [pc, #212]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001928:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
 800192c:	f002 7240 	and.w	r2, r2, #50331648	; 0x3000000
 8001930:	f1b2 7f40 	cmp.w	r2, #50331648	; 0x3000000
 8001934:	d04a      	beq.n	80019cc <HAL_RCCEx_GetPeriphCLKFreq+0x2ec>
 8001936:	2000      	movs	r0, #0
 8001938:	2800      	cmp	r0, #0
 800193a:	f040 82a8 	bne.w	8001e8e <HAL_RCCEx_GetPeriphCLKFreq+0x7ae>
 800193e:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001942:	d045      	beq.n	80019d0 <HAL_RCCEx_GetPeriphCLKFreq+0x2f0>
 8001944:	f1b2 7f00 	cmp.w	r2, #33554432	; 0x2000000
 8001948:	d042      	beq.n	80019d0 <HAL_RCCEx_GetPeriphCLKFreq+0x2f0>
 800194a:	2a00      	cmp	r2, #0
 800194c:	d164      	bne.n	8001a18 <HAL_RCCEx_GetPeriphCLKFreq+0x338>
 800194e:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8001952:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
 8001956:	6912      	ldr	r2, [r2, #16]
 8001958:	f412 3f80 	tst.w	r2, #65536	; 0x10000
 800195c:	f000 8297 	beq.w	8001e8e <HAL_RCCEx_GetPeriphCLKFreq+0x7ae>
 8001960:	4a26      	ldr	r2, [pc, #152]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001962:	6910      	ldr	r0, [r2, #16]
 8001964:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001968:	6912      	ldr	r2, [r2, #16]
 800196a:	f412 3f00 	tst.w	r2, #131072	; 0x20000
 800196e:	d151      	bne.n	8001a14 <HAL_RCCEx_GetPeriphCLKFreq+0x334>
 8001970:	2207      	movs	r2, #7
 8001972:	fb00 f303 	mul.w	r3, r0, r3
 8001976:	fbb3 f0f2 	udiv	r0, r3, r2
 800197a:	bd08      	pop	{r3, pc}
 800197c:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
 8001980:	d116      	bne.n	80019b0 <HAL_RCCEx_GetPeriphCLKFreq+0x2d0>
 8001982:	4a1e      	ldr	r2, [pc, #120]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 8001984:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
 8001988:	f002 6240 	and.w	r2, r2, #201326592	; 0xc000000
 800198c:	f1b2 6f40 	cmp.w	r2, #201326592	; 0xc000000
 8001990:	d05f      	beq.n	8001a52 <HAL_RCCEx_GetPeriphCLKFreq+0x372>
 8001992:	f1b2 6f00 	cmp.w	r2, #134217728	; 0x8000000
 8001996:	d075      	beq.n	8001a84 <HAL_RCCEx_GetPeriphCLKFreq+0x3a4>
 8001998:	f1b2 6f80 	cmp.w	r2, #67108864	; 0x4000000
 800199c:	f000 808f 	beq.w	8001abe <HAL_RCCEx_GetPeriphCLKFreq+0x3de>
 80019a0:	2000      	movs	r0, #0
 80019a2:	bd08      	pop	{r3, pc}
 80019a4:	f5b0 2f80 	cmp.w	r0, #262144	; 0x40000
 80019a8:	d0eb      	beq.n	8001982 <HAL_RCCEx_GetPeriphCLKFreq+0x2a2>
 80019aa:	f5b0 2f00 	cmp.w	r0, #524288	; 0x80000
 80019ae:	d0e8      	beq.n	8001982 <HAL_RCCEx_GetPeriphCLKFreq+0x2a2>
 80019b0:	2000      	movs	r0, #0
 80019b2:	bd08      	pop	{r3, pc}
 80019b4:	4a11      	ldr	r2, [pc, #68]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80019b6:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
 80019ba:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80019be:	f5b2 0f40 	cmp.w	r2, #12582912	; 0xc00000
 80019c2:	d001      	beq.n	80019c8 <HAL_RCCEx_GetPeriphCLKFreq+0x2e8>
 80019c4:	2000      	movs	r0, #0
 80019c6:	e7b7      	b.n	8001938 <HAL_RCCEx_GetPeriphCLKFreq+0x258>
 80019c8:	4811      	ldr	r0, [pc, #68]	; (8001a10 <HAL_RCCEx_GetPeriphCLKFreq+0x330>)
 80019ca:	e7b5      	b.n	8001938 <HAL_RCCEx_GetPeriphCLKFreq+0x258>
 80019cc:	4810      	ldr	r0, [pc, #64]	; (8001a10 <HAL_RCCEx_GetPeriphCLKFreq+0x330>)
 80019ce:	e7b3      	b.n	8001938 <HAL_RCCEx_GetPeriphCLKFreq+0x258>
 80019d0:	4a0a      	ldr	r2, [pc, #40]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80019d2:	68d2      	ldr	r2, [r2, #12]
 80019d4:	f412 3f80 	tst.w	r2, #65536	; 0x10000
 80019d8:	f000 8259 	beq.w	8001e8e <HAL_RCCEx_GetPeriphCLKFreq+0x7ae>
 80019dc:	4a07      	ldr	r2, [pc, #28]	; (80019fc <HAL_RCCEx_GetPeriphCLKFreq+0x31c>)
 80019de:	68d0      	ldr	r0, [r2, #12]
 80019e0:	f3c0 2006 	ubfx	r0, r0, #8, #7
 80019e4:	68d2      	ldr	r2, [r2, #12]
 80019e6:	f412 3f00 	tst.w	r2, #131072	; 0x20000
 80019ea:	d105      	bne.n	80019f8 <HAL_RCCEx_GetPeriphCLKFreq+0x318>
 80019ec:	2207      	movs	r2, #7
 80019ee:	fb00 f303 	mul.w	r3, r0, r3
 80019f2:	fbb3 f0f2 	udiv	r0, r3, r2
 80019f6:	bd08      	pop	{r3, pc}
 80019f8:	2211      	movs	r2, #17
 80019fa:	e7f8      	b.n	80019ee <HAL_RCCEx_GetPeriphCLKFreq+0x30e>
 80019fc:	40021000 	.word	0x40021000
 8001a00:	0003d090 	.word	0x0003d090
 8001a04:	08003eac 	.word	0x08003eac
 8001a08:	00f42400 	.word	0x00f42400
 8001a0c:	007a1200 	.word	0x007a1200
 8001a10:	001fff68 	.word	0x001fff68
 8001a14:	2211      	movs	r2, #17
 8001a16:	e7ac      	b.n	8001972 <HAL_RCCEx_GetPeriphCLKFreq+0x292>
 8001a18:	f5b2 0f80 	cmp.w	r2, #4194304	; 0x400000
 8001a1c:	d003      	beq.n	8001a26 <HAL_RCCEx_GetPeriphCLKFreq+0x346>
 8001a1e:	f1b2 7f80 	cmp.w	r2, #16777216	; 0x1000000
 8001a22:	f040 8234 	bne.w	8001e8e <HAL_RCCEx_GetPeriphCLKFreq+0x7ae>
 8001a26:	4aba      	ldr	r2, [pc, #744]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a28:	6952      	ldr	r2, [r2, #20]
 8001a2a:	f412 3f80 	tst.w	r2, #65536	; 0x10000
 8001a2e:	f000 822e 	beq.w	8001e8e <HAL_RCCEx_GetPeriphCLKFreq+0x7ae>
 8001a32:	4ab7      	ldr	r2, [pc, #732]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a34:	6950      	ldr	r0, [r2, #20]
 8001a36:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001a3a:	6952      	ldr	r2, [r2, #20]
 8001a3c:	f412 3f00 	tst.w	r2, #131072	; 0x20000
 8001a40:	d105      	bne.n	8001a4e <HAL_RCCEx_GetPeriphCLKFreq+0x36e>
 8001a42:	2207      	movs	r2, #7
 8001a44:	fb00 f303 	mul.w	r3, r0, r3
 8001a48:	fbb3 f0f2 	udiv	r0, r3, r2
 8001a4c:	bd08      	pop	{r3, pc}
 8001a4e:	2211      	movs	r2, #17
 8001a50:	e7f8      	b.n	8001a44 <HAL_RCCEx_GetPeriphCLKFreq+0x364>
 8001a52:	4baf      	ldr	r3, [pc, #700]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a54:	681b      	ldr	r3, [r3, #0]
 8001a56:	f013 0f02 	tst.w	r3, #2
 8001a5a:	f000 8209 	beq.w	8001e70 <HAL_RCCEx_GetPeriphCLKFreq+0x790>
 8001a5e:	4bac      	ldr	r3, [pc, #688]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a60:	681b      	ldr	r3, [r3, #0]
 8001a62:	f013 0f08 	tst.w	r3, #8
 8001a66:	d007      	beq.n	8001a78 <HAL_RCCEx_GetPeriphCLKFreq+0x398>
 8001a68:	4ba9      	ldr	r3, [pc, #676]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a6a:	681b      	ldr	r3, [r3, #0]
 8001a6c:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001a70:	4aa8      	ldr	r2, [pc, #672]	; (8001d14 <HAL_RCCEx_GetPeriphCLKFreq+0x634>)
 8001a72:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 8001a76:	bd08      	pop	{r3, pc}
 8001a78:	4ba5      	ldr	r3, [pc, #660]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a7a:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8001a7e:	f3c3 2303 	ubfx	r3, r3, #8, #4
 8001a82:	e7f5      	b.n	8001a70 <HAL_RCCEx_GetPeriphCLKFreq+0x390>
 8001a84:	f102 5260 	add.w	r2, r2, #939524096	; 0x38000000
 8001a88:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
 8001a8c:	6812      	ldr	r2, [r2, #0]
 8001a8e:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
 8001a92:	f000 81ef 	beq.w	8001e74 <HAL_RCCEx_GetPeriphCLKFreq+0x794>
 8001a96:	4a9e      	ldr	r2, [pc, #632]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001a98:	68d2      	ldr	r2, [r2, #12]
 8001a9a:	f412 1f80 	tst.w	r2, #1048576	; 0x100000
 8001a9e:	f000 81eb 	beq.w	8001e78 <HAL_RCCEx_GetPeriphCLKFreq+0x798>
 8001aa2:	4a9b      	ldr	r2, [pc, #620]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001aa4:	68d0      	ldr	r0, [r2, #12]
 8001aa6:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001aaa:	fb00 f303 	mul.w	r3, r0, r3
 8001aae:	68d0      	ldr	r0, [r2, #12]
 8001ab0:	f3c0 5041 	ubfx	r0, r0, #21, #2
 8001ab4:	3001      	adds	r0, #1
 8001ab6:	0040      	lsls	r0, r0, #1
 8001ab8:	fbb3 f0f0 	udiv	r0, r3, r0
 8001abc:	bd08      	pop	{r3, pc}
 8001abe:	f102 5270 	add.w	r2, r2, #1006632960	; 0x3c000000
 8001ac2:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
 8001ac6:	6812      	ldr	r2, [r2, #0]
 8001ac8:	f012 6f00 	tst.w	r2, #134217728	; 0x8000000
 8001acc:	f000 81d6 	beq.w	8001e7c <HAL_RCCEx_GetPeriphCLKFreq+0x79c>
 8001ad0:	4a8f      	ldr	r2, [pc, #572]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001ad2:	6912      	ldr	r2, [r2, #16]
 8001ad4:	f412 1f80 	tst.w	r2, #1048576	; 0x100000
 8001ad8:	f000 81d2 	beq.w	8001e80 <HAL_RCCEx_GetPeriphCLKFreq+0x7a0>
 8001adc:	4a8c      	ldr	r2, [pc, #560]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001ade:	6910      	ldr	r0, [r2, #16]
 8001ae0:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001ae4:	fb00 f303 	mul.w	r3, r0, r3
 8001ae8:	6910      	ldr	r0, [r2, #16]
 8001aea:	f3c0 5041 	ubfx	r0, r0, #21, #2
 8001aee:	3001      	adds	r0, #1
 8001af0:	0040      	lsls	r0, r0, #1
 8001af2:	fbb3 f0f0 	udiv	r0, r3, r0
 8001af6:	bd08      	pop	{r3, pc}
 8001af8:	f7fe fe14 	bl	8000724 <HAL_RCC_GetPCLK2Freq>
 8001afc:	bd08      	pop	{r3, pc}
 8001afe:	f7fe fd7b 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001b02:	bd08      	pop	{r3, pc}
 8001b04:	4a82      	ldr	r2, [pc, #520]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b06:	6812      	ldr	r2, [r2, #0]
 8001b08:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001b0c:	f43f ae94 	beq.w	8001838 <HAL_RCCEx_GetPeriphCLKFreq+0x158>
 8001b10:	4881      	ldr	r0, [pc, #516]	; (8001d18 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001b12:	bd08      	pop	{r3, pc}
 8001b14:	4b7e      	ldr	r3, [pc, #504]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b16:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001b1a:	f013 0f02 	tst.w	r3, #2
 8001b1e:	d002      	beq.n	8001b26 <HAL_RCCEx_GetPeriphCLKFreq+0x446>
 8001b20:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b24:	bd08      	pop	{r3, pc}
 8001b26:	2000      	movs	r0, #0
 8001b28:	bd08      	pop	{r3, pc}
 8001b2a:	4b79      	ldr	r3, [pc, #484]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b2c:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001b30:	f013 030c 	ands.w	r3, r3, #12
 8001b34:	d007      	beq.n	8001b46 <HAL_RCCEx_GetPeriphCLKFreq+0x466>
 8001b36:	2b04      	cmp	r3, #4
 8001b38:	d008      	beq.n	8001b4c <HAL_RCCEx_GetPeriphCLKFreq+0x46c>
 8001b3a:	2b08      	cmp	r3, #8
 8001b3c:	d009      	beq.n	8001b52 <HAL_RCCEx_GetPeriphCLKFreq+0x472>
 8001b3e:	2b0c      	cmp	r3, #12
 8001b40:	d00e      	beq.n	8001b60 <HAL_RCCEx_GetPeriphCLKFreq+0x480>
 8001b42:	2000      	movs	r0, #0
 8001b44:	bd08      	pop	{r3, pc}
 8001b46:	f7fe fddd 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001b4a:	bd08      	pop	{r3, pc}
 8001b4c:	f7fe fd54 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001b50:	bd08      	pop	{r3, pc}
 8001b52:	4a6f      	ldr	r2, [pc, #444]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b54:	6812      	ldr	r2, [r2, #0]
 8001b56:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001b5a:	d0f0      	beq.n	8001b3e <HAL_RCCEx_GetPeriphCLKFreq+0x45e>
 8001b5c:	486e      	ldr	r0, [pc, #440]	; (8001d18 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001b5e:	bd08      	pop	{r3, pc}
 8001b60:	4b6b      	ldr	r3, [pc, #428]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b62:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001b66:	f013 0f02 	tst.w	r3, #2
 8001b6a:	d002      	beq.n	8001b72 <HAL_RCCEx_GetPeriphCLKFreq+0x492>
 8001b6c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b70:	bd08      	pop	{r3, pc}
 8001b72:	2000      	movs	r0, #0
 8001b74:	bd08      	pop	{r3, pc}
 8001b76:	4b66      	ldr	r3, [pc, #408]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001b78:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001b7c:	f013 0330 	ands.w	r3, r3, #48	; 0x30
 8001b80:	d007      	beq.n	8001b92 <HAL_RCCEx_GetPeriphCLKFreq+0x4b2>
 8001b82:	2b10      	cmp	r3, #16
 8001b84:	d008      	beq.n	8001b98 <HAL_RCCEx_GetPeriphCLKFreq+0x4b8>
 8001b86:	2b20      	cmp	r3, #32
 8001b88:	d009      	beq.n	8001b9e <HAL_RCCEx_GetPeriphCLKFreq+0x4be>
 8001b8a:	2b30      	cmp	r3, #48	; 0x30
 8001b8c:	d00e      	beq.n	8001bac <HAL_RCCEx_GetPeriphCLKFreq+0x4cc>
 8001b8e:	2000      	movs	r0, #0
 8001b90:	bd08      	pop	{r3, pc}
 8001b92:	f7fe fdb7 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001b96:	bd08      	pop	{r3, pc}
 8001b98:	f7fe fd2e 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001b9c:	bd08      	pop	{r3, pc}
 8001b9e:	4a5c      	ldr	r2, [pc, #368]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001ba0:	6812      	ldr	r2, [r2, #0]
 8001ba2:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001ba6:	d0f0      	beq.n	8001b8a <HAL_RCCEx_GetPeriphCLKFreq+0x4aa>
 8001ba8:	485b      	ldr	r0, [pc, #364]	; (8001d18 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001baa:	bd08      	pop	{r3, pc}
 8001bac:	4b58      	ldr	r3, [pc, #352]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001bae:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001bb2:	f013 0f02 	tst.w	r3, #2
 8001bb6:	d002      	beq.n	8001bbe <HAL_RCCEx_GetPeriphCLKFreq+0x4de>
 8001bb8:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bbc:	bd08      	pop	{r3, pc}
 8001bbe:	2000      	movs	r0, #0
 8001bc0:	bd08      	pop	{r3, pc}
 8001bc2:	f7fe fd9f 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001bc6:	bd08      	pop	{r3, pc}
 8001bc8:	f7fe fd16 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001bcc:	bd08      	pop	{r3, pc}
 8001bce:	4a50      	ldr	r2, [pc, #320]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001bd0:	6812      	ldr	r2, [r2, #0]
 8001bd2:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001bd6:	f43f adc3 	beq.w	8001760 <HAL_RCCEx_GetPeriphCLKFreq+0x80>
 8001bda:	484f      	ldr	r0, [pc, #316]	; (8001d18 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001bdc:	bd08      	pop	{r3, pc}
 8001bde:	4b4c      	ldr	r3, [pc, #304]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001be0:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001be4:	f013 0f02 	tst.w	r3, #2
 8001be8:	d002      	beq.n	8001bf0 <HAL_RCCEx_GetPeriphCLKFreq+0x510>
 8001bea:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bee:	bd08      	pop	{r3, pc}
 8001bf0:	2000      	movs	r0, #0
 8001bf2:	bd08      	pop	{r3, pc}
 8001bf4:	4b46      	ldr	r3, [pc, #280]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001bf6:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001bfa:	f413 7340 	ands.w	r3, r3, #768	; 0x300
 8001bfe:	d00a      	beq.n	8001c16 <HAL_RCCEx_GetPeriphCLKFreq+0x536>
 8001c00:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001c04:	d00a      	beq.n	8001c1c <HAL_RCCEx_GetPeriphCLKFreq+0x53c>
 8001c06:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8001c0a:	d00a      	beq.n	8001c22 <HAL_RCCEx_GetPeriphCLKFreq+0x542>
 8001c0c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
 8001c10:	d00e      	beq.n	8001c30 <HAL_RCCEx_GetPeriphCLKFreq+0x550>
 8001c12:	2000      	movs	r0, #0
 8001c14:	bd08      	pop	{r3, pc}
 8001c16:	f7fe fd75 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001c1a:	bd08      	pop	{r3, pc}
 8001c1c:	f7fe fcec 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001c20:	bd08      	pop	{r3, pc}
 8001c22:	4a3b      	ldr	r2, [pc, #236]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001c24:	6812      	ldr	r2, [r2, #0]
 8001c26:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001c2a:	d0ef      	beq.n	8001c0c <HAL_RCCEx_GetPeriphCLKFreq+0x52c>
 8001c2c:	483a      	ldr	r0, [pc, #232]	; (8001d18 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001c2e:	bd08      	pop	{r3, pc}
 8001c30:	4b37      	ldr	r3, [pc, #220]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001c32:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001c36:	f013 0f02 	tst.w	r3, #2
 8001c3a:	d002      	beq.n	8001c42 <HAL_RCCEx_GetPeriphCLKFreq+0x562>
 8001c3c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001c40:	bd08      	pop	{r3, pc}
 8001c42:	2000      	movs	r0, #0
 8001c44:	bd08      	pop	{r3, pc}
 8001c46:	f7fe fd5d 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001c4a:	bd08      	pop	{r3, pc}
 8001c4c:	f7fe fcd4 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001c50:	bd08      	pop	{r3, pc}
 8001c52:	4a2f      	ldr	r2, [pc, #188]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001c54:	6812      	ldr	r2, [r2, #0]
 8001c56:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001c5a:	f43f ae20 	beq.w	800189e <HAL_RCCEx_GetPeriphCLKFreq+0x1be>
 8001c5e:	482e      	ldr	r0, [pc, #184]	; (8001d18 <HAL_RCCEx_GetPeriphCLKFreq+0x638>)
 8001c60:	bd08      	pop	{r3, pc}
 8001c62:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001c66:	f503 3301 	add.w	r3, r3, #132096	; 0x20400
 8001c6a:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001c6e:	f013 0f02 	tst.w	r3, #2
 8001c72:	d002      	beq.n	8001c7a <HAL_RCCEx_GetPeriphCLKFreq+0x59a>
 8001c74:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001c78:	bd08      	pop	{r3, pc}
 8001c7a:	2000      	movs	r0, #0
 8001c7c:	bd08      	pop	{r3, pc}
 8001c7e:	4a24      	ldr	r2, [pc, #144]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001c80:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
 8001c84:	f002 5240 	and.w	r2, r2, #805306368	; 0x30000000
 8001c88:	f1b2 5f40 	cmp.w	r2, #805306368	; 0x30000000
 8001c8c:	d007      	beq.n	8001c9e <HAL_RCCEx_GetPeriphCLKFreq+0x5be>
 8001c8e:	f1b2 5f80 	cmp.w	r2, #268435456	; 0x10000000
 8001c92:	d007      	beq.n	8001ca4 <HAL_RCCEx_GetPeriphCLKFreq+0x5c4>
 8001c94:	f1b2 5f00 	cmp.w	r2, #536870912	; 0x20000000
 8001c98:	d01b      	beq.n	8001cd2 <HAL_RCCEx_GetPeriphCLKFreq+0x5f2>
 8001c9a:	2000      	movs	r0, #0
 8001c9c:	bd08      	pop	{r3, pc}
 8001c9e:	f7fe fcab 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001ca2:	bd08      	pop	{r3, pc}
 8001ca4:	f102 5240 	add.w	r2, r2, #805306368	; 0x30000000
 8001ca8:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
 8001cac:	6912      	ldr	r2, [r2, #16]
 8001cae:	f012 7f80 	tst.w	r2, #16777216	; 0x1000000
 8001cb2:	f000 80e7 	beq.w	8001e84 <HAL_RCCEx_GetPeriphCLKFreq+0x7a4>
 8001cb6:	4a16      	ldr	r2, [pc, #88]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001cb8:	6910      	ldr	r0, [r2, #16]
 8001cba:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001cbe:	fb00 f303 	mul.w	r3, r0, r3
 8001cc2:	6910      	ldr	r0, [r2, #16]
 8001cc4:	f3c0 6041 	ubfx	r0, r0, #25, #2
 8001cc8:	3001      	adds	r0, #1
 8001cca:	0040      	lsls	r0, r0, #1
 8001ccc:	fbb3 f0f0 	udiv	r0, r3, r0
 8001cd0:	bd08      	pop	{r3, pc}
 8001cd2:	f102 5200 	add.w	r2, r2, #536870912	; 0x20000000
 8001cd6:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
 8001cda:	6952      	ldr	r2, [r2, #20]
 8001cdc:	f012 7f80 	tst.w	r2, #16777216	; 0x1000000
 8001ce0:	f000 80d2 	beq.w	8001e88 <HAL_RCCEx_GetPeriphCLKFreq+0x7a8>
 8001ce4:	4a0a      	ldr	r2, [pc, #40]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001ce6:	6950      	ldr	r0, [r2, #20]
 8001ce8:	f3c0 2006 	ubfx	r0, r0, #8, #7
 8001cec:	fb00 f303 	mul.w	r3, r0, r3
 8001cf0:	6950      	ldr	r0, [r2, #20]
 8001cf2:	f3c0 6041 	ubfx	r0, r0, #25, #2
 8001cf6:	3001      	adds	r0, #1
 8001cf8:	0040      	lsls	r0, r0, #1
 8001cfa:	fbb3 f0f0 	udiv	r0, r3, r0
 8001cfe:	bd08      	pop	{r3, pc}
 8001d00:	4b03      	ldr	r3, [pc, #12]	; (8001d10 <HAL_RCCEx_GetPeriphCLKFreq+0x630>)
 8001d02:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001d06:	2b00      	cmp	r3, #0
 8001d08:	db08      	blt.n	8001d1c <HAL_RCCEx_GetPeriphCLKFreq+0x63c>
 8001d0a:	f7fe fd0b 	bl	8000724 <HAL_RCC_GetPCLK2Freq>
 8001d0e:	bd08      	pop	{r3, pc}
 8001d10:	40021000 	.word	0x40021000
 8001d14:	08003eac 	.word	0x08003eac
 8001d18:	00f42400 	.word	0x00f42400
 8001d1c:	f7fe fc6c 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001d20:	bd08      	pop	{r3, pc}
 8001d22:	4b5b      	ldr	r3, [pc, #364]	; (8001e90 <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001d24:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001d28:	f413 5340 	ands.w	r3, r3, #12288	; 0x3000
 8001d2c:	d007      	beq.n	8001d3e <HAL_RCCEx_GetPeriphCLKFreq+0x65e>
 8001d2e:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8001d32:	d007      	beq.n	8001d44 <HAL_RCCEx_GetPeriphCLKFreq+0x664>
 8001d34:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 8001d38:	d007      	beq.n	8001d4a <HAL_RCCEx_GetPeriphCLKFreq+0x66a>
 8001d3a:	2000      	movs	r0, #0
 8001d3c:	bd08      	pop	{r3, pc}
 8001d3e:	f7fe fce1 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001d42:	bd08      	pop	{r3, pc}
 8001d44:	f7fe fc58 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001d48:	bd08      	pop	{r3, pc}
 8001d4a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001d4e:	f503 33f8 	add.w	r3, r3, #126976	; 0x1f000
 8001d52:	681b      	ldr	r3, [r3, #0]
 8001d54:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8001d58:	d001      	beq.n	8001d5e <HAL_RCCEx_GetPeriphCLKFreq+0x67e>
 8001d5a:	484e      	ldr	r0, [pc, #312]	; (8001e94 <HAL_RCCEx_GetPeriphCLKFreq+0x7b4>)
 8001d5c:	bd08      	pop	{r3, pc}
 8001d5e:	2000      	movs	r0, #0
 8001d60:	bd08      	pop	{r3, pc}
 8001d62:	4b4b      	ldr	r3, [pc, #300]	; (8001e90 <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001d64:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001d68:	f413 4340 	ands.w	r3, r3, #49152	; 0xc000
 8001d6c:	d007      	beq.n	8001d7e <HAL_RCCEx_GetPeriphCLKFreq+0x69e>
 8001d6e:	f5b3 4f80 	cmp.w	r3, #16384	; 0x4000
 8001d72:	d007      	beq.n	8001d84 <HAL_RCCEx_GetPeriphCLKFreq+0x6a4>
 8001d74:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8001d78:	d007      	beq.n	8001d8a <HAL_RCCEx_GetPeriphCLKFreq+0x6aa>
 8001d7a:	2000      	movs	r0, #0
 8001d7c:	bd08      	pop	{r3, pc}
 8001d7e:	f7fe fcc1 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001d82:	bd08      	pop	{r3, pc}
 8001d84:	f7fe fc38 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001d88:	bd08      	pop	{r3, pc}
 8001d8a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001d8e:	f503 33c8 	add.w	r3, r3, #102400	; 0x19000
 8001d92:	681b      	ldr	r3, [r3, #0]
 8001d94:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8001d98:	d001      	beq.n	8001d9e <HAL_RCCEx_GetPeriphCLKFreq+0x6be>
 8001d9a:	483e      	ldr	r0, [pc, #248]	; (8001e94 <HAL_RCCEx_GetPeriphCLKFreq+0x7b4>)
 8001d9c:	bd08      	pop	{r3, pc}
 8001d9e:	2000      	movs	r0, #0
 8001da0:	bd08      	pop	{r3, pc}
 8001da2:	f7fe fcaf 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001da6:	bd08      	pop	{r3, pc}
 8001da8:	f7fe fc26 	bl	80005f8 <HAL_RCC_GetSysClockFreq>
 8001dac:	bd08      	pop	{r3, pc}
 8001dae:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001db2:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
 8001db6:	681b      	ldr	r3, [r3, #0]
 8001db8:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8001dbc:	d001      	beq.n	8001dc2 <HAL_RCCEx_GetPeriphCLKFreq+0x6e2>
 8001dbe:	4835      	ldr	r0, [pc, #212]	; (8001e94 <HAL_RCCEx_GetPeriphCLKFreq+0x7b4>)
 8001dc0:	bd08      	pop	{r3, pc}
 8001dc2:	2000      	movs	r0, #0
 8001dc4:	bd08      	pop	{r3, pc}
 8001dc6:	4b32      	ldr	r3, [pc, #200]	; (8001e90 <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001dc8:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001dcc:	f413 2340 	ands.w	r3, r3, #786432	; 0xc0000
 8001dd0:	d00a      	beq.n	8001de8 <HAL_RCCEx_GetPeriphCLKFreq+0x708>
 8001dd2:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 8001dd6:	d00a      	beq.n	8001dee <HAL_RCCEx_GetPeriphCLKFreq+0x70e>
 8001dd8:	f5b3 2f00 	cmp.w	r3, #524288	; 0x80000
 8001ddc:	d010      	beq.n	8001e00 <HAL_RCCEx_GetPeriphCLKFreq+0x720>
 8001dde:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001de2:	d014      	beq.n	8001e0e <HAL_RCCEx_GetPeriphCLKFreq+0x72e>
 8001de4:	2000      	movs	r0, #0
 8001de6:	bd08      	pop	{r3, pc}
 8001de8:	f7fe fc8c 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001dec:	bd08      	pop	{r3, pc}
 8001dee:	4a28      	ldr	r2, [pc, #160]	; (8001e90 <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001df0:	f8d2 2094 	ldr.w	r2, [r2, #148]	; 0x94
 8001df4:	f012 0f02 	tst.w	r2, #2
 8001df8:	d0ee      	beq.n	8001dd8 <HAL_RCCEx_GetPeriphCLKFreq+0x6f8>
 8001dfa:	f44f 40fa 	mov.w	r0, #32000	; 0x7d00
 8001dfe:	bd08      	pop	{r3, pc}
 8001e00:	4a23      	ldr	r2, [pc, #140]	; (8001e90 <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001e02:	6812      	ldr	r2, [r2, #0]
 8001e04:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001e08:	d0e9      	beq.n	8001dde <HAL_RCCEx_GetPeriphCLKFreq+0x6fe>
 8001e0a:	4822      	ldr	r0, [pc, #136]	; (8001e94 <HAL_RCCEx_GetPeriphCLKFreq+0x7b4>)
 8001e0c:	bd08      	pop	{r3, pc}
 8001e0e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001e12:	f5a3 231f 	sub.w	r3, r3, #651264	; 0x9f000
 8001e16:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001e1a:	f013 0f02 	tst.w	r3, #2
 8001e1e:	d002      	beq.n	8001e26 <HAL_RCCEx_GetPeriphCLKFreq+0x746>
 8001e20:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001e24:	bd08      	pop	{r3, pc}
 8001e26:	2000      	movs	r0, #0
 8001e28:	bd08      	pop	{r3, pc}
 8001e2a:	f7fe fc6b 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001e2e:	bd08      	pop	{r3, pc}
 8001e30:	4a17      	ldr	r2, [pc, #92]	; (8001e90 <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001e32:	f8d2 2094 	ldr.w	r2, [r2, #148]	; 0x94
 8001e36:	f012 0f02 	tst.w	r2, #2
 8001e3a:	f43f ad64 	beq.w	8001906 <HAL_RCCEx_GetPeriphCLKFreq+0x226>
 8001e3e:	f44f 40fa 	mov.w	r0, #32000	; 0x7d00
 8001e42:	bd08      	pop	{r3, pc}
 8001e44:	4a12      	ldr	r2, [pc, #72]	; (8001e90 <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001e46:	6812      	ldr	r2, [r2, #0]
 8001e48:	f412 6f80 	tst.w	r2, #1024	; 0x400
 8001e4c:	f43f ad5f 	beq.w	800190e <HAL_RCCEx_GetPeriphCLKFreq+0x22e>
 8001e50:	4810      	ldr	r0, [pc, #64]	; (8001e94 <HAL_RCCEx_GetPeriphCLKFreq+0x7b4>)
 8001e52:	bd08      	pop	{r3, pc}
 8001e54:	4b0e      	ldr	r3, [pc, #56]	; (8001e90 <HAL_RCCEx_GetPeriphCLKFreq+0x7b0>)
 8001e56:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8001e5a:	f013 0f02 	tst.w	r3, #2
 8001e5e:	d002      	beq.n	8001e66 <HAL_RCCEx_GetPeriphCLKFreq+0x786>
 8001e60:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001e64:	bd08      	pop	{r3, pc}
 8001e66:	2000      	movs	r0, #0
 8001e68:	bd08      	pop	{r3, pc}
 8001e6a:	f7fe fc4b 	bl	8000704 <HAL_RCC_GetPCLK1Freq>
 8001e6e:	bd08      	pop	{r3, pc}
 8001e70:	2000      	movs	r0, #0
 8001e72:	bd08      	pop	{r3, pc}
 8001e74:	2000      	movs	r0, #0
 8001e76:	bd08      	pop	{r3, pc}
 8001e78:	2000      	movs	r0, #0
 8001e7a:	bd08      	pop	{r3, pc}
 8001e7c:	2000      	movs	r0, #0
 8001e7e:	bd08      	pop	{r3, pc}
 8001e80:	2000      	movs	r0, #0
 8001e82:	bd08      	pop	{r3, pc}
 8001e84:	2000      	movs	r0, #0
 8001e86:	bd08      	pop	{r3, pc}
 8001e88:	2000      	movs	r0, #0
 8001e8a:	bd08      	pop	{r3, pc}
 8001e8c:	2000      	movs	r0, #0
 8001e8e:	bd08      	pop	{r3, pc}
 8001e90:	40021000 	.word	0x40021000
 8001e94:	00f42400 	.word	0x00f42400

08001e98 <LL_Init1msTick>:
 8001e98:	4b05      	ldr	r3, [pc, #20]	; (8001eb0 <LL_Init1msTick+0x18>)
 8001e9a:	fba3 3000 	umull	r3, r0, r3, r0
 8001e9e:	0980      	lsrs	r0, r0, #6
 8001ea0:	3801      	subs	r0, #1
 8001ea2:	4b04      	ldr	r3, [pc, #16]	; (8001eb4 <LL_Init1msTick+0x1c>)
 8001ea4:	6058      	str	r0, [r3, #4]
 8001ea6:	2200      	movs	r2, #0
 8001ea8:	609a      	str	r2, [r3, #8]
 8001eaa:	2205      	movs	r2, #5
 8001eac:	601a      	str	r2, [r3, #0]
 8001eae:	4770      	bx	lr
 8001eb0:	10624dd3 	.word	0x10624dd3
 8001eb4:	e000e010 	.word	0xe000e010

08001eb8 <LL_mDelay>:
 8001eb8:	b082      	sub	sp, #8
 8001eba:	4b09      	ldr	r3, [pc, #36]	; (8001ee0 <LL_mDelay+0x28>)
 8001ebc:	681b      	ldr	r3, [r3, #0]
 8001ebe:	9301      	str	r3, [sp, #4]
 8001ec0:	9b01      	ldr	r3, [sp, #4]
 8001ec2:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8001ec6:	d000      	beq.n	8001eca <LL_mDelay+0x12>
 8001ec8:	3001      	adds	r0, #1
 8001eca:	b130      	cbz	r0, 8001eda <LL_mDelay+0x22>
 8001ecc:	4b04      	ldr	r3, [pc, #16]	; (8001ee0 <LL_mDelay+0x28>)
 8001ece:	681b      	ldr	r3, [r3, #0]
 8001ed0:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 8001ed4:	d0f9      	beq.n	8001eca <LL_mDelay+0x12>
 8001ed6:	3801      	subs	r0, #1
 8001ed8:	e7f7      	b.n	8001eca <LL_mDelay+0x12>
 8001eda:	b002      	add	sp, #8
 8001edc:	4770      	bx	lr
 8001ede:	bf00      	nop
 8001ee0:	e000e010 	.word	0xe000e010

08001ee4 <LL_SetSystemCoreClock>:
 8001ee4:	4b01      	ldr	r3, [pc, #4]	; (8001eec <LL_SetSystemCoreClock+0x8>)
 8001ee6:	6018      	str	r0, [r3, #0]
 8001ee8:	4770      	bx	lr
 8001eea:	bf00      	nop
 8001eec:	20000000 	.word	0x20000000

08001ef0 <LL_GPIO_Init>:
 8001ef0:	b4f0      	push	{r4, r5, r6, r7}
 8001ef2:	680c      	ldr	r4, [r1, #0]
 8001ef4:	fa94 f4a4 	rbit	r4, r4
 8001ef8:	fab4 f484 	clz	r4, r4
 8001efc:	e02b      	b.n	8001f56 <LL_GPIO_Init+0x66>
 8001efe:	688e      	ldr	r6, [r1, #8]
 8001f00:	6882      	ldr	r2, [r0, #8]
 8001f02:	fa93 f5a3 	rbit	r5, r3
 8001f06:	fab5 f585 	clz	r5, r5
 8001f0a:	006d      	lsls	r5, r5, #1
 8001f0c:	fa07 f505 	lsl.w	r5, r7, r5
 8001f10:	ea22 0205 	bic.w	r2, r2, r5
 8001f14:	fa93 f5a3 	rbit	r5, r3
 8001f18:	fab5 f585 	clz	r5, r5
 8001f1c:	006d      	lsls	r5, r5, #1
 8001f1e:	fa06 f505 	lsl.w	r5, r6, r5
 8001f22:	432a      	orrs	r2, r5
 8001f24:	6082      	str	r2, [r0, #8]
 8001f26:	e037      	b.n	8001f98 <LL_GPIO_Init+0xa8>
 8001f28:	694a      	ldr	r2, [r1, #20]
 8001f2a:	6a45      	ldr	r5, [r0, #36]	; 0x24
 8001f2c:	0a1b      	lsrs	r3, r3, #8
 8001f2e:	fa93 f6a3 	rbit	r6, r3
 8001f32:	fab6 f686 	clz	r6, r6
 8001f36:	00b6      	lsls	r6, r6, #2
 8001f38:	270f      	movs	r7, #15
 8001f3a:	fa07 f606 	lsl.w	r6, r7, r6
 8001f3e:	ea25 0506 	bic.w	r5, r5, r6
 8001f42:	fa93 f3a3 	rbit	r3, r3
 8001f46:	fab3 f383 	clz	r3, r3
 8001f4a:	009b      	lsls	r3, r3, #2
 8001f4c:	fa02 f303 	lsl.w	r3, r2, r3
 8001f50:	432b      	orrs	r3, r5
 8001f52:	6243      	str	r3, [r0, #36]	; 0x24
 8001f54:	3401      	adds	r4, #1
 8001f56:	680b      	ldr	r3, [r1, #0]
 8001f58:	fa33 f204 	lsrs.w	r2, r3, r4
 8001f5c:	d050      	beq.n	8002000 <LL_GPIO_Init+0x110>
 8001f5e:	2201      	movs	r2, #1
 8001f60:	40a2      	lsls	r2, r4
 8001f62:	4013      	ands	r3, r2
 8001f64:	d0f6      	beq.n	8001f54 <LL_GPIO_Init+0x64>
 8001f66:	684e      	ldr	r6, [r1, #4]
 8001f68:	6802      	ldr	r2, [r0, #0]
 8001f6a:	fa93 f5a3 	rbit	r5, r3
 8001f6e:	fab5 f585 	clz	r5, r5
 8001f72:	006d      	lsls	r5, r5, #1
 8001f74:	2703      	movs	r7, #3
 8001f76:	fa07 f505 	lsl.w	r5, r7, r5
 8001f7a:	ea22 0205 	bic.w	r2, r2, r5
 8001f7e:	fa93 f5a3 	rbit	r5, r3
 8001f82:	fab5 f585 	clz	r5, r5
 8001f86:	006d      	lsls	r5, r5, #1
 8001f88:	fa06 f505 	lsl.w	r5, r6, r5
 8001f8c:	432a      	orrs	r2, r5
 8001f8e:	6002      	str	r2, [r0, #0]
 8001f90:	684a      	ldr	r2, [r1, #4]
 8001f92:	3a01      	subs	r2, #1
 8001f94:	2a01      	cmp	r2, #1
 8001f96:	d9b2      	bls.n	8001efe <LL_GPIO_Init+0xe>
 8001f98:	690e      	ldr	r6, [r1, #16]
 8001f9a:	68c2      	ldr	r2, [r0, #12]
 8001f9c:	fa93 f5a3 	rbit	r5, r3
 8001fa0:	fab5 f585 	clz	r5, r5
 8001fa4:	006d      	lsls	r5, r5, #1
 8001fa6:	2703      	movs	r7, #3
 8001fa8:	fa07 f505 	lsl.w	r5, r7, r5
 8001fac:	ea22 0205 	bic.w	r2, r2, r5
 8001fb0:	fa93 f5a3 	rbit	r5, r3
 8001fb4:	fab5 f585 	clz	r5, r5
 8001fb8:	006d      	lsls	r5, r5, #1
 8001fba:	fa06 f505 	lsl.w	r5, r6, r5
 8001fbe:	432a      	orrs	r2, r5
 8001fc0:	60c2      	str	r2, [r0, #12]
 8001fc2:	684a      	ldr	r2, [r1, #4]
 8001fc4:	2a02      	cmp	r2, #2
 8001fc6:	d1c5      	bne.n	8001f54 <LL_GPIO_Init+0x64>
 8001fc8:	fa93 f2a3 	rbit	r2, r3
 8001fcc:	fab2 f282 	clz	r2, r2
 8001fd0:	2a07      	cmp	r2, #7
 8001fd2:	d8a9      	bhi.n	8001f28 <LL_GPIO_Init+0x38>
 8001fd4:	694d      	ldr	r5, [r1, #20]
 8001fd6:	6a02      	ldr	r2, [r0, #32]
 8001fd8:	fa93 f6a3 	rbit	r6, r3
 8001fdc:	fab6 f686 	clz	r6, r6
 8001fe0:	00b6      	lsls	r6, r6, #2
 8001fe2:	270f      	movs	r7, #15
 8001fe4:	fa07 f606 	lsl.w	r6, r7, r6
 8001fe8:	ea22 0206 	bic.w	r2, r2, r6
 8001fec:	fa93 f3a3 	rbit	r3, r3
 8001ff0:	fab3 f383 	clz	r3, r3
 8001ff4:	009b      	lsls	r3, r3, #2
 8001ff6:	fa05 f303 	lsl.w	r3, r5, r3
 8001ffa:	4313      	orrs	r3, r2
 8001ffc:	6203      	str	r3, [r0, #32]
 8001ffe:	e7a9      	b.n	8001f54 <LL_GPIO_Init+0x64>
 8002000:	684a      	ldr	r2, [r1, #4]
 8002002:	3a01      	subs	r2, #1
 8002004:	2a01      	cmp	r2, #1
 8002006:	d902      	bls.n	800200e <LL_GPIO_Init+0x11e>
 8002008:	2001      	movs	r0, #1
 800200a:	bcf0      	pop	{r4, r5, r6, r7}
 800200c:	4770      	bx	lr
 800200e:	68c9      	ldr	r1, [r1, #12]
 8002010:	6842      	ldr	r2, [r0, #4]
 8002012:	ea22 0203 	bic.w	r2, r2, r3
 8002016:	fb01 f303 	mul.w	r3, r1, r3
 800201a:	4313      	orrs	r3, r2
 800201c:	6043      	str	r3, [r0, #4]
 800201e:	e7f3      	b.n	8002008 <LL_GPIO_Init+0x118>

08002020 <RCC_GetHCLKClockFreq>:
 8002020:	4b03      	ldr	r3, [pc, #12]	; (8002030 <RCC_GetHCLKClockFreq+0x10>)
 8002022:	689b      	ldr	r3, [r3, #8]
 8002024:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8002028:	4a02      	ldr	r2, [pc, #8]	; (8002034 <RCC_GetHCLKClockFreq+0x14>)
 800202a:	5cd3      	ldrb	r3, [r2, r3]
 800202c:	40d8      	lsrs	r0, r3
 800202e:	4770      	bx	lr
 8002030:	40021000 	.word	0x40021000
 8002034:	08003e94 	.word	0x08003e94

08002038 <RCC_GetPCLK1ClockFreq>:
 8002038:	4b03      	ldr	r3, [pc, #12]	; (8002048 <RCC_GetPCLK1ClockFreq+0x10>)
 800203a:	689b      	ldr	r3, [r3, #8]
 800203c:	f3c3 2302 	ubfx	r3, r3, #8, #3
 8002040:	4a02      	ldr	r2, [pc, #8]	; (800204c <RCC_GetPCLK1ClockFreq+0x14>)
 8002042:	5cd3      	ldrb	r3, [r2, r3]
 8002044:	40d8      	lsrs	r0, r3
 8002046:	4770      	bx	lr
 8002048:	40021000 	.word	0x40021000
 800204c:	08003ea4 	.word	0x08003ea4

08002050 <RCC_GetPCLK2ClockFreq>:
 8002050:	4b03      	ldr	r3, [pc, #12]	; (8002060 <RCC_GetPCLK2ClockFreq+0x10>)
 8002052:	689b      	ldr	r3, [r3, #8]
 8002054:	f3c3 23c2 	ubfx	r3, r3, #11, #3
 8002058:	4a02      	ldr	r2, [pc, #8]	; (8002064 <RCC_GetPCLK2ClockFreq+0x14>)
 800205a:	5cd3      	ldrb	r3, [r2, r3]
 800205c:	40d8      	lsrs	r0, r3
 800205e:	4770      	bx	lr
 8002060:	40021000 	.word	0x40021000
 8002064:	08003ea4 	.word	0x08003ea4

08002068 <RCC_PLL_GetFreqDomain_SYS>:
 8002068:	4b3b      	ldr	r3, [pc, #236]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 800206a:	68db      	ldr	r3, [r3, #12]
 800206c:	f003 0303 	and.w	r3, r3, #3
 8002070:	2b02      	cmp	r3, #2
 8002072:	d014      	beq.n	800209e <RCC_PLL_GetFreqDomain_SYS+0x36>
 8002074:	2b03      	cmp	r3, #3
 8002076:	d06c      	beq.n	8002152 <RCC_PLL_GetFreqDomain_SYS+0xea>
 8002078:	2b01      	cmp	r3, #1
 800207a:	d025      	beq.n	80020c8 <RCC_PLL_GetFreqDomain_SYS+0x60>
 800207c:	4b36      	ldr	r3, [pc, #216]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 800207e:	681b      	ldr	r3, [r3, #0]
 8002080:	f013 0f08 	tst.w	r3, #8
 8002084:	d151      	bne.n	800212a <RCC_PLL_GetFreqDomain_SYS+0xc2>
 8002086:	4b34      	ldr	r3, [pc, #208]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002088:	681b      	ldr	r3, [r3, #0]
 800208a:	f013 0f08 	tst.w	r3, #8
 800208e:	d046      	beq.n	800211e <RCC_PLL_GetFreqDomain_SYS+0xb6>
 8002090:	4b31      	ldr	r3, [pc, #196]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002092:	681b      	ldr	r3, [r3, #0]
 8002094:	2300      	movs	r3, #0
 8002096:	4a31      	ldr	r2, [pc, #196]	; (800215c <RCC_PLL_GetFreqDomain_SYS+0xf4>)
 8002098:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 800209c:	e000      	b.n	80020a0 <RCC_PLL_GetFreqDomain_SYS+0x38>
 800209e:	4a30      	ldr	r2, [pc, #192]	; (8002160 <RCC_PLL_GetFreqDomain_SYS+0xf8>)
 80020a0:	4b2d      	ldr	r3, [pc, #180]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020a2:	68d8      	ldr	r0, [r3, #12]
 80020a4:	f3c0 1002 	ubfx	r0, r0, #4, #3
 80020a8:	3001      	adds	r0, #1
 80020aa:	fbb2 f2f0 	udiv	r2, r2, r0
 80020ae:	68d8      	ldr	r0, [r3, #12]
 80020b0:	f3c0 2006 	ubfx	r0, r0, #8, #7
 80020b4:	fb00 f002 	mul.w	r0, r0, r2
 80020b8:	68db      	ldr	r3, [r3, #12]
 80020ba:	f3c3 6341 	ubfx	r3, r3, #25, #2
 80020be:	3301      	adds	r3, #1
 80020c0:	005b      	lsls	r3, r3, #1
 80020c2:	fbb0 f0f3 	udiv	r0, r0, r3
 80020c6:	4770      	bx	lr
 80020c8:	4b23      	ldr	r3, [pc, #140]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020ca:	681b      	ldr	r3, [r3, #0]
 80020cc:	f013 0f08 	tst.w	r3, #8
 80020d0:	d111      	bne.n	80020f6 <RCC_PLL_GetFreqDomain_SYS+0x8e>
 80020d2:	4b21      	ldr	r3, [pc, #132]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020d4:	681b      	ldr	r3, [r3, #0]
 80020d6:	f013 0f08 	tst.w	r3, #8
 80020da:	d006      	beq.n	80020ea <RCC_PLL_GetFreqDomain_SYS+0x82>
 80020dc:	4b1e      	ldr	r3, [pc, #120]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020de:	681b      	ldr	r3, [r3, #0]
 80020e0:	2300      	movs	r3, #0
 80020e2:	4a1e      	ldr	r2, [pc, #120]	; (800215c <RCC_PLL_GetFreqDomain_SYS+0xf4>)
 80020e4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80020e8:	e7da      	b.n	80020a0 <RCC_PLL_GetFreqDomain_SYS+0x38>
 80020ea:	4b1b      	ldr	r3, [pc, #108]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020ec:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80020f0:	f3c3 2303 	ubfx	r3, r3, #8, #4
 80020f4:	e7f5      	b.n	80020e2 <RCC_PLL_GetFreqDomain_SYS+0x7a>
 80020f6:	4b18      	ldr	r3, [pc, #96]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 80020f8:	681b      	ldr	r3, [r3, #0]
 80020fa:	f013 0f08 	tst.w	r3, #8
 80020fe:	d007      	beq.n	8002110 <RCC_PLL_GetFreqDomain_SYS+0xa8>
 8002100:	4b15      	ldr	r3, [pc, #84]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002102:	681b      	ldr	r3, [r3, #0]
 8002104:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8002108:	4a14      	ldr	r2, [pc, #80]	; (800215c <RCC_PLL_GetFreqDomain_SYS+0xf4>)
 800210a:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 800210e:	e7c7      	b.n	80020a0 <RCC_PLL_GetFreqDomain_SYS+0x38>
 8002110:	4b11      	ldr	r3, [pc, #68]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002112:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002116:	091b      	lsrs	r3, r3, #4
 8002118:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 800211c:	e7f4      	b.n	8002108 <RCC_PLL_GetFreqDomain_SYS+0xa0>
 800211e:	4b0e      	ldr	r3, [pc, #56]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002120:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002124:	f3c3 2303 	ubfx	r3, r3, #8, #4
 8002128:	e7b5      	b.n	8002096 <RCC_PLL_GetFreqDomain_SYS+0x2e>
 800212a:	4b0b      	ldr	r3, [pc, #44]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 800212c:	681b      	ldr	r3, [r3, #0]
 800212e:	f013 0f08 	tst.w	r3, #8
 8002132:	d007      	beq.n	8002144 <RCC_PLL_GetFreqDomain_SYS+0xdc>
 8002134:	4b08      	ldr	r3, [pc, #32]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002136:	681b      	ldr	r3, [r3, #0]
 8002138:	f3c3 1303 	ubfx	r3, r3, #4, #4
 800213c:	4a07      	ldr	r2, [pc, #28]	; (800215c <RCC_PLL_GetFreqDomain_SYS+0xf4>)
 800213e:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8002142:	e7ad      	b.n	80020a0 <RCC_PLL_GetFreqDomain_SYS+0x38>
 8002144:	4b04      	ldr	r3, [pc, #16]	; (8002158 <RCC_PLL_GetFreqDomain_SYS+0xf0>)
 8002146:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 800214a:	091b      	lsrs	r3, r3, #4
 800214c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8002150:	e7f4      	b.n	800213c <RCC_PLL_GetFreqDomain_SYS+0xd4>
 8002152:	4a04      	ldr	r2, [pc, #16]	; (8002164 <RCC_PLL_GetFreqDomain_SYS+0xfc>)
 8002154:	e7a4      	b.n	80020a0 <RCC_PLL_GetFreqDomain_SYS+0x38>
 8002156:	bf00      	nop
 8002158:	40021000 	.word	0x40021000
 800215c:	08003eac 	.word	0x08003eac
 8002160:	00f42400 	.word	0x00f42400
 8002164:	007a1200 	.word	0x007a1200

08002168 <RCC_GetSystemClockFreq>:
 8002168:	b508      	push	{r3, lr}
 800216a:	4b36      	ldr	r3, [pc, #216]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 800216c:	689b      	ldr	r3, [r3, #8]
 800216e:	f003 030c 	and.w	r3, r3, #12
 8002172:	2b0c      	cmp	r3, #12
 8002174:	d838      	bhi.n	80021e8 <RCC_GetSystemClockFreq+0x80>
 8002176:	e8df f003 	tbb	[pc, r3]
 800217a:	3709      	.short	0x3709
 800217c:	37073737 	.word	0x37073737
 8002180:	37623737 	.word	0x37623737
 8002184:	3737      	.short	0x3737
 8002186:	34          	.byte	0x34
 8002187:	00          	.byte	0x00
 8002188:	482f      	ldr	r0, [pc, #188]	; (8002248 <RCC_GetSystemClockFreq+0xe0>)
 800218a:	bd08      	pop	{r3, pc}
 800218c:	4b2d      	ldr	r3, [pc, #180]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 800218e:	681b      	ldr	r3, [r3, #0]
 8002190:	f013 0f08 	tst.w	r3, #8
 8002194:	d111      	bne.n	80021ba <RCC_GetSystemClockFreq+0x52>
 8002196:	4b2b      	ldr	r3, [pc, #172]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 8002198:	681b      	ldr	r3, [r3, #0]
 800219a:	f013 0f08 	tst.w	r3, #8
 800219e:	d006      	beq.n	80021ae <RCC_GetSystemClockFreq+0x46>
 80021a0:	4b28      	ldr	r3, [pc, #160]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 80021a2:	681b      	ldr	r3, [r3, #0]
 80021a4:	2300      	movs	r3, #0
 80021a6:	4a29      	ldr	r2, [pc, #164]	; (800224c <RCC_GetSystemClockFreq+0xe4>)
 80021a8:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 80021ac:	bd08      	pop	{r3, pc}
 80021ae:	4b25      	ldr	r3, [pc, #148]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 80021b0:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80021b4:	f3c3 2303 	ubfx	r3, r3, #8, #4
 80021b8:	e7f5      	b.n	80021a6 <RCC_GetSystemClockFreq+0x3e>
 80021ba:	4b22      	ldr	r3, [pc, #136]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 80021bc:	681b      	ldr	r3, [r3, #0]
 80021be:	f013 0f08 	tst.w	r3, #8
 80021c2:	d007      	beq.n	80021d4 <RCC_GetSystemClockFreq+0x6c>
 80021c4:	4b1f      	ldr	r3, [pc, #124]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 80021c6:	681b      	ldr	r3, [r3, #0]
 80021c8:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80021cc:	4a1f      	ldr	r2, [pc, #124]	; (800224c <RCC_GetSystemClockFreq+0xe4>)
 80021ce:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 80021d2:	bd08      	pop	{r3, pc}
 80021d4:	4b1b      	ldr	r3, [pc, #108]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 80021d6:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80021da:	091b      	lsrs	r3, r3, #4
 80021dc:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80021e0:	e7f4      	b.n	80021cc <RCC_GetSystemClockFreq+0x64>
 80021e2:	f7ff ff41 	bl	8002068 <RCC_PLL_GetFreqDomain_SYS>
 80021e6:	bd08      	pop	{r3, pc}
 80021e8:	4b16      	ldr	r3, [pc, #88]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 80021ea:	681b      	ldr	r3, [r3, #0]
 80021ec:	f013 0f08 	tst.w	r3, #8
 80021f0:	d111      	bne.n	8002216 <RCC_GetSystemClockFreq+0xae>
 80021f2:	4b14      	ldr	r3, [pc, #80]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 80021f4:	681b      	ldr	r3, [r3, #0]
 80021f6:	f013 0f08 	tst.w	r3, #8
 80021fa:	d006      	beq.n	800220a <RCC_GetSystemClockFreq+0xa2>
 80021fc:	4b11      	ldr	r3, [pc, #68]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 80021fe:	681b      	ldr	r3, [r3, #0]
 8002200:	2300      	movs	r3, #0
 8002202:	4a12      	ldr	r2, [pc, #72]	; (800224c <RCC_GetSystemClockFreq+0xe4>)
 8002204:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 8002208:	bd08      	pop	{r3, pc}
 800220a:	4b0e      	ldr	r3, [pc, #56]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 800220c:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002210:	f3c3 2303 	ubfx	r3, r3, #8, #4
 8002214:	e7f5      	b.n	8002202 <RCC_GetSystemClockFreq+0x9a>
 8002216:	4b0b      	ldr	r3, [pc, #44]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 8002218:	681b      	ldr	r3, [r3, #0]
 800221a:	f013 0f08 	tst.w	r3, #8
 800221e:	d007      	beq.n	8002230 <RCC_GetSystemClockFreq+0xc8>
 8002220:	4b08      	ldr	r3, [pc, #32]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 8002222:	681b      	ldr	r3, [r3, #0]
 8002224:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8002228:	4a08      	ldr	r2, [pc, #32]	; (800224c <RCC_GetSystemClockFreq+0xe4>)
 800222a:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 800222e:	bd08      	pop	{r3, pc}
 8002230:	4b04      	ldr	r3, [pc, #16]	; (8002244 <RCC_GetSystemClockFreq+0xdc>)
 8002232:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002236:	091b      	lsrs	r3, r3, #4
 8002238:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 800223c:	e7f4      	b.n	8002228 <RCC_GetSystemClockFreq+0xc0>
 800223e:	4804      	ldr	r0, [pc, #16]	; (8002250 <RCC_GetSystemClockFreq+0xe8>)
 8002240:	bd08      	pop	{r3, pc}
 8002242:	bf00      	nop
 8002244:	40021000 	.word	0x40021000
 8002248:	00f42400 	.word	0x00f42400
 800224c:	08003eac 	.word	0x08003eac
 8002250:	007a1200 	.word	0x007a1200

08002254 <LL_RCC_GetUSARTClockFreq>:
 8002254:	b508      	push	{r3, lr}
 8002256:	2803      	cmp	r0, #3
 8002258:	d005      	beq.n	8002266 <LL_RCC_GetUSARTClockFreq+0x12>
 800225a:	280c      	cmp	r0, #12
 800225c:	d030      	beq.n	80022c0 <LL_RCC_GetUSARTClockFreq+0x6c>
 800225e:	2830      	cmp	r0, #48	; 0x30
 8002260:	d05b      	beq.n	800231a <LL_RCC_GetUSARTClockFreq+0xc6>
 8002262:	2000      	movs	r0, #0
 8002264:	bd08      	pop	{r3, pc}
 8002266:	4b43      	ldr	r3, [pc, #268]	; (8002374 <LL_RCC_GetUSARTClockFreq+0x120>)
 8002268:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800226c:	4003      	ands	r3, r0
 800226e:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 8002272:	4b41      	ldr	r3, [pc, #260]	; (8002378 <LL_RCC_GetUSARTClockFreq+0x124>)
 8002274:	4298      	cmp	r0, r3
 8002276:	d00f      	beq.n	8002298 <LL_RCC_GetUSARTClockFreq+0x44>
 8002278:	f1b0 1f03 	cmp.w	r0, #196611	; 0x30003
 800227c:	d015      	beq.n	80022aa <LL_RCC_GetUSARTClockFreq+0x56>
 800227e:	3b01      	subs	r3, #1
 8002280:	4298      	cmp	r0, r3
 8002282:	d006      	beq.n	8002292 <LL_RCC_GetUSARTClockFreq+0x3e>
 8002284:	f7ff ff70 	bl	8002168 <RCC_GetSystemClockFreq>
 8002288:	f7ff feca 	bl	8002020 <RCC_GetHCLKClockFreq>
 800228c:	f7ff fee0 	bl	8002050 <RCC_GetPCLK2ClockFreq>
 8002290:	bd08      	pop	{r3, pc}
 8002292:	f7ff ff69 	bl	8002168 <RCC_GetSystemClockFreq>
 8002296:	bd08      	pop	{r3, pc}
 8002298:	4b36      	ldr	r3, [pc, #216]	; (8002374 <LL_RCC_GetUSARTClockFreq+0x120>)
 800229a:	681b      	ldr	r3, [r3, #0]
 800229c:	f413 6f80 	tst.w	r3, #1024	; 0x400
 80022a0:	d001      	beq.n	80022a6 <LL_RCC_GetUSARTClockFreq+0x52>
 80022a2:	4836      	ldr	r0, [pc, #216]	; (800237c <LL_RCC_GetUSARTClockFreq+0x128>)
 80022a4:	bd08      	pop	{r3, pc}
 80022a6:	2000      	movs	r0, #0
 80022a8:	bd08      	pop	{r3, pc}
 80022aa:	4b32      	ldr	r3, [pc, #200]	; (8002374 <LL_RCC_GetUSARTClockFreq+0x120>)
 80022ac:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80022b0:	f013 0f02 	tst.w	r3, #2
 80022b4:	d002      	beq.n	80022bc <LL_RCC_GetUSARTClockFreq+0x68>
 80022b6:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80022ba:	bd08      	pop	{r3, pc}
 80022bc:	2000      	movs	r0, #0
 80022be:	bd08      	pop	{r3, pc}
 80022c0:	4b2c      	ldr	r3, [pc, #176]	; (8002374 <LL_RCC_GetUSARTClockFreq+0x120>)
 80022c2:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80022c6:	4003      	ands	r3, r0
 80022c8:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 80022cc:	4b2c      	ldr	r3, [pc, #176]	; (8002380 <LL_RCC_GetUSARTClockFreq+0x12c>)
 80022ce:	4298      	cmp	r0, r3
 80022d0:	d00f      	beq.n	80022f2 <LL_RCC_GetUSARTClockFreq+0x9e>
 80022d2:	f1b0 1f0c 	cmp.w	r0, #786444	; 0xc000c
 80022d6:	d015      	beq.n	8002304 <LL_RCC_GetUSARTClockFreq+0xb0>
 80022d8:	3b04      	subs	r3, #4
 80022da:	4298      	cmp	r0, r3
 80022dc:	d006      	beq.n	80022ec <LL_RCC_GetUSARTClockFreq+0x98>
 80022de:	f7ff ff43 	bl	8002168 <RCC_GetSystemClockFreq>
 80022e2:	f7ff fe9d 	bl	8002020 <RCC_GetHCLKClockFreq>
 80022e6:	f7ff fea7 	bl	8002038 <RCC_GetPCLK1ClockFreq>
 80022ea:	bd08      	pop	{r3, pc}
 80022ec:	f7ff ff3c 	bl	8002168 <RCC_GetSystemClockFreq>
 80022f0:	bd08      	pop	{r3, pc}
 80022f2:	4b20      	ldr	r3, [pc, #128]	; (8002374 <LL_RCC_GetUSARTClockFreq+0x120>)
 80022f4:	681b      	ldr	r3, [r3, #0]
 80022f6:	f413 6f80 	tst.w	r3, #1024	; 0x400
 80022fa:	d001      	beq.n	8002300 <LL_RCC_GetUSARTClockFreq+0xac>
 80022fc:	481f      	ldr	r0, [pc, #124]	; (800237c <LL_RCC_GetUSARTClockFreq+0x128>)
 80022fe:	bd08      	pop	{r3, pc}
 8002300:	2000      	movs	r0, #0
 8002302:	bd08      	pop	{r3, pc}
 8002304:	4b1b      	ldr	r3, [pc, #108]	; (8002374 <LL_RCC_GetUSARTClockFreq+0x120>)
 8002306:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800230a:	f013 0f02 	tst.w	r3, #2
 800230e:	d002      	beq.n	8002316 <LL_RCC_GetUSARTClockFreq+0xc2>
 8002310:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002314:	bd08      	pop	{r3, pc}
 8002316:	2000      	movs	r0, #0
 8002318:	bd08      	pop	{r3, pc}
 800231a:	4b16      	ldr	r3, [pc, #88]	; (8002374 <LL_RCC_GetUSARTClockFreq+0x120>)
 800231c:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8002320:	4003      	ands	r3, r0
 8002322:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 8002326:	4b17      	ldr	r3, [pc, #92]	; (8002384 <LL_RCC_GetUSARTClockFreq+0x130>)
 8002328:	4298      	cmp	r0, r3
 800232a:	d00f      	beq.n	800234c <LL_RCC_GetUSARTClockFreq+0xf8>
 800232c:	f1b0 1f30 	cmp.w	r0, #3145776	; 0x300030
 8002330:	d015      	beq.n	800235e <LL_RCC_GetUSARTClockFreq+0x10a>
 8002332:	3b10      	subs	r3, #16
 8002334:	4298      	cmp	r0, r3
 8002336:	d006      	beq.n	8002346 <LL_RCC_GetUSARTClockFreq+0xf2>
 8002338:	f7ff ff16 	bl	8002168 <RCC_GetSystemClockFreq>
 800233c:	f7ff fe70 	bl	8002020 <RCC_GetHCLKClockFreq>
 8002340:	f7ff fe7a 	bl	8002038 <RCC_GetPCLK1ClockFreq>
 8002344:	bd08      	pop	{r3, pc}
 8002346:	f7ff ff0f 	bl	8002168 <RCC_GetSystemClockFreq>
 800234a:	bd08      	pop	{r3, pc}
 800234c:	4b09      	ldr	r3, [pc, #36]	; (8002374 <LL_RCC_GetUSARTClockFreq+0x120>)
 800234e:	681b      	ldr	r3, [r3, #0]
 8002350:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8002354:	d001      	beq.n	800235a <LL_RCC_GetUSARTClockFreq+0x106>
 8002356:	4809      	ldr	r0, [pc, #36]	; (800237c <LL_RCC_GetUSARTClockFreq+0x128>)
 8002358:	bd08      	pop	{r3, pc}
 800235a:	2000      	movs	r0, #0
 800235c:	bd08      	pop	{r3, pc}
 800235e:	4b05      	ldr	r3, [pc, #20]	; (8002374 <LL_RCC_GetUSARTClockFreq+0x120>)
 8002360:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002364:	f013 0f02 	tst.w	r3, #2
 8002368:	d002      	beq.n	8002370 <LL_RCC_GetUSARTClockFreq+0x11c>
 800236a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800236e:	bd08      	pop	{r3, pc}
 8002370:	2000      	movs	r0, #0
 8002372:	bd08      	pop	{r3, pc}
 8002374:	40021000 	.word	0x40021000
 8002378:	00030002 	.word	0x00030002
 800237c:	00f42400 	.word	0x00f42400
 8002380:	000c0008 	.word	0x000c0008
 8002384:	00300020 	.word	0x00300020

08002388 <LL_RCC_GetUARTClockFreq>:
 8002388:	b510      	push	{r4, lr}
 800238a:	4604      	mov	r4, r0
 800238c:	28c0      	cmp	r0, #192	; 0xc0
 800238e:	d004      	beq.n	800239a <LL_RCC_GetUARTClockFreq+0x12>
 8002390:	2000      	movs	r0, #0
 8002392:	f5b4 7f40 	cmp.w	r4, #768	; 0x300
 8002396:	d02d      	beq.n	80023f4 <LL_RCC_GetUARTClockFreq+0x6c>
 8002398:	bd10      	pop	{r4, pc}
 800239a:	4b2c      	ldr	r3, [pc, #176]	; (800244c <LL_RCC_GetUARTClockFreq+0xc4>)
 800239c:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80023a0:	4003      	ands	r3, r0
 80023a2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80023a6:	4a2a      	ldr	r2, [pc, #168]	; (8002450 <LL_RCC_GetUARTClockFreq+0xc8>)
 80023a8:	4293      	cmp	r3, r2
 80023aa:	d00f      	beq.n	80023cc <LL_RCC_GetUARTClockFreq+0x44>
 80023ac:	f1b3 1fc0 	cmp.w	r3, #12583104	; 0xc000c0
 80023b0:	d013      	beq.n	80023da <LL_RCC_GetUARTClockFreq+0x52>
 80023b2:	3a40      	subs	r2, #64	; 0x40
 80023b4:	4293      	cmp	r3, r2
 80023b6:	d006      	beq.n	80023c6 <LL_RCC_GetUARTClockFreq+0x3e>
 80023b8:	f7ff fed6 	bl	8002168 <RCC_GetSystemClockFreq>
 80023bc:	f7ff fe30 	bl	8002020 <RCC_GetHCLKClockFreq>
 80023c0:	f7ff fe3a 	bl	8002038 <RCC_GetPCLK1ClockFreq>
 80023c4:	e7e5      	b.n	8002392 <LL_RCC_GetUARTClockFreq+0xa>
 80023c6:	f7ff fecf 	bl	8002168 <RCC_GetSystemClockFreq>
 80023ca:	e7e2      	b.n	8002392 <LL_RCC_GetUARTClockFreq+0xa>
 80023cc:	4b1f      	ldr	r3, [pc, #124]	; (800244c <LL_RCC_GetUARTClockFreq+0xc4>)
 80023ce:	681b      	ldr	r3, [r3, #0]
 80023d0:	f413 6f80 	tst.w	r3, #1024	; 0x400
 80023d4:	d109      	bne.n	80023ea <LL_RCC_GetUARTClockFreq+0x62>
 80023d6:	2000      	movs	r0, #0
 80023d8:	e7db      	b.n	8002392 <LL_RCC_GetUARTClockFreq+0xa>
 80023da:	4b1c      	ldr	r3, [pc, #112]	; (800244c <LL_RCC_GetUARTClockFreq+0xc4>)
 80023dc:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80023e0:	f013 0f02 	tst.w	r3, #2
 80023e4:	d103      	bne.n	80023ee <LL_RCC_GetUARTClockFreq+0x66>
 80023e6:	2000      	movs	r0, #0
 80023e8:	e7d3      	b.n	8002392 <LL_RCC_GetUARTClockFreq+0xa>
 80023ea:	481a      	ldr	r0, [pc, #104]	; (8002454 <LL_RCC_GetUARTClockFreq+0xcc>)
 80023ec:	e7d1      	b.n	8002392 <LL_RCC_GetUARTClockFreq+0xa>
 80023ee:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80023f2:	e7ce      	b.n	8002392 <LL_RCC_GetUARTClockFreq+0xa>
 80023f4:	4b15      	ldr	r3, [pc, #84]	; (800244c <LL_RCC_GetUARTClockFreq+0xc4>)
 80023f6:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80023fa:	4023      	ands	r3, r4
 80023fc:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8002400:	4b15      	ldr	r3, [pc, #84]	; (8002458 <LL_RCC_GetUARTClockFreq+0xd0>)
 8002402:	429c      	cmp	r4, r3
 8002404:	d010      	beq.n	8002428 <LL_RCC_GetUARTClockFreq+0xa0>
 8002406:	f1b4 2f03 	cmp.w	r4, #50332416	; 0x3000300
 800240a:	d015      	beq.n	8002438 <LL_RCC_GetUARTClockFreq+0xb0>
 800240c:	f5a3 7380 	sub.w	r3, r3, #256	; 0x100
 8002410:	429c      	cmp	r4, r3
 8002412:	d006      	beq.n	8002422 <LL_RCC_GetUARTClockFreq+0x9a>
 8002414:	f7ff fea8 	bl	8002168 <RCC_GetSystemClockFreq>
 8002418:	f7ff fe02 	bl	8002020 <RCC_GetHCLKClockFreq>
 800241c:	f7ff fe0c 	bl	8002038 <RCC_GetPCLK1ClockFreq>
 8002420:	bd10      	pop	{r4, pc}
 8002422:	f7ff fea1 	bl	8002168 <RCC_GetSystemClockFreq>
 8002426:	bd10      	pop	{r4, pc}
 8002428:	4b08      	ldr	r3, [pc, #32]	; (800244c <LL_RCC_GetUARTClockFreq+0xc4>)
 800242a:	681b      	ldr	r3, [r3, #0]
 800242c:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8002430:	d001      	beq.n	8002436 <LL_RCC_GetUARTClockFreq+0xae>
 8002432:	4808      	ldr	r0, [pc, #32]	; (8002454 <LL_RCC_GetUARTClockFreq+0xcc>)
 8002434:	bd10      	pop	{r4, pc}
 8002436:	bd10      	pop	{r4, pc}
 8002438:	4b04      	ldr	r3, [pc, #16]	; (800244c <LL_RCC_GetUARTClockFreq+0xc4>)
 800243a:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800243e:	f013 0f02 	tst.w	r3, #2
 8002442:	d002      	beq.n	800244a <LL_RCC_GetUARTClockFreq+0xc2>
 8002444:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002448:	e7a6      	b.n	8002398 <LL_RCC_GetUARTClockFreq+0x10>
 800244a:	bd10      	pop	{r4, pc}
 800244c:	40021000 	.word	0x40021000
 8002450:	00c00080 	.word	0x00c00080
 8002454:	00f42400 	.word	0x00f42400
 8002458:	03000200 	.word	0x03000200

0800245c <LL_SPI_Init>:
 800245c:	6803      	ldr	r3, [r0, #0]
 800245e:	f013 0f40 	tst.w	r3, #64	; 0x40
 8002462:	d12c      	bne.n	80024be <LL_SPI_Init+0x62>
 8002464:	b410      	push	{r4}
 8002466:	6802      	ldr	r2, [r0, #0]
 8002468:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
 800246c:	f022 02bf 	bic.w	r2, r2, #191	; 0xbf
 8002470:	680b      	ldr	r3, [r1, #0]
 8002472:	684c      	ldr	r4, [r1, #4]
 8002474:	4323      	orrs	r3, r4
 8002476:	68cc      	ldr	r4, [r1, #12]
 8002478:	4323      	orrs	r3, r4
 800247a:	690c      	ldr	r4, [r1, #16]
 800247c:	4323      	orrs	r3, r4
 800247e:	694c      	ldr	r4, [r1, #20]
 8002480:	4323      	orrs	r3, r4
 8002482:	698c      	ldr	r4, [r1, #24]
 8002484:	4323      	orrs	r3, r4
 8002486:	69cc      	ldr	r4, [r1, #28]
 8002488:	4323      	orrs	r3, r4
 800248a:	6a0c      	ldr	r4, [r1, #32]
 800248c:	4323      	orrs	r3, r4
 800248e:	4313      	orrs	r3, r2
 8002490:	6003      	str	r3, [r0, #0]
 8002492:	6843      	ldr	r3, [r0, #4]
 8002494:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8002498:	f023 0304 	bic.w	r3, r3, #4
 800249c:	688a      	ldr	r2, [r1, #8]
 800249e:	8acc      	ldrh	r4, [r1, #22]
 80024a0:	4322      	orrs	r2, r4
 80024a2:	4313      	orrs	r3, r2
 80024a4:	6043      	str	r3, [r0, #4]
 80024a6:	6a0b      	ldr	r3, [r1, #32]
 80024a8:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 80024ac:	d003      	beq.n	80024b6 <LL_SPI_Init+0x5a>
 80024ae:	2001      	movs	r0, #1
 80024b0:	f85d 4b04 	ldr.w	r4, [sp], #4
 80024b4:	4770      	bx	lr
 80024b6:	8c8b      	ldrh	r3, [r1, #36]	; 0x24
 80024b8:	6103      	str	r3, [r0, #16]
 80024ba:	2001      	movs	r0, #1
 80024bc:	e7f8      	b.n	80024b0 <LL_SPI_Init+0x54>
 80024be:	2000      	movs	r0, #0
 80024c0:	4770      	bx	lr
	...

080024c4 <LL_USART_Init>:
 80024c4:	b538      	push	{r3, r4, r5, lr}
 80024c6:	6803      	ldr	r3, [r0, #0]
 80024c8:	f013 0f01 	tst.w	r3, #1
 80024cc:	d15b      	bne.n	8002586 <LL_USART_Init+0xc2>
 80024ce:	460d      	mov	r5, r1
 80024d0:	4604      	mov	r4, r0
 80024d2:	6803      	ldr	r3, [r0, #0]
 80024d4:	4a2f      	ldr	r2, [pc, #188]	; (8002594 <LL_USART_Init+0xd0>)
 80024d6:	401a      	ands	r2, r3
 80024d8:	684b      	ldr	r3, [r1, #4]
 80024da:	68c9      	ldr	r1, [r1, #12]
 80024dc:	430b      	orrs	r3, r1
 80024de:	6929      	ldr	r1, [r5, #16]
 80024e0:	430b      	orrs	r3, r1
 80024e2:	69a9      	ldr	r1, [r5, #24]
 80024e4:	430b      	orrs	r3, r1
 80024e6:	4313      	orrs	r3, r2
 80024e8:	6003      	str	r3, [r0, #0]
 80024ea:	68ab      	ldr	r3, [r5, #8]
 80024ec:	6842      	ldr	r2, [r0, #4]
 80024ee:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 80024f2:	4313      	orrs	r3, r2
 80024f4:	6043      	str	r3, [r0, #4]
 80024f6:	696b      	ldr	r3, [r5, #20]
 80024f8:	6882      	ldr	r2, [r0, #8]
 80024fa:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80024fe:	4313      	orrs	r3, r2
 8002500:	6083      	str	r3, [r0, #8]
 8002502:	4b25      	ldr	r3, [pc, #148]	; (8002598 <LL_USART_Init+0xd4>)
 8002504:	4298      	cmp	r0, r3
 8002506:	d01b      	beq.n	8002540 <LL_USART_Init+0x7c>
 8002508:	4b24      	ldr	r3, [pc, #144]	; (800259c <LL_USART_Init+0xd8>)
 800250a:	4298      	cmp	r0, r3
 800250c:	d01c      	beq.n	8002548 <LL_USART_Init+0x84>
 800250e:	4b24      	ldr	r3, [pc, #144]	; (80025a0 <LL_USART_Init+0xdc>)
 8002510:	4298      	cmp	r0, r3
 8002512:	d01d      	beq.n	8002550 <LL_USART_Init+0x8c>
 8002514:	4b23      	ldr	r3, [pc, #140]	; (80025a4 <LL_USART_Init+0xe0>)
 8002516:	4298      	cmp	r0, r3
 8002518:	d01e      	beq.n	8002558 <LL_USART_Init+0x94>
 800251a:	4b23      	ldr	r3, [pc, #140]	; (80025a8 <LL_USART_Init+0xe4>)
 800251c:	4298      	cmp	r0, r3
 800251e:	d01f      	beq.n	8002560 <LL_USART_Init+0x9c>
 8002520:	2000      	movs	r0, #0
 8002522:	b390      	cbz	r0, 800258a <LL_USART_Init+0xc6>
 8002524:	682b      	ldr	r3, [r5, #0]
 8002526:	b393      	cbz	r3, 800258e <LL_USART_Init+0xca>
 8002528:	69aa      	ldr	r2, [r5, #24]
 800252a:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 800252e:	d01c      	beq.n	800256a <LL_USART_Init+0xa6>
 8002530:	eb00 0053 	add.w	r0, r0, r3, lsr #1
 8002534:	fbb0 f0f3 	udiv	r0, r0, r3
 8002538:	b280      	uxth	r0, r0
 800253a:	60e0      	str	r0, [r4, #12]
 800253c:	2001      	movs	r0, #1
 800253e:	bd38      	pop	{r3, r4, r5, pc}
 8002540:	2003      	movs	r0, #3
 8002542:	f7ff fe87 	bl	8002254 <LL_RCC_GetUSARTClockFreq>
 8002546:	e7ec      	b.n	8002522 <LL_USART_Init+0x5e>
 8002548:	200c      	movs	r0, #12
 800254a:	f7ff fe83 	bl	8002254 <LL_RCC_GetUSARTClockFreq>
 800254e:	e7e8      	b.n	8002522 <LL_USART_Init+0x5e>
 8002550:	2030      	movs	r0, #48	; 0x30
 8002552:	f7ff fe7f 	bl	8002254 <LL_RCC_GetUSARTClockFreq>
 8002556:	e7e4      	b.n	8002522 <LL_USART_Init+0x5e>
 8002558:	20c0      	movs	r0, #192	; 0xc0
 800255a:	f7ff ff15 	bl	8002388 <LL_RCC_GetUARTClockFreq>
 800255e:	e7e0      	b.n	8002522 <LL_USART_Init+0x5e>
 8002560:	f44f 7040 	mov.w	r0, #768	; 0x300
 8002564:	f7ff ff10 	bl	8002388 <LL_RCC_GetUARTClockFreq>
 8002568:	e7db      	b.n	8002522 <LL_USART_Init+0x5e>
 800256a:	085a      	lsrs	r2, r3, #1
 800256c:	eb02 0040 	add.w	r0, r2, r0, lsl #1
 8002570:	fbb0 f0f3 	udiv	r0, r0, r3
 8002574:	f64f 73f0 	movw	r3, #65520	; 0xfff0
 8002578:	4003      	ands	r3, r0
 800257a:	f3c0 0042 	ubfx	r0, r0, #1, #3
 800257e:	4318      	orrs	r0, r3
 8002580:	60e0      	str	r0, [r4, #12]
 8002582:	2001      	movs	r0, #1
 8002584:	bd38      	pop	{r3, r4, r5, pc}
 8002586:	2000      	movs	r0, #0
 8002588:	bd38      	pop	{r3, r4, r5, pc}
 800258a:	2000      	movs	r0, #0
 800258c:	bd38      	pop	{r3, r4, r5, pc}
 800258e:	2000      	movs	r0, #0
 8002590:	bd38      	pop	{r3, r4, r5, pc}
 8002592:	bf00      	nop
 8002594:	efff69f3 	.word	0xefff69f3
 8002598:	40013800 	.word	0x40013800
 800259c:	40004400 	.word	0x40004400
 80025a0:	40004800 	.word	0x40004800
 80025a4:	40004c00 	.word	0x40004c00
 80025a8:	40005000 	.word	0x40005000

080025ac <LL_USART_ClockInit>:
 80025ac:	6803      	ldr	r3, [r0, #0]
 80025ae:	f013 0f01 	tst.w	r3, #1
 80025b2:	d118      	bne.n	80025e6 <LL_USART_ClockInit+0x3a>
 80025b4:	680b      	ldr	r3, [r1, #0]
 80025b6:	b183      	cbz	r3, 80025da <LL_USART_ClockInit+0x2e>
 80025b8:	b410      	push	{r4}
 80025ba:	6843      	ldr	r3, [r0, #4]
 80025bc:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80025c0:	684a      	ldr	r2, [r1, #4]
 80025c2:	688c      	ldr	r4, [r1, #8]
 80025c4:	4322      	orrs	r2, r4
 80025c6:	68c9      	ldr	r1, [r1, #12]
 80025c8:	430a      	orrs	r2, r1
 80025ca:	4313      	orrs	r3, r2
 80025cc:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80025d0:	6043      	str	r3, [r0, #4]
 80025d2:	2001      	movs	r0, #1
 80025d4:	f85d 4b04 	ldr.w	r4, [sp], #4
 80025d8:	4770      	bx	lr
 80025da:	6843      	ldr	r3, [r0, #4]
 80025dc:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80025e0:	6043      	str	r3, [r0, #4]
 80025e2:	2001      	movs	r0, #1
 80025e4:	4770      	bx	lr
 80025e6:	2000      	movs	r0, #0
 80025e8:	4770      	bx	lr
	...

080025ec <OC1Config>:
 80025ec:	b430      	push	{r4, r5}
 80025ee:	6a03      	ldr	r3, [r0, #32]
 80025f0:	f023 0301 	bic.w	r3, r3, #1
 80025f4:	6203      	str	r3, [r0, #32]
 80025f6:	6a03      	ldr	r3, [r0, #32]
 80025f8:	6844      	ldr	r4, [r0, #4]
 80025fa:	6982      	ldr	r2, [r0, #24]
 80025fc:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002600:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8002604:	680d      	ldr	r5, [r1, #0]
 8002606:	432a      	orrs	r2, r5
 8002608:	f023 0302 	bic.w	r3, r3, #2
 800260c:	690d      	ldr	r5, [r1, #16]
 800260e:	432b      	orrs	r3, r5
 8002610:	f023 0301 	bic.w	r3, r3, #1
 8002614:	684d      	ldr	r5, [r1, #4]
 8002616:	432b      	orrs	r3, r5
 8002618:	4d16      	ldr	r5, [pc, #88]	; (8002674 <OC1Config+0x88>)
 800261a:	42a8      	cmp	r0, r5
 800261c:	d00f      	beq.n	800263e <OC1Config+0x52>
 800261e:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002622:	42a8      	cmp	r0, r5
 8002624:	d00b      	beq.n	800263e <OC1Config+0x52>
 8002626:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 800262a:	42a8      	cmp	r0, r5
 800262c:	d007      	beq.n	800263e <OC1Config+0x52>
 800262e:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002632:	42a8      	cmp	r0, r5
 8002634:	d003      	beq.n	800263e <OC1Config+0x52>
 8002636:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 800263a:	42a8      	cmp	r0, r5
 800263c:	d112      	bne.n	8002664 <OC1Config+0x78>
 800263e:	f023 0308 	bic.w	r3, r3, #8
 8002642:	694d      	ldr	r5, [r1, #20]
 8002644:	ea43 0385 	orr.w	r3, r3, r5, lsl #2
 8002648:	f023 0304 	bic.w	r3, r3, #4
 800264c:	688d      	ldr	r5, [r1, #8]
 800264e:	ea43 0385 	orr.w	r3, r3, r5, lsl #2
 8002652:	f424 7480 	bic.w	r4, r4, #256	; 0x100
 8002656:	698d      	ldr	r5, [r1, #24]
 8002658:	432c      	orrs	r4, r5
 800265a:	f424 7400 	bic.w	r4, r4, #512	; 0x200
 800265e:	69cd      	ldr	r5, [r1, #28]
 8002660:	ea44 0445 	orr.w	r4, r4, r5, lsl #1
 8002664:	6044      	str	r4, [r0, #4]
 8002666:	6182      	str	r2, [r0, #24]
 8002668:	68ca      	ldr	r2, [r1, #12]
 800266a:	6342      	str	r2, [r0, #52]	; 0x34
 800266c:	6203      	str	r3, [r0, #32]
 800266e:	2001      	movs	r0, #1
 8002670:	bc30      	pop	{r4, r5}
 8002672:	4770      	bx	lr
 8002674:	40012c00 	.word	0x40012c00

08002678 <OC2Config>:
 8002678:	b430      	push	{r4, r5}
 800267a:	6a03      	ldr	r3, [r0, #32]
 800267c:	f023 0310 	bic.w	r3, r3, #16
 8002680:	6203      	str	r3, [r0, #32]
 8002682:	6a03      	ldr	r3, [r0, #32]
 8002684:	6844      	ldr	r4, [r0, #4]
 8002686:	6982      	ldr	r2, [r0, #24]
 8002688:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 800268c:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8002690:	680d      	ldr	r5, [r1, #0]
 8002692:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
 8002696:	f023 0320 	bic.w	r3, r3, #32
 800269a:	690d      	ldr	r5, [r1, #16]
 800269c:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 80026a0:	f023 0310 	bic.w	r3, r3, #16
 80026a4:	684d      	ldr	r5, [r1, #4]
 80026a6:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 80026aa:	4d17      	ldr	r5, [pc, #92]	; (8002708 <OC2Config+0x90>)
 80026ac:	42a8      	cmp	r0, r5
 80026ae:	d00f      	beq.n	80026d0 <OC2Config+0x58>
 80026b0:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80026b4:	42a8      	cmp	r0, r5
 80026b6:	d00b      	beq.n	80026d0 <OC2Config+0x58>
 80026b8:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 80026bc:	42a8      	cmp	r0, r5
 80026be:	d007      	beq.n	80026d0 <OC2Config+0x58>
 80026c0:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80026c4:	42a8      	cmp	r0, r5
 80026c6:	d003      	beq.n	80026d0 <OC2Config+0x58>
 80026c8:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80026cc:	42a8      	cmp	r0, r5
 80026ce:	d113      	bne.n	80026f8 <OC2Config+0x80>
 80026d0:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80026d4:	694d      	ldr	r5, [r1, #20]
 80026d6:	ea43 1385 	orr.w	r3, r3, r5, lsl #6
 80026da:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80026de:	688d      	ldr	r5, [r1, #8]
 80026e0:	ea43 1385 	orr.w	r3, r3, r5, lsl #6
 80026e4:	f424 6480 	bic.w	r4, r4, #1024	; 0x400
 80026e8:	698d      	ldr	r5, [r1, #24]
 80026ea:	ea44 0485 	orr.w	r4, r4, r5, lsl #2
 80026ee:	f424 6400 	bic.w	r4, r4, #2048	; 0x800
 80026f2:	69cd      	ldr	r5, [r1, #28]
 80026f4:	ea44 04c5 	orr.w	r4, r4, r5, lsl #3
 80026f8:	6044      	str	r4, [r0, #4]
 80026fa:	6182      	str	r2, [r0, #24]
 80026fc:	68ca      	ldr	r2, [r1, #12]
 80026fe:	6382      	str	r2, [r0, #56]	; 0x38
 8002700:	6203      	str	r3, [r0, #32]
 8002702:	2001      	movs	r0, #1
 8002704:	bc30      	pop	{r4, r5}
 8002706:	4770      	bx	lr
 8002708:	40012c00 	.word	0x40012c00

0800270c <OC3Config>:
 800270c:	b430      	push	{r4, r5}
 800270e:	6a03      	ldr	r3, [r0, #32]
 8002710:	f423 7380 	bic.w	r3, r3, #256	; 0x100
 8002714:	6203      	str	r3, [r0, #32]
 8002716:	6a03      	ldr	r3, [r0, #32]
 8002718:	6844      	ldr	r4, [r0, #4]
 800271a:	69c2      	ldr	r2, [r0, #28]
 800271c:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002720:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8002724:	680d      	ldr	r5, [r1, #0]
 8002726:	432a      	orrs	r2, r5
 8002728:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 800272c:	690d      	ldr	r5, [r1, #16]
 800272e:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
 8002732:	f423 7380 	bic.w	r3, r3, #256	; 0x100
 8002736:	684d      	ldr	r5, [r1, #4]
 8002738:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
 800273c:	4d17      	ldr	r5, [pc, #92]	; (800279c <OC3Config+0x90>)
 800273e:	42a8      	cmp	r0, r5
 8002740:	d00f      	beq.n	8002762 <OC3Config+0x56>
 8002742:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002746:	42a8      	cmp	r0, r5
 8002748:	d00b      	beq.n	8002762 <OC3Config+0x56>
 800274a:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 800274e:	42a8      	cmp	r0, r5
 8002750:	d007      	beq.n	8002762 <OC3Config+0x56>
 8002752:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002756:	42a8      	cmp	r0, r5
 8002758:	d003      	beq.n	8002762 <OC3Config+0x56>
 800275a:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 800275e:	42a8      	cmp	r0, r5
 8002760:	d113      	bne.n	800278a <OC3Config+0x7e>
 8002762:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8002766:	694d      	ldr	r5, [r1, #20]
 8002768:	ea43 2385 	orr.w	r3, r3, r5, lsl #10
 800276c:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8002770:	688d      	ldr	r5, [r1, #8]
 8002772:	ea43 2385 	orr.w	r3, r3, r5, lsl #10
 8002776:	f424 5480 	bic.w	r4, r4, #4096	; 0x1000
 800277a:	698d      	ldr	r5, [r1, #24]
 800277c:	ea44 1405 	orr.w	r4, r4, r5, lsl #4
 8002780:	f424 5400 	bic.w	r4, r4, #8192	; 0x2000
 8002784:	69cd      	ldr	r5, [r1, #28]
 8002786:	ea44 1445 	orr.w	r4, r4, r5, lsl #5
 800278a:	6044      	str	r4, [r0, #4]
 800278c:	61c2      	str	r2, [r0, #28]
 800278e:	68ca      	ldr	r2, [r1, #12]
 8002790:	63c2      	str	r2, [r0, #60]	; 0x3c
 8002792:	6203      	str	r3, [r0, #32]
 8002794:	2001      	movs	r0, #1
 8002796:	bc30      	pop	{r4, r5}
 8002798:	4770      	bx	lr
 800279a:	bf00      	nop
 800279c:	40012c00 	.word	0x40012c00

080027a0 <OC4Config>:
 80027a0:	b430      	push	{r4, r5}
 80027a2:	6a03      	ldr	r3, [r0, #32]
 80027a4:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80027a8:	6203      	str	r3, [r0, #32]
 80027aa:	6a03      	ldr	r3, [r0, #32]
 80027ac:	6844      	ldr	r4, [r0, #4]
 80027ae:	69c2      	ldr	r2, [r0, #28]
 80027b0:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 80027b4:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 80027b8:	680d      	ldr	r5, [r1, #0]
 80027ba:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
 80027be:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 80027c2:	690d      	ldr	r5, [r1, #16]
 80027c4:	ea43 3305 	orr.w	r3, r3, r5, lsl #12
 80027c8:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80027cc:	684d      	ldr	r5, [r1, #4]
 80027ce:	ea43 3305 	orr.w	r3, r3, r5, lsl #12
 80027d2:	4d10      	ldr	r5, [pc, #64]	; (8002814 <OC4Config+0x74>)
 80027d4:	42a8      	cmp	r0, r5
 80027d6:	d00f      	beq.n	80027f8 <OC4Config+0x58>
 80027d8:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80027dc:	42a8      	cmp	r0, r5
 80027de:	d00b      	beq.n	80027f8 <OC4Config+0x58>
 80027e0:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 80027e4:	42a8      	cmp	r0, r5
 80027e6:	d007      	beq.n	80027f8 <OC4Config+0x58>
 80027e8:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80027ec:	42a8      	cmp	r0, r5
 80027ee:	d003      	beq.n	80027f8 <OC4Config+0x58>
 80027f0:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80027f4:	42a8      	cmp	r0, r5
 80027f6:	d104      	bne.n	8002802 <OC4Config+0x62>
 80027f8:	f424 4480 	bic.w	r4, r4, #16384	; 0x4000
 80027fc:	698d      	ldr	r5, [r1, #24]
 80027fe:	ea44 1485 	orr.w	r4, r4, r5, lsl #6
 8002802:	6044      	str	r4, [r0, #4]
 8002804:	61c2      	str	r2, [r0, #28]
 8002806:	68ca      	ldr	r2, [r1, #12]
 8002808:	6402      	str	r2, [r0, #64]	; 0x40
 800280a:	6203      	str	r3, [r0, #32]
 800280c:	2001      	movs	r0, #1
 800280e:	bc30      	pop	{r4, r5}
 8002810:	4770      	bx	lr
 8002812:	bf00      	nop
 8002814:	40012c00 	.word	0x40012c00

08002818 <OC5Config>:
 8002818:	b430      	push	{r4, r5}
 800281a:	6a03      	ldr	r3, [r0, #32]
 800281c:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8002820:	6203      	str	r3, [r0, #32]
 8002822:	6a03      	ldr	r3, [r0, #32]
 8002824:	6d42      	ldr	r2, [r0, #84]	; 0x54
 8002826:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800282a:	f022 0270 	bic.w	r2, r2, #112	; 0x70
 800282e:	680c      	ldr	r4, [r1, #0]
 8002830:	4322      	orrs	r2, r4
 8002832:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8002836:	690c      	ldr	r4, [r1, #16]
 8002838:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
 800283c:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8002840:	684c      	ldr	r4, [r1, #4]
 8002842:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
 8002846:	4c10      	ldr	r4, [pc, #64]	; (8002888 <OC5Config+0x70>)
 8002848:	42a0      	cmp	r0, r4
 800284a:	d00f      	beq.n	800286c <OC5Config+0x54>
 800284c:	f504 6400 	add.w	r4, r4, #2048	; 0x800
 8002850:	42a0      	cmp	r0, r4
 8002852:	d00b      	beq.n	800286c <OC5Config+0x54>
 8002854:	f504 6440 	add.w	r4, r4, #3072	; 0xc00
 8002858:	42a0      	cmp	r0, r4
 800285a:	d007      	beq.n	800286c <OC5Config+0x54>
 800285c:	f504 6480 	add.w	r4, r4, #1024	; 0x400
 8002860:	42a0      	cmp	r0, r4
 8002862:	d003      	beq.n	800286c <OC5Config+0x54>
 8002864:	f504 6480 	add.w	r4, r4, #1024	; 0x400
 8002868:	42a0      	cmp	r0, r4
 800286a:	d106      	bne.n	800287a <OC5Config+0x62>
 800286c:	6844      	ldr	r4, [r0, #4]
 800286e:	f424 3480 	bic.w	r4, r4, #65536	; 0x10000
 8002872:	698d      	ldr	r5, [r1, #24]
 8002874:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
 8002878:	6044      	str	r4, [r0, #4]
 800287a:	6542      	str	r2, [r0, #84]	; 0x54
 800287c:	68ca      	ldr	r2, [r1, #12]
 800287e:	6582      	str	r2, [r0, #88]	; 0x58
 8002880:	6203      	str	r3, [r0, #32]
 8002882:	2001      	movs	r0, #1
 8002884:	bc30      	pop	{r4, r5}
 8002886:	4770      	bx	lr
 8002888:	40012c00 	.word	0x40012c00

0800288c <OC6Config>:
 800288c:	b430      	push	{r4, r5}
 800288e:	6a03      	ldr	r3, [r0, #32]
 8002890:	f423 1380 	bic.w	r3, r3, #1048576	; 0x100000
 8002894:	6203      	str	r3, [r0, #32]
 8002896:	6a03      	ldr	r3, [r0, #32]
 8002898:	6d42      	ldr	r2, [r0, #84]	; 0x54
 800289a:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 800289e:	f422 42e0 	bic.w	r2, r2, #28672	; 0x7000
 80028a2:	680c      	ldr	r4, [r1, #0]
 80028a4:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
 80028a8:	f423 1300 	bic.w	r3, r3, #2097152	; 0x200000
 80028ac:	690c      	ldr	r4, [r1, #16]
 80028ae:	ea43 5304 	orr.w	r3, r3, r4, lsl #20
 80028b2:	f423 1380 	bic.w	r3, r3, #1048576	; 0x100000
 80028b6:	684c      	ldr	r4, [r1, #4]
 80028b8:	ea43 5304 	orr.w	r3, r3, r4, lsl #20
 80028bc:	4c10      	ldr	r4, [pc, #64]	; (8002900 <OC6Config+0x74>)
 80028be:	42a0      	cmp	r0, r4
 80028c0:	d00f      	beq.n	80028e2 <OC6Config+0x56>
 80028c2:	f504 6400 	add.w	r4, r4, #2048	; 0x800
 80028c6:	42a0      	cmp	r0, r4
 80028c8:	d00b      	beq.n	80028e2 <OC6Config+0x56>
 80028ca:	f504 6440 	add.w	r4, r4, #3072	; 0xc00
 80028ce:	42a0      	cmp	r0, r4
 80028d0:	d007      	beq.n	80028e2 <OC6Config+0x56>
 80028d2:	f504 6480 	add.w	r4, r4, #1024	; 0x400
 80028d6:	42a0      	cmp	r0, r4
 80028d8:	d003      	beq.n	80028e2 <OC6Config+0x56>
 80028da:	f504 6480 	add.w	r4, r4, #1024	; 0x400
 80028de:	42a0      	cmp	r0, r4
 80028e0:	d106      	bne.n	80028f0 <OC6Config+0x64>
 80028e2:	6844      	ldr	r4, [r0, #4]
 80028e4:	f424 2480 	bic.w	r4, r4, #262144	; 0x40000
 80028e8:	698d      	ldr	r5, [r1, #24]
 80028ea:	ea44 2485 	orr.w	r4, r4, r5, lsl #10
 80028ee:	6044      	str	r4, [r0, #4]
 80028f0:	6542      	str	r2, [r0, #84]	; 0x54
 80028f2:	68ca      	ldr	r2, [r1, #12]
 80028f4:	65c2      	str	r2, [r0, #92]	; 0x5c
 80028f6:	6203      	str	r3, [r0, #32]
 80028f8:	2001      	movs	r0, #1
 80028fa:	bc30      	pop	{r4, r5}
 80028fc:	4770      	bx	lr
 80028fe:	bf00      	nop
 8002900:	40012c00 	.word	0x40012c00

08002904 <LL_TIM_Init>:
 8002904:	6803      	ldr	r3, [r0, #0]
 8002906:	4a30      	ldr	r2, [pc, #192]	; (80029c8 <LL_TIM_Init+0xc4>)
 8002908:	4290      	cmp	r0, r2
 800290a:	d012      	beq.n	8002932 <LL_TIM_Init+0x2e>
 800290c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002910:	d00f      	beq.n	8002932 <LL_TIM_Init+0x2e>
 8002912:	f5a2 3294 	sub.w	r2, r2, #75776	; 0x12800
 8002916:	4290      	cmp	r0, r2
 8002918:	d00b      	beq.n	8002932 <LL_TIM_Init+0x2e>
 800291a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800291e:	4290      	cmp	r0, r2
 8002920:	d007      	beq.n	8002932 <LL_TIM_Init+0x2e>
 8002922:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002926:	4290      	cmp	r0, r2
 8002928:	d003      	beq.n	8002932 <LL_TIM_Init+0x2e>
 800292a:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
 800292e:	4290      	cmp	r0, r2
 8002930:	d103      	bne.n	800293a <LL_TIM_Init+0x36>
 8002932:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002936:	684a      	ldr	r2, [r1, #4]
 8002938:	4313      	orrs	r3, r2
 800293a:	4a23      	ldr	r2, [pc, #140]	; (80029c8 <LL_TIM_Init+0xc4>)
 800293c:	4290      	cmp	r0, r2
 800293e:	d01e      	beq.n	800297e <LL_TIM_Init+0x7a>
 8002940:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002944:	d01b      	beq.n	800297e <LL_TIM_Init+0x7a>
 8002946:	f5a2 3294 	sub.w	r2, r2, #75776	; 0x12800
 800294a:	4290      	cmp	r0, r2
 800294c:	d017      	beq.n	800297e <LL_TIM_Init+0x7a>
 800294e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002952:	4290      	cmp	r0, r2
 8002954:	d013      	beq.n	800297e <LL_TIM_Init+0x7a>
 8002956:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800295a:	4290      	cmp	r0, r2
 800295c:	d00f      	beq.n	800297e <LL_TIM_Init+0x7a>
 800295e:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
 8002962:	4290      	cmp	r0, r2
 8002964:	d00b      	beq.n	800297e <LL_TIM_Init+0x7a>
 8002966:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 800296a:	4290      	cmp	r0, r2
 800296c:	d007      	beq.n	800297e <LL_TIM_Init+0x7a>
 800296e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002972:	4290      	cmp	r0, r2
 8002974:	d003      	beq.n	800297e <LL_TIM_Init+0x7a>
 8002976:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800297a:	4290      	cmp	r0, r2
 800297c:	d103      	bne.n	8002986 <LL_TIM_Init+0x82>
 800297e:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8002982:	68ca      	ldr	r2, [r1, #12]
 8002984:	4313      	orrs	r3, r2
 8002986:	6003      	str	r3, [r0, #0]
 8002988:	688b      	ldr	r3, [r1, #8]
 800298a:	62c3      	str	r3, [r0, #44]	; 0x2c
 800298c:	880b      	ldrh	r3, [r1, #0]
 800298e:	6283      	str	r3, [r0, #40]	; 0x28
 8002990:	4b0d      	ldr	r3, [pc, #52]	; (80029c8 <LL_TIM_Init+0xc4>)
 8002992:	4298      	cmp	r0, r3
 8002994:	d00f      	beq.n	80029b6 <LL_TIM_Init+0xb2>
 8002996:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800299a:	4298      	cmp	r0, r3
 800299c:	d00b      	beq.n	80029b6 <LL_TIM_Init+0xb2>
 800299e:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80029a2:	4298      	cmp	r0, r3
 80029a4:	d007      	beq.n	80029b6 <LL_TIM_Init+0xb2>
 80029a6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80029aa:	4298      	cmp	r0, r3
 80029ac:	d003      	beq.n	80029b6 <LL_TIM_Init+0xb2>
 80029ae:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80029b2:	4298      	cmp	r0, r3
 80029b4:	d101      	bne.n	80029ba <LL_TIM_Init+0xb6>
 80029b6:	7c0b      	ldrb	r3, [r1, #16]
 80029b8:	6303      	str	r3, [r0, #48]	; 0x30
 80029ba:	6943      	ldr	r3, [r0, #20]
 80029bc:	f043 0301 	orr.w	r3, r3, #1
 80029c0:	6143      	str	r3, [r0, #20]
 80029c2:	2001      	movs	r0, #1
 80029c4:	4770      	bx	lr
 80029c6:	bf00      	nop
 80029c8:	40012c00 	.word	0x40012c00

080029cc <LL_TIM_OC_Init>:
 80029cc:	b508      	push	{r3, lr}
 80029ce:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80029d2:	d017      	beq.n	8002a04 <LL_TIM_OC_Init+0x38>
 80029d4:	d90a      	bls.n	80029ec <LL_TIM_OC_Init+0x20>
 80029d6:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80029da:	d01b      	beq.n	8002a14 <LL_TIM_OC_Init+0x48>
 80029dc:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80029e0:	d01c      	beq.n	8002a1c <LL_TIM_OC_Init+0x50>
 80029e2:	f5b1 5f80 	cmp.w	r1, #4096	; 0x1000
 80029e6:	d011      	beq.n	8002a0c <LL_TIM_OC_Init+0x40>
 80029e8:	2000      	movs	r0, #0
 80029ea:	bd08      	pop	{r3, pc}
 80029ec:	2901      	cmp	r1, #1
 80029ee:	d005      	beq.n	80029fc <LL_TIM_OC_Init+0x30>
 80029f0:	2910      	cmp	r1, #16
 80029f2:	d1f9      	bne.n	80029e8 <LL_TIM_OC_Init+0x1c>
 80029f4:	4611      	mov	r1, r2
 80029f6:	f7ff fe3f 	bl	8002678 <OC2Config>
 80029fa:	bd08      	pop	{r3, pc}
 80029fc:	4611      	mov	r1, r2
 80029fe:	f7ff fdf5 	bl	80025ec <OC1Config>
 8002a02:	bd08      	pop	{r3, pc}
 8002a04:	4611      	mov	r1, r2
 8002a06:	f7ff fe81 	bl	800270c <OC3Config>
 8002a0a:	bd08      	pop	{r3, pc}
 8002a0c:	4611      	mov	r1, r2
 8002a0e:	f7ff fec7 	bl	80027a0 <OC4Config>
 8002a12:	bd08      	pop	{r3, pc}
 8002a14:	4611      	mov	r1, r2
 8002a16:	f7ff feff 	bl	8002818 <OC5Config>
 8002a1a:	bd08      	pop	{r3, pc}
 8002a1c:	4611      	mov	r1, r2
 8002a1e:	f7ff ff35 	bl	800288c <OC6Config>
 8002a22:	bd08      	pop	{r3, pc}

08002a24 <LL_DAC_Init>:
 8002a24:	b430      	push	{r4, r5}
 8002a26:	6853      	ldr	r3, [r2, #4]
 8002a28:	6805      	ldr	r5, [r0, #0]
 8002a2a:	f001 0110 	and.w	r1, r1, #16
 8002a2e:	2401      	movs	r4, #1
 8002a30:	408c      	lsls	r4, r1
 8002a32:	43ac      	bics	r4, r5
 8002a34:	d028      	beq.n	8002a88 <LL_DAC_Init+0x64>
 8002a36:	b1eb      	cbz	r3, 8002a74 <LL_DAC_Init+0x50>
 8002a38:	6804      	ldr	r4, [r0, #0]
 8002a3a:	f640 75f8 	movw	r5, #4088	; 0xff8
 8002a3e:	408d      	lsls	r5, r1
 8002a40:	ea24 0405 	bic.w	r4, r4, r5
 8002a44:	6815      	ldr	r5, [r2, #0]
 8002a46:	432b      	orrs	r3, r5
 8002a48:	6895      	ldr	r5, [r2, #8]
 8002a4a:	432b      	orrs	r3, r5
 8002a4c:	408b      	lsls	r3, r1
 8002a4e:	4323      	orrs	r3, r4
 8002a50:	6003      	str	r3, [r0, #0]
 8002a52:	6bc4      	ldr	r4, [r0, #60]	; 0x3c
 8002a54:	2307      	movs	r3, #7
 8002a56:	408b      	lsls	r3, r1
 8002a58:	ea24 0403 	bic.w	r4, r4, r3
 8002a5c:	68d3      	ldr	r3, [r2, #12]
 8002a5e:	6915      	ldr	r5, [r2, #16]
 8002a60:	432b      	orrs	r3, r5
 8002a62:	6952      	ldr	r2, [r2, #20]
 8002a64:	4313      	orrs	r3, r2
 8002a66:	fa03 f101 	lsl.w	r1, r3, r1
 8002a6a:	4321      	orrs	r1, r4
 8002a6c:	63c1      	str	r1, [r0, #60]	; 0x3c
 8002a6e:	2001      	movs	r0, #1
 8002a70:	bc30      	pop	{r4, r5}
 8002a72:	4770      	bx	lr
 8002a74:	6803      	ldr	r3, [r0, #0]
 8002a76:	24f8      	movs	r4, #248	; 0xf8
 8002a78:	408c      	lsls	r4, r1
 8002a7a:	ea23 0304 	bic.w	r3, r3, r4
 8002a7e:	6814      	ldr	r4, [r2, #0]
 8002a80:	408c      	lsls	r4, r1
 8002a82:	4323      	orrs	r3, r4
 8002a84:	6003      	str	r3, [r0, #0]
 8002a86:	e7e4      	b.n	8002a52 <LL_DAC_Init+0x2e>
 8002a88:	2000      	movs	r0, #0
 8002a8a:	e7f1      	b.n	8002a70 <LL_DAC_Init+0x4c>

08002a8c <LL_ADC_CommonInit>:
 8002a8c:	b430      	push	{r4, r5}
 8002a8e:	684d      	ldr	r5, [r1, #4]
 8002a90:	4b15      	ldr	r3, [pc, #84]	; (8002ae8 <LL_ADC_CommonInit+0x5c>)
 8002a92:	689a      	ldr	r2, [r3, #8]
 8002a94:	f002 0201 	and.w	r2, r2, #1
 8002a98:	f503 7380 	add.w	r3, r3, #256	; 0x100
 8002a9c:	689c      	ldr	r4, [r3, #8]
 8002a9e:	f004 0401 	and.w	r4, r4, #1
 8002aa2:	f503 7380 	add.w	r3, r3, #256	; 0x100
 8002aa6:	689b      	ldr	r3, [r3, #8]
 8002aa8:	f003 0301 	and.w	r3, r3, #1
 8002aac:	4322      	orrs	r2, r4
 8002aae:	d117      	bne.n	8002ae0 <LL_ADC_CommonInit+0x54>
 8002ab0:	b2db      	uxtb	r3, r3
 8002ab2:	b9ab      	cbnz	r3, 8002ae0 <LL_ADC_CommonInit+0x54>
 8002ab4:	b93d      	cbnz	r5, 8002ac6 <LL_ADC_CommonInit+0x3a>
 8002ab6:	6882      	ldr	r2, [r0, #8]
 8002ab8:	4b0c      	ldr	r3, [pc, #48]	; (8002aec <LL_ADC_CommonInit+0x60>)
 8002aba:	4013      	ands	r3, r2
 8002abc:	680a      	ldr	r2, [r1, #0]
 8002abe:	4313      	orrs	r3, r2
 8002ac0:	6083      	str	r3, [r0, #8]
 8002ac2:	2001      	movs	r0, #1
 8002ac4:	e00d      	b.n	8002ae2 <LL_ADC_CommonInit+0x56>
 8002ac6:	6882      	ldr	r2, [r0, #8]
 8002ac8:	4b08      	ldr	r3, [pc, #32]	; (8002aec <LL_ADC_CommonInit+0x60>)
 8002aca:	4013      	ands	r3, r2
 8002acc:	680a      	ldr	r2, [r1, #0]
 8002ace:	4315      	orrs	r5, r2
 8002ad0:	688a      	ldr	r2, [r1, #8]
 8002ad2:	4315      	orrs	r5, r2
 8002ad4:	68ca      	ldr	r2, [r1, #12]
 8002ad6:	4315      	orrs	r5, r2
 8002ad8:	431d      	orrs	r5, r3
 8002ada:	6085      	str	r5, [r0, #8]
 8002adc:	2001      	movs	r0, #1
 8002ade:	e000      	b.n	8002ae2 <LL_ADC_CommonInit+0x56>
 8002ae0:	2000      	movs	r0, #0
 8002ae2:	bc30      	pop	{r4, r5}
 8002ae4:	4770      	bx	lr
 8002ae6:	bf00      	nop
 8002ae8:	50040000 	.word	0x50040000
 8002aec:	ffc030e0 	.word	0xffc030e0

08002af0 <LL_ADC_Init>:
 8002af0:	6883      	ldr	r3, [r0, #8]
 8002af2:	f013 0f01 	tst.w	r3, #1
 8002af6:	d110      	bne.n	8002b1a <LL_ADC_Init+0x2a>
 8002af8:	b410      	push	{r4}
 8002afa:	68c3      	ldr	r3, [r0, #12]
 8002afc:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8002b00:	f023 0338 	bic.w	r3, r3, #56	; 0x38
 8002b04:	680a      	ldr	r2, [r1, #0]
 8002b06:	684c      	ldr	r4, [r1, #4]
 8002b08:	4322      	orrs	r2, r4
 8002b0a:	6889      	ldr	r1, [r1, #8]
 8002b0c:	430a      	orrs	r2, r1
 8002b0e:	4313      	orrs	r3, r2
 8002b10:	60c3      	str	r3, [r0, #12]
 8002b12:	2001      	movs	r0, #1
 8002b14:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002b18:	4770      	bx	lr
 8002b1a:	2000      	movs	r0, #0
 8002b1c:	4770      	bx	lr
	...

08002b20 <LL_ADC_REG_Init>:
 8002b20:	684a      	ldr	r2, [r1, #4]
 8002b22:	6883      	ldr	r3, [r0, #8]
 8002b24:	f013 0f01 	tst.w	r3, #1
 8002b28:	d126      	bne.n	8002b78 <LL_ADC_REG_Init+0x58>
 8002b2a:	b410      	push	{r4}
 8002b2c:	b1ba      	cbz	r2, 8002b5e <LL_ADC_REG_Init+0x3e>
 8002b2e:	68c3      	ldr	r3, [r0, #12]
 8002b30:	4a12      	ldr	r2, [pc, #72]	; (8002b7c <LL_ADC_REG_Init+0x5c>)
 8002b32:	401a      	ands	r2, r3
 8002b34:	680b      	ldr	r3, [r1, #0]
 8002b36:	688c      	ldr	r4, [r1, #8]
 8002b38:	4323      	orrs	r3, r4
 8002b3a:	68cc      	ldr	r4, [r1, #12]
 8002b3c:	4323      	orrs	r3, r4
 8002b3e:	690c      	ldr	r4, [r1, #16]
 8002b40:	4323      	orrs	r3, r4
 8002b42:	694c      	ldr	r4, [r1, #20]
 8002b44:	4323      	orrs	r3, r4
 8002b46:	4313      	orrs	r3, r2
 8002b48:	60c3      	str	r3, [r0, #12]
 8002b4a:	684b      	ldr	r3, [r1, #4]
 8002b4c:	6b02      	ldr	r2, [r0, #48]	; 0x30
 8002b4e:	f022 020f 	bic.w	r2, r2, #15
 8002b52:	4313      	orrs	r3, r2
 8002b54:	6303      	str	r3, [r0, #48]	; 0x30
 8002b56:	2001      	movs	r0, #1
 8002b58:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002b5c:	4770      	bx	lr
 8002b5e:	68c3      	ldr	r3, [r0, #12]
 8002b60:	4a06      	ldr	r2, [pc, #24]	; (8002b7c <LL_ADC_REG_Init+0x5c>)
 8002b62:	401a      	ands	r2, r3
 8002b64:	680b      	ldr	r3, [r1, #0]
 8002b66:	68cc      	ldr	r4, [r1, #12]
 8002b68:	4323      	orrs	r3, r4
 8002b6a:	690c      	ldr	r4, [r1, #16]
 8002b6c:	4323      	orrs	r3, r4
 8002b6e:	694c      	ldr	r4, [r1, #20]
 8002b70:	4323      	orrs	r3, r4
 8002b72:	4313      	orrs	r3, r2
 8002b74:	60c3      	str	r3, [r0, #12]
 8002b76:	e7e8      	b.n	8002b4a <LL_ADC_REG_Init+0x2a>
 8002b78:	2000      	movs	r0, #0
 8002b7a:	4770      	bx	lr
 8002b7c:	fff0c03c 	.word	0xfff0c03c

08002b80 <LCD_write_data>:
 8002b80:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002b84:	f04f 4490 	mov.w	r4, #1207959552	; 0x48000000
 8002b88:	6965      	ldr	r5, [r4, #20]
 8002b8a:	f405 457f 	and.w	r5, r5, #65280	; 0xff00
 8002b8e:	f5b5 4f7f 	cmp.w	r5, #65280	; 0xff00
 8002b92:	bf14      	ite	ne
 8002b94:	2500      	movne	r5, #0
 8002b96:	2501      	moveq	r5, #1
 8002b98:	4b0b      	ldr	r3, [pc, #44]	; (8002bc8 <LCD_write_data+0x48>)
 8002b9a:	2202      	movs	r2, #2
 8002b9c:	619a      	str	r2, [r3, #24]
 8002b9e:	2204      	movs	r2, #4
 8002ba0:	629a      	str	r2, [r3, #40]	; 0x28
 8002ba2:	f44f 477f 	mov.w	r7, #65280	; 0xff00
 8002ba6:	62a7      	str	r7, [r4, #40]	; 0x28
 8002ba8:	0200      	lsls	r0, r0, #8
 8002baa:	61a0      	str	r0, [r4, #24]
 8002bac:	f8df 801c 	ldr.w	r8, [pc, #28]	; 8002bcc <LCD_write_data+0x4c>
 8002bb0:	2601      	movs	r6, #1
 8002bb2:	f8c8 6018 	str.w	r6, [r8, #24]
 8002bb6:	4630      	mov	r0, r6
 8002bb8:	f7ff f97e 	bl	8001eb8 <LL_mDelay>
 8002bbc:	f8c8 6028 	str.w	r6, [r8, #40]	; 0x28
 8002bc0:	62a7      	str	r7, [r4, #40]	; 0x28
 8002bc2:	61a5      	str	r5, [r4, #24]
 8002bc4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002bc8:	48000400 	.word	0x48000400
 8002bcc:	48001c00 	.word	0x48001c00

08002bd0 <LCD_write_cmd>:
 8002bd0:	b510      	push	{r4, lr}
 8002bd2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002bd6:	695c      	ldr	r4, [r3, #20]
 8002bd8:	f404 447f 	and.w	r4, r4, #65280	; 0xff00
 8002bdc:	f5b4 4f7f 	cmp.w	r4, #65280	; 0xff00
 8002be0:	bf14      	ite	ne
 8002be2:	2400      	movne	r4, #0
 8002be4:	2401      	moveq	r4, #1
 8002be6:	4a11      	ldr	r2, [pc, #68]	; (8002c2c <LCD_write_cmd+0x5c>)
 8002be8:	2102      	movs	r1, #2
 8002bea:	6291      	str	r1, [r2, #40]	; 0x28
 8002bec:	2104      	movs	r1, #4
 8002bee:	6291      	str	r1, [r2, #40]	; 0x28
 8002bf0:	f44f 427f 	mov.w	r2, #65280	; 0xff00
 8002bf4:	629a      	str	r2, [r3, #40]	; 0x28
 8002bf6:	0202      	lsls	r2, r0, #8
 8002bf8:	619a      	str	r2, [r3, #24]
 8002bfa:	2201      	movs	r2, #1
 8002bfc:	f503 53e0 	add.w	r3, r3, #7168	; 0x1c00
 8002c00:	619a      	str	r2, [r3, #24]
 8002c02:	f010 0f80 	tst.w	r0, #128	; 0x80
 8002c06:	d00c      	beq.n	8002c22 <LCD_write_cmd+0x52>
 8002c08:	4610      	mov	r0, r2
 8002c0a:	f7ff f955 	bl	8001eb8 <LL_mDelay>
 8002c0e:	2201      	movs	r2, #1
 8002c10:	4b07      	ldr	r3, [pc, #28]	; (8002c30 <LCD_write_cmd+0x60>)
 8002c12:	629a      	str	r2, [r3, #40]	; 0x28
 8002c14:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002c18:	f44f 427f 	mov.w	r2, #65280	; 0xff00
 8002c1c:	629a      	str	r2, [r3, #40]	; 0x28
 8002c1e:	619c      	str	r4, [r3, #24]
 8002c20:	bd10      	pop	{r4, pc}
 8002c22:	2002      	movs	r0, #2
 8002c24:	f7ff f948 	bl	8001eb8 <LL_mDelay>
 8002c28:	e7f1      	b.n	8002c0e <LCD_write_cmd+0x3e>
 8002c2a:	bf00      	nop
 8002c2c:	48000400 	.word	0x48000400
 8002c30:	48001c00 	.word	0x48001c00

08002c34 <init_LCD>:
 8002c34:	b538      	push	{r3, r4, r5, lr}
 8002c36:	4b18      	ldr	r3, [pc, #96]	; (8002c98 <init_LCD+0x64>)
 8002c38:	2402      	movs	r4, #2
 8002c3a:	629c      	str	r4, [r3, #40]	; 0x28
 8002c3c:	2204      	movs	r2, #4
 8002c3e:	629a      	str	r2, [r3, #40]	; 0x28
 8002c40:	2501      	movs	r5, #1
 8002c42:	f503 53c0 	add.w	r3, r3, #6144	; 0x1800
 8002c46:	629d      	str	r5, [r3, #40]	; 0x28
 8002c48:	2064      	movs	r0, #100	; 0x64
 8002c4a:	f7ff f935 	bl	8001eb8 <LL_mDelay>
 8002c4e:	2030      	movs	r0, #48	; 0x30
 8002c50:	f7ff ffbe 	bl	8002bd0 <LCD_write_cmd>
 8002c54:	201e      	movs	r0, #30
 8002c56:	f7ff f92f 	bl	8001eb8 <LL_mDelay>
 8002c5a:	2030      	movs	r0, #48	; 0x30
 8002c5c:	f7ff ffb8 	bl	8002bd0 <LCD_write_cmd>
 8002c60:	200a      	movs	r0, #10
 8002c62:	f7ff f929 	bl	8001eb8 <LL_mDelay>
 8002c66:	2030      	movs	r0, #48	; 0x30
 8002c68:	f7ff ffb2 	bl	8002bd0 <LCD_write_cmd>
 8002c6c:	200a      	movs	r0, #10
 8002c6e:	f7ff f923 	bl	8001eb8 <LL_mDelay>
 8002c72:	2038      	movs	r0, #56	; 0x38
 8002c74:	f7ff ffac 	bl	8002bd0 <LCD_write_cmd>
 8002c78:	2010      	movs	r0, #16
 8002c7a:	f7ff ffa9 	bl	8002bd0 <LCD_write_cmd>
 8002c7e:	200c      	movs	r0, #12
 8002c80:	f7ff ffa6 	bl	8002bd0 <LCD_write_cmd>
 8002c84:	2006      	movs	r0, #6
 8002c86:	f7ff ffa3 	bl	8002bd0 <LCD_write_cmd>
 8002c8a:	4628      	mov	r0, r5
 8002c8c:	f7ff ffa0 	bl	8002bd0 <LCD_write_cmd>
 8002c90:	4620      	mov	r0, r4
 8002c92:	f7ff ff9d 	bl	8002bd0 <LCD_write_cmd>
 8002c96:	bd38      	pop	{r3, r4, r5, pc}
 8002c98:	48000400 	.word	0x48000400

08002c9c <LCD_cursor_pos>:
 8002c9c:	b508      	push	{r3, lr}
 8002c9e:	2804      	cmp	r0, #4
 8002ca0:	d00b      	beq.n	8002cba <LCD_cursor_pos+0x1e>
 8002ca2:	2803      	cmp	r0, #3
 8002ca4:	d00b      	beq.n	8002cbe <LCD_cursor_pos+0x22>
 8002ca6:	2802      	cmp	r0, #2
 8002ca8:	d00b      	beq.n	8002cc2 <LCD_cursor_pos+0x26>
 8002caa:	2080      	movs	r0, #128	; 0x80
 8002cac:	4408      	add	r0, r1
 8002cae:	b2c0      	uxtb	r0, r0
 8002cb0:	3801      	subs	r0, #1
 8002cb2:	b2c0      	uxtb	r0, r0
 8002cb4:	f7ff ff8c 	bl	8002bd0 <LCD_write_cmd>
 8002cb8:	bd08      	pop	{r3, pc}
 8002cba:	20d4      	movs	r0, #212	; 0xd4
 8002cbc:	e7f6      	b.n	8002cac <LCD_cursor_pos+0x10>
 8002cbe:	2094      	movs	r0, #148	; 0x94
 8002cc0:	e7f4      	b.n	8002cac <LCD_cursor_pos+0x10>
 8002cc2:	20c0      	movs	r0, #192	; 0xc0
 8002cc4:	e7f2      	b.n	8002cac <LCD_cursor_pos+0x10>
	...

08002cc8 <LCD_write_integer>:
 8002cc8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002cca:	b087      	sub	sp, #28
 8002ccc:	4686      	mov	lr, r0
 8002cce:	468c      	mov	ip, r1
 8002cd0:	4615      	mov	r5, r2
 8002cd2:	461f      	mov	r7, r3
 8002cd4:	ac01      	add	r4, sp, #4
 8002cd6:	4e1c      	ldr	r6, [pc, #112]	; (8002d48 <LCD_write_integer+0x80>)
 8002cd8:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8002cda:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8002cdc:	6833      	ldr	r3, [r6, #0]
 8002cde:	6023      	str	r3, [r4, #0]
 8002ce0:	f1c7 0405 	rsb	r4, r7, #5
 8002ce4:	4661      	mov	r1, ip
 8002ce6:	4670      	mov	r0, lr
 8002ce8:	f7ff ffd8 	bl	8002c9c <LCD_cursor_pos>
 8002cec:	2d00      	cmp	r5, #0
 8002cee:	da0a      	bge.n	8002d06 <LCD_write_integer+0x3e>
 8002cf0:	202d      	movs	r0, #45	; 0x2d
 8002cf2:	f7ff ff45 	bl	8002b80 <LCD_write_data>
 8002cf6:	f1c7 0406 	rsb	r4, r7, #6
 8002cfa:	426d      	negs	r5, r5
 8002cfc:	e003      	b.n	8002d06 <LCD_write_integer+0x3e>
 8002cfe:	2020      	movs	r0, #32
 8002d00:	f7ff ff3e 	bl	8002b80 <LCD_write_data>
 8002d04:	3401      	adds	r4, #1
 8002d06:	ab06      	add	r3, sp, #24
 8002d08:	eb03 0384 	add.w	r3, r3, r4, lsl #2
 8002d0c:	f853 3c14 	ldr.w	r3, [r3, #-20]
 8002d10:	42ab      	cmp	r3, r5
 8002d12:	d911      	bls.n	8002d38 <LCD_write_integer+0x70>
 8002d14:	2c03      	cmp	r4, #3
 8002d16:	d9f2      	bls.n	8002cfe <LCD_write_integer+0x36>
 8002d18:	e00e      	b.n	8002d38 <LCD_write_integer+0x70>
 8002d1a:	ab06      	add	r3, sp, #24
 8002d1c:	eb03 0384 	add.w	r3, r3, r4, lsl #2
 8002d20:	f853 7c14 	ldr.w	r7, [r3, #-20]
 8002d24:	fbb5 f6f7 	udiv	r6, r5, r7
 8002d28:	b2f6      	uxtb	r6, r6
 8002d2a:	f106 0030 	add.w	r0, r6, #48	; 0x30
 8002d2e:	f7ff ff27 	bl	8002b80 <LCD_write_data>
 8002d32:	fb07 5516 	mls	r5, r7, r6, r5
 8002d36:	3401      	adds	r4, #1
 8002d38:	2c03      	cmp	r4, #3
 8002d3a:	d9ee      	bls.n	8002d1a <LCD_write_integer+0x52>
 8002d3c:	f105 0030 	add.w	r0, r5, #48	; 0x30
 8002d40:	f7ff ff1e 	bl	8002b80 <LCD_write_data>
 8002d44:	b007      	add	sp, #28
 8002d46:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002d48:	08003e80 	.word	0x08003e80

08002d4c <effects_init>:
 8002d4c:	2300      	movs	r3, #0
 8002d4e:	e004      	b.n	8002d5a <effects_init+0xe>
 8002d50:	2100      	movs	r1, #0
 8002d52:	4a05      	ldr	r2, [pc, #20]	; (8002d68 <effects_init+0x1c>)
 8002d54:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002d58:	3301      	adds	r3, #1
 8002d5a:	f64b 327f 	movw	r2, #47999	; 0xbb7f
 8002d5e:	4293      	cmp	r3, r2
 8002d60:	d9f6      	bls.n	8002d50 <effects_init+0x4>
 8002d62:	2000      	movs	r0, #0
 8002d64:	4770      	bx	lr
 8002d66:	bf00      	nop
 8002d68:	20000090 	.word	0x20000090

08002d6c <delay_sample>:
 8002d6c:	4b08      	ldr	r3, [pc, #32]	; (8002d90 <delay_sample+0x24>)
 8002d6e:	681b      	ldr	r3, [r3, #0]
 8002d70:	b143      	cbz	r3, 8002d84 <delay_sample+0x18>
 8002d72:	3b01      	subs	r3, #1
 8002d74:	4a06      	ldr	r2, [pc, #24]	; (8002d90 <delay_sample+0x24>)
 8002d76:	6013      	str	r3, [r2, #0]
 8002d78:	4b05      	ldr	r3, [pc, #20]	; (8002d90 <delay_sample+0x24>)
 8002d7a:	681a      	ldr	r2, [r3, #0]
 8002d7c:	4b05      	ldr	r3, [pc, #20]	; (8002d94 <delay_sample+0x28>)
 8002d7e:	f823 0012 	strh.w	r0, [r3, r2, lsl #1]
 8002d82:	4770      	bx	lr
 8002d84:	f64b 327f 	movw	r2, #47999	; 0xbb7f
 8002d88:	4b01      	ldr	r3, [pc, #4]	; (8002d90 <delay_sample+0x24>)
 8002d8a:	601a      	str	r2, [r3, #0]
 8002d8c:	e7f4      	b.n	8002d78 <delay_sample+0xc>
 8002d8e:	bf00      	nop
 8002d90:	20000004 	.word	0x20000004
 8002d94:	20000090 	.word	0x20000090

08002d98 <delay>:
 8002d98:	b410      	push	{r4}
 8002d9a:	4b0d      	ldr	r3, [pc, #52]	; (8002dd0 <delay+0x38>)
 8002d9c:	681c      	ldr	r4, [r3, #0]
 8002d9e:	e009      	b.n	8002db4 <delay+0x1c>
 8002da0:	4b0c      	ldr	r3, [pc, #48]	; (8002dd4 <delay+0x3c>)
 8002da2:	f833 3014 	ldrh.w	r3, [r3, r4, lsl #1]
 8002da6:	4418      	add	r0, r3
 8002da8:	b200      	sxth	r0, r0
 8002daa:	eb00 70d0 	add.w	r0, r0, r0, lsr #31
 8002dae:	1040      	asrs	r0, r0, #1
 8002db0:	3a01      	subs	r2, #1
 8002db2:	b292      	uxth	r2, r2
 8002db4:	b142      	cbz	r2, 8002dc8 <delay+0x30>
 8002db6:	440c      	add	r4, r1
 8002db8:	f64b 337f 	movw	r3, #47999	; 0xbb7f
 8002dbc:	429c      	cmp	r4, r3
 8002dbe:	d9ef      	bls.n	8002da0 <delay+0x8>
 8002dc0:	f5a4 443b 	sub.w	r4, r4, #47872	; 0xbb00
 8002dc4:	3c80      	subs	r4, #128	; 0x80
 8002dc6:	e7eb      	b.n	8002da0 <delay+0x8>
 8002dc8:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002dcc:	4770      	bx	lr
 8002dce:	bf00      	nop
 8002dd0:	20000004 	.word	0x20000004
 8002dd4:	20000090 	.word	0x20000090

08002dd8 <taylor_cos>:
 8002dd8:	ee60 7a00 	vmul.f32	s15, s0, s0
 8002ddc:	ed9f 7a08 	vldr	s14, [pc, #32]	; 8002e00 <taylor_cos+0x28>
 8002de0:	ee20 7a07 	vmul.f32	s14, s0, s14
 8002de4:	ee20 0a07 	vmul.f32	s0, s0, s14
 8002de8:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
 8002dec:	ee30 0a47 	vsub.f32	s0, s0, s14
 8002df0:	ee27 0a80 	vmul.f32	s0, s15, s0
 8002df4:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
 8002df8:	ee30 0a27 	vadd.f32	s0, s0, s15
 8002dfc:	4770      	bx	lr
 8002dfe:	bf00      	nop
 8002e00:	3d2aaab4 	.word	0x3d2aaab4

08002e04 <flange>:
 8002e04:	b570      	push	{r4, r5, r6, lr}
 8002e06:	ed2d 8b02 	vpush	{d8}
 8002e0a:	4606      	mov	r6, r0
 8002e0c:	460d      	mov	r5, r1
 8002e0e:	ee08 2a10 	vmov	s16, r2
 8002e12:	ee07 1a90 	vmov	s15, r1
 8002e16:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 8002e1a:	eef2 7a04 	vmov.f32	s15, #36	; 0x41200000  10.0
 8002e1e:	ee87 0a27 	vdiv.f32	s0, s14, s15
 8002e22:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8002e90 <flange+0x8c>
 8002e26:	ee20 0a27 	vmul.f32	s0, s0, s15
 8002e2a:	4b1a      	ldr	r3, [pc, #104]	; (8002e94 <flange+0x90>)
 8002e2c:	681c      	ldr	r4, [r3, #0]
 8002e2e:	ee07 4a90 	vmov	s15, r4
 8002e32:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8002e36:	ee67 7a80 	vmul.f32	s15, s15, s0
 8002e3a:	ed9f 0a17 	vldr	s0, [pc, #92]	; 8002e98 <flange+0x94>
 8002e3e:	ee87 0a80 	vdiv.f32	s0, s15, s0
 8002e42:	f7ff ffc9 	bl	8002dd8 <taylor_cos>
 8002e46:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
 8002e4a:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8002e4e:	eeb8 8ac8 	vcvt.f32.s32	s16, s16
 8002e52:	ee28 0a00 	vmul.f32	s0, s16, s0
 8002e56:	eebc 0ac0 	vcvt.u32.f32	s0, s0
 8002e5a:	f64b 3180 	movw	r1, #48000	; 0xbb80
 8002e5e:	fb91 f1f5 	sdiv	r1, r1, r5
 8002e62:	428c      	cmp	r4, r1
 8002e64:	dc10      	bgt.n	8002e88 <flange+0x84>
 8002e66:	2201      	movs	r2, #1
 8002e68:	4b0c      	ldr	r3, [pc, #48]	; (8002e9c <flange+0x98>)
 8002e6a:	701a      	strb	r2, [r3, #0]
 8002e6c:	4b0b      	ldr	r3, [pc, #44]	; (8002e9c <flange+0x98>)
 8002e6e:	781b      	ldrb	r3, [r3, #0]
 8002e70:	4423      	add	r3, r4
 8002e72:	4a08      	ldr	r2, [pc, #32]	; (8002e94 <flange+0x90>)
 8002e74:	6013      	str	r3, [r2, #0]
 8002e76:	2201      	movs	r2, #1
 8002e78:	ee10 1a10 	vmov	r1, s0
 8002e7c:	4630      	mov	r0, r6
 8002e7e:	f7ff ff8b 	bl	8002d98 <delay>
 8002e82:	ecbd 8b02 	vpop	{d8}
 8002e86:	bd70      	pop	{r4, r5, r6, pc}
 8002e88:	22ff      	movs	r2, #255	; 0xff
 8002e8a:	4b04      	ldr	r3, [pc, #16]	; (8002e9c <flange+0x98>)
 8002e8c:	701a      	strb	r2, [r3, #0]
 8002e8e:	e7ed      	b.n	8002e6c <flange+0x68>
 8002e90:	40c90fdb 	.word	0x40c90fdb
 8002e94:	20017790 	.word	0x20017790
 8002e98:	473b8000 	.word	0x473b8000
 8002e9c:	20017794 	.word	0x20017794

08002ea0 <taylor_tanh>:
 8002ea0:	ee20 7a00 	vmul.f32	s14, s0, s0
 8002ea4:	eddf 7a09 	vldr	s15, [pc, #36]	; 8002ecc <taylor_tanh+0x2c>
 8002ea8:	ee60 7a27 	vmul.f32	s15, s0, s15
 8002eac:	ee60 7a27 	vmul.f32	s15, s0, s15
 8002eb0:	eddf 6a07 	vldr	s13, [pc, #28]	; 8002ed0 <taylor_tanh+0x30>
 8002eb4:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8002eb8:	ee67 7a27 	vmul.f32	s15, s14, s15
 8002ebc:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 8002ec0:	ee77 7a87 	vadd.f32	s15, s15, s14
 8002ec4:	ee20 0a27 	vmul.f32	s0, s0, s15
 8002ec8:	4770      	bx	lr
 8002eca:	bf00      	nop
 8002ecc:	3e088886 	.word	0x3e088886
 8002ed0:	3eaaaaaa 	.word	0x3eaaaaaa

08002ed4 <tanh_OD>:
 8002ed4:	b500      	push	{lr}
 8002ed6:	ed2d 8b02 	vpush	{d8}
 8002eda:	b083      	sub	sp, #12
 8002edc:	ee07 0a90 	vmov	s15, r0
 8002ee0:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 8002ee4:	eddf 7a17 	vldr	s15, [pc, #92]	; 8002f44 <tanh_OD+0x70>
 8002ee8:	ee87 0a27 	vdiv.f32	s0, s14, s15
 8002eec:	ee07 1a90 	vmov	s15, r1
 8002ef0:	eef8 6a67 	vcvt.f32.u32	s13, s15
 8002ef4:	eddf 7a14 	vldr	s15, [pc, #80]	; 8002f48 <tanh_OD+0x74>
 8002ef8:	ee86 7aa7 	vdiv.f32	s14, s13, s15
 8002efc:	ee06 2a90 	vmov	s13, r2
 8002f00:	eef8 6a66 	vcvt.f32.u32	s13, s13
 8002f04:	eec6 8aa7 	vdiv.f32	s17, s13, s15
 8002f08:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
 8002f0c:	ee38 8a68 	vsub.f32	s16, s16, s17
 8002f10:	ee20 0a07 	vmul.f32	s0, s0, s14
 8002f14:	f7ff ffc4 	bl	8002ea0 <taylor_tanh>
 8002f18:	ee28 0a00 	vmul.f32	s0, s16, s0
 8002f1c:	ee68 8a80 	vmul.f32	s17, s17, s0
 8002f20:	ee30 0a28 	vadd.f32	s0, s0, s17
 8002f24:	eddf 7a09 	vldr	s15, [pc, #36]	; 8002f4c <tanh_OD+0x78>
 8002f28:	ee20 0a27 	vmul.f32	s0, s0, s15
 8002f2c:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8002f30:	edcd 7a01 	vstr	s15, [sp, #4]
 8002f34:	f9bd 0004 	ldrsh.w	r0, [sp, #4]
 8002f38:	b003      	add	sp, #12
 8002f3a:	ecbd 8b02 	vpop	{d8}
 8002f3e:	f85d fb04 	ldr.w	pc, [sp], #4
 8002f42:	bf00      	nop
 8002f44:	457ff000 	.word	0x457ff000
 8002f48:	42c80000 	.word	0x42c80000
 8002f4c:	434cc000 	.word	0x434cc000

08002f50 <Reset_Handler>:
 8002f50:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002f88 <LoopForever+0x2>
 8002f54:	2100      	movs	r1, #0
 8002f56:	e003      	b.n	8002f60 <LoopCopyDataInit>

08002f58 <CopyDataInit>:
 8002f58:	4b0c      	ldr	r3, [pc, #48]	; (8002f8c <LoopForever+0x6>)
 8002f5a:	585b      	ldr	r3, [r3, r1]
 8002f5c:	5043      	str	r3, [r0, r1]
 8002f5e:	3104      	adds	r1, #4

08002f60 <LoopCopyDataInit>:
 8002f60:	480b      	ldr	r0, [pc, #44]	; (8002f90 <LoopForever+0xa>)
 8002f62:	4b0c      	ldr	r3, [pc, #48]	; (8002f94 <LoopForever+0xe>)
 8002f64:	1842      	adds	r2, r0, r1
 8002f66:	429a      	cmp	r2, r3
 8002f68:	d3f6      	bcc.n	8002f58 <CopyDataInit>
 8002f6a:	4a0b      	ldr	r2, [pc, #44]	; (8002f98 <LoopForever+0x12>)
 8002f6c:	e002      	b.n	8002f74 <LoopFillZerobss>

08002f6e <FillZerobss>:
 8002f6e:	2300      	movs	r3, #0
 8002f70:	f842 3b04 	str.w	r3, [r2], #4

08002f74 <LoopFillZerobss>:
 8002f74:	4b09      	ldr	r3, [pc, #36]	; (8002f9c <LoopForever+0x16>)
 8002f76:	429a      	cmp	r2, r3
 8002f78:	d3f9      	bcc.n	8002f6e <FillZerobss>
 8002f7a:	f7fd fc7b 	bl	8000874 <SystemInit>
 8002f7e:	f000 f811 	bl	8002fa4 <__libc_init_array>
 8002f82:	f7fe f807 	bl	8000f94 <main>

08002f86 <LoopForever>:
 8002f86:	e7fe      	b.n	8002f86 <LoopForever>
 8002f88:	20018000 	.word	0x20018000
 8002f8c:	08003fb0 	.word	0x08003fb0
 8002f90:	20000000 	.word	0x20000000
 8002f94:	20000070 	.word	0x20000070
 8002f98:	20000070 	.word	0x20000070
 8002f9c:	20017870 	.word	0x20017870

08002fa0 <ADC3_IRQHandler>:
 8002fa0:	e7fe      	b.n	8002fa0 <ADC3_IRQHandler>
	...

08002fa4 <__libc_init_array>:
 8002fa4:	b570      	push	{r4, r5, r6, lr}
 8002fa6:	4e0d      	ldr	r6, [pc, #52]	; (8002fdc <__libc_init_array+0x38>)
 8002fa8:	4c0d      	ldr	r4, [pc, #52]	; (8002fe0 <__libc_init_array+0x3c>)
 8002faa:	1ba4      	subs	r4, r4, r6
 8002fac:	10a4      	asrs	r4, r4, #2
 8002fae:	2500      	movs	r5, #0
 8002fb0:	42a5      	cmp	r5, r4
 8002fb2:	d109      	bne.n	8002fc8 <__libc_init_array+0x24>
 8002fb4:	4e0b      	ldr	r6, [pc, #44]	; (8002fe4 <__libc_init_array+0x40>)
 8002fb6:	4c0c      	ldr	r4, [pc, #48]	; (8002fe8 <__libc_init_array+0x44>)
 8002fb8:	f000 ff56 	bl	8003e68 <_init>
 8002fbc:	1ba4      	subs	r4, r4, r6
 8002fbe:	10a4      	asrs	r4, r4, #2
 8002fc0:	2500      	movs	r5, #0
 8002fc2:	42a5      	cmp	r5, r4
 8002fc4:	d105      	bne.n	8002fd2 <__libc_init_array+0x2e>
 8002fc6:	bd70      	pop	{r4, r5, r6, pc}
 8002fc8:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
 8002fcc:	4798      	blx	r3
 8002fce:	3501      	adds	r5, #1
 8002fd0:	e7ee      	b.n	8002fb0 <__libc_init_array+0xc>
 8002fd2:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
 8002fd6:	4798      	blx	r3
 8002fd8:	3501      	adds	r5, #1
 8002fda:	e7f2      	b.n	8002fc2 <__libc_init_array+0x1e>
 8002fdc:	08003fa0 	.word	0x08003fa0
 8002fe0:	08003fa0 	.word	0x08003fa0
 8002fe4:	08003fa0 	.word	0x08003fa0
 8002fe8:	08003fa4 	.word	0x08003fa4

08002fec <memset>:
 8002fec:	4402      	add	r2, r0
 8002fee:	4603      	mov	r3, r0
 8002ff0:	4293      	cmp	r3, r2
 8002ff2:	d100      	bne.n	8002ff6 <memset+0xa>
 8002ff4:	4770      	bx	lr
 8002ff6:	f803 1b01 	strb.w	r1, [r3], #1
 8002ffa:	e7f9      	b.n	8002ff0 <memset+0x4>

08002ffc <iprintf>:
 8002ffc:	b40f      	push	{r0, r1, r2, r3}
 8002ffe:	4b0a      	ldr	r3, [pc, #40]	; (8003028 <iprintf+0x2c>)
 8003000:	b513      	push	{r0, r1, r4, lr}
 8003002:	681c      	ldr	r4, [r3, #0]
 8003004:	b124      	cbz	r4, 8003010 <iprintf+0x14>
 8003006:	69a3      	ldr	r3, [r4, #24]
 8003008:	b913      	cbnz	r3, 8003010 <iprintf+0x14>
 800300a:	4620      	mov	r0, r4
 800300c:	f000 f84e 	bl	80030ac <__sinit>
 8003010:	ab05      	add	r3, sp, #20
 8003012:	9a04      	ldr	r2, [sp, #16]
 8003014:	68a1      	ldr	r1, [r4, #8]
 8003016:	9301      	str	r3, [sp, #4]
 8003018:	4620      	mov	r0, r4
 800301a:	f000 f959 	bl	80032d0 <_vfiprintf_r>
 800301e:	b002      	add	sp, #8
 8003020:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8003024:	b004      	add	sp, #16
 8003026:	4770      	bx	lr
 8003028:	20000008 	.word	0x20000008

0800302c <_cleanup_r>:
 800302c:	4901      	ldr	r1, [pc, #4]	; (8003034 <_cleanup_r+0x8>)
 800302e:	f000 b8a9 	b.w	8003184 <_fwalk_reent>
 8003032:	bf00      	nop
 8003034:	08003ba5 	.word	0x08003ba5

08003038 <std.isra.0>:
 8003038:	2300      	movs	r3, #0
 800303a:	b510      	push	{r4, lr}
 800303c:	4604      	mov	r4, r0
 800303e:	6003      	str	r3, [r0, #0]
 8003040:	6043      	str	r3, [r0, #4]
 8003042:	6083      	str	r3, [r0, #8]
 8003044:	8181      	strh	r1, [r0, #12]
 8003046:	6643      	str	r3, [r0, #100]	; 0x64
 8003048:	81c2      	strh	r2, [r0, #14]
 800304a:	6103      	str	r3, [r0, #16]
 800304c:	6143      	str	r3, [r0, #20]
 800304e:	6183      	str	r3, [r0, #24]
 8003050:	4619      	mov	r1, r3
 8003052:	2208      	movs	r2, #8
 8003054:	305c      	adds	r0, #92	; 0x5c
 8003056:	f7ff ffc9 	bl	8002fec <memset>
 800305a:	4b05      	ldr	r3, [pc, #20]	; (8003070 <std.isra.0+0x38>)
 800305c:	6263      	str	r3, [r4, #36]	; 0x24
 800305e:	4b05      	ldr	r3, [pc, #20]	; (8003074 <std.isra.0+0x3c>)
 8003060:	62a3      	str	r3, [r4, #40]	; 0x28
 8003062:	4b05      	ldr	r3, [pc, #20]	; (8003078 <std.isra.0+0x40>)
 8003064:	62e3      	str	r3, [r4, #44]	; 0x2c
 8003066:	4b05      	ldr	r3, [pc, #20]	; (800307c <std.isra.0+0x44>)
 8003068:	6224      	str	r4, [r4, #32]
 800306a:	6323      	str	r3, [r4, #48]	; 0x30
 800306c:	bd10      	pop	{r4, pc}
 800306e:	bf00      	nop
 8003070:	08003849 	.word	0x08003849
 8003074:	0800386b 	.word	0x0800386b
 8003078:	080038a3 	.word	0x080038a3
 800307c:	080038c7 	.word	0x080038c7

08003080 <__sfmoreglue>:
 8003080:	b570      	push	{r4, r5, r6, lr}
 8003082:	1e4a      	subs	r2, r1, #1
 8003084:	2568      	movs	r5, #104	; 0x68
 8003086:	4355      	muls	r5, r2
 8003088:	460e      	mov	r6, r1
 800308a:	f105 0174 	add.w	r1, r5, #116	; 0x74
 800308e:	f000 f897 	bl	80031c0 <_malloc_r>
 8003092:	4604      	mov	r4, r0
 8003094:	b140      	cbz	r0, 80030a8 <__sfmoreglue+0x28>
 8003096:	2100      	movs	r1, #0
 8003098:	e880 0042 	stmia.w	r0, {r1, r6}
 800309c:	300c      	adds	r0, #12
 800309e:	60a0      	str	r0, [r4, #8]
 80030a0:	f105 0268 	add.w	r2, r5, #104	; 0x68
 80030a4:	f7ff ffa2 	bl	8002fec <memset>
 80030a8:	4620      	mov	r0, r4
 80030aa:	bd70      	pop	{r4, r5, r6, pc}

080030ac <__sinit>:
 80030ac:	6983      	ldr	r3, [r0, #24]
 80030ae:	b510      	push	{r4, lr}
 80030b0:	4604      	mov	r4, r0
 80030b2:	bb33      	cbnz	r3, 8003102 <__sinit+0x56>
 80030b4:	6483      	str	r3, [r0, #72]	; 0x48
 80030b6:	64c3      	str	r3, [r0, #76]	; 0x4c
 80030b8:	6503      	str	r3, [r0, #80]	; 0x50
 80030ba:	4b12      	ldr	r3, [pc, #72]	; (8003104 <__sinit+0x58>)
 80030bc:	4a12      	ldr	r2, [pc, #72]	; (8003108 <__sinit+0x5c>)
 80030be:	681b      	ldr	r3, [r3, #0]
 80030c0:	6282      	str	r2, [r0, #40]	; 0x28
 80030c2:	4298      	cmp	r0, r3
 80030c4:	bf04      	itt	eq
 80030c6:	2301      	moveq	r3, #1
 80030c8:	6183      	streq	r3, [r0, #24]
 80030ca:	f000 f81f 	bl	800310c <__sfp>
 80030ce:	6060      	str	r0, [r4, #4]
 80030d0:	4620      	mov	r0, r4
 80030d2:	f000 f81b 	bl	800310c <__sfp>
 80030d6:	60a0      	str	r0, [r4, #8]
 80030d8:	4620      	mov	r0, r4
 80030da:	f000 f817 	bl	800310c <__sfp>
 80030de:	2200      	movs	r2, #0
 80030e0:	60e0      	str	r0, [r4, #12]
 80030e2:	2104      	movs	r1, #4
 80030e4:	6860      	ldr	r0, [r4, #4]
 80030e6:	f7ff ffa7 	bl	8003038 <std.isra.0>
 80030ea:	2201      	movs	r2, #1
 80030ec:	2109      	movs	r1, #9
 80030ee:	68a0      	ldr	r0, [r4, #8]
 80030f0:	f7ff ffa2 	bl	8003038 <std.isra.0>
 80030f4:	2202      	movs	r2, #2
 80030f6:	2112      	movs	r1, #18
 80030f8:	68e0      	ldr	r0, [r4, #12]
 80030fa:	f7ff ff9d 	bl	8003038 <std.isra.0>
 80030fe:	2301      	movs	r3, #1
 8003100:	61a3      	str	r3, [r4, #24]
 8003102:	bd10      	pop	{r4, pc}
 8003104:	08003f08 	.word	0x08003f08
 8003108:	0800302d 	.word	0x0800302d

0800310c <__sfp>:
 800310c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800310e:	4b1c      	ldr	r3, [pc, #112]	; (8003180 <__sfp+0x74>)
 8003110:	681e      	ldr	r6, [r3, #0]
 8003112:	69b3      	ldr	r3, [r6, #24]
 8003114:	4607      	mov	r7, r0
 8003116:	b913      	cbnz	r3, 800311e <__sfp+0x12>
 8003118:	4630      	mov	r0, r6
 800311a:	f7ff ffc7 	bl	80030ac <__sinit>
 800311e:	3648      	adds	r6, #72	; 0x48
 8003120:	68b4      	ldr	r4, [r6, #8]
 8003122:	6873      	ldr	r3, [r6, #4]
 8003124:	3b01      	subs	r3, #1
 8003126:	d503      	bpl.n	8003130 <__sfp+0x24>
 8003128:	6833      	ldr	r3, [r6, #0]
 800312a:	b133      	cbz	r3, 800313a <__sfp+0x2e>
 800312c:	6836      	ldr	r6, [r6, #0]
 800312e:	e7f7      	b.n	8003120 <__sfp+0x14>
 8003130:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
 8003134:	b16d      	cbz	r5, 8003152 <__sfp+0x46>
 8003136:	3468      	adds	r4, #104	; 0x68
 8003138:	e7f4      	b.n	8003124 <__sfp+0x18>
 800313a:	2104      	movs	r1, #4
 800313c:	4638      	mov	r0, r7
 800313e:	f7ff ff9f 	bl	8003080 <__sfmoreglue>
 8003142:	6030      	str	r0, [r6, #0]
 8003144:	2800      	cmp	r0, #0
 8003146:	d1f1      	bne.n	800312c <__sfp+0x20>
 8003148:	230c      	movs	r3, #12
 800314a:	603b      	str	r3, [r7, #0]
 800314c:	4604      	mov	r4, r0
 800314e:	4620      	mov	r0, r4
 8003150:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8003152:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8003156:	81e3      	strh	r3, [r4, #14]
 8003158:	2301      	movs	r3, #1
 800315a:	81a3      	strh	r3, [r4, #12]
 800315c:	6665      	str	r5, [r4, #100]	; 0x64
 800315e:	6025      	str	r5, [r4, #0]
 8003160:	60a5      	str	r5, [r4, #8]
 8003162:	6065      	str	r5, [r4, #4]
 8003164:	6125      	str	r5, [r4, #16]
 8003166:	6165      	str	r5, [r4, #20]
 8003168:	61a5      	str	r5, [r4, #24]
 800316a:	2208      	movs	r2, #8
 800316c:	4629      	mov	r1, r5
 800316e:	f104 005c 	add.w	r0, r4, #92	; 0x5c
 8003172:	f7ff ff3b 	bl	8002fec <memset>
 8003176:	6365      	str	r5, [r4, #52]	; 0x34
 8003178:	63a5      	str	r5, [r4, #56]	; 0x38
 800317a:	64a5      	str	r5, [r4, #72]	; 0x48
 800317c:	64e5      	str	r5, [r4, #76]	; 0x4c
 800317e:	e7e6      	b.n	800314e <__sfp+0x42>
 8003180:	08003f08 	.word	0x08003f08

08003184 <_fwalk_reent>:
 8003184:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8003188:	4680      	mov	r8, r0
 800318a:	4689      	mov	r9, r1
 800318c:	f100 0448 	add.w	r4, r0, #72	; 0x48
 8003190:	2600      	movs	r6, #0
 8003192:	b914      	cbnz	r4, 800319a <_fwalk_reent+0x16>
 8003194:	4630      	mov	r0, r6
 8003196:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800319a:	68a5      	ldr	r5, [r4, #8]
 800319c:	6867      	ldr	r7, [r4, #4]
 800319e:	3f01      	subs	r7, #1
 80031a0:	d501      	bpl.n	80031a6 <_fwalk_reent+0x22>
 80031a2:	6824      	ldr	r4, [r4, #0]
 80031a4:	e7f5      	b.n	8003192 <_fwalk_reent+0xe>
 80031a6:	89ab      	ldrh	r3, [r5, #12]
 80031a8:	2b01      	cmp	r3, #1
 80031aa:	d907      	bls.n	80031bc <_fwalk_reent+0x38>
 80031ac:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
 80031b0:	3301      	adds	r3, #1
 80031b2:	d003      	beq.n	80031bc <_fwalk_reent+0x38>
 80031b4:	4629      	mov	r1, r5
 80031b6:	4640      	mov	r0, r8
 80031b8:	47c8      	blx	r9
 80031ba:	4306      	orrs	r6, r0
 80031bc:	3568      	adds	r5, #104	; 0x68
 80031be:	e7ee      	b.n	800319e <_fwalk_reent+0x1a>

080031c0 <_malloc_r>:
 80031c0:	b570      	push	{r4, r5, r6, lr}
 80031c2:	1ccd      	adds	r5, r1, #3
 80031c4:	f025 0503 	bic.w	r5, r5, #3
 80031c8:	3508      	adds	r5, #8
 80031ca:	2d0c      	cmp	r5, #12
 80031cc:	bf38      	it	cc
 80031ce:	250c      	movcc	r5, #12
 80031d0:	2d00      	cmp	r5, #0
 80031d2:	4606      	mov	r6, r0
 80031d4:	db01      	blt.n	80031da <_malloc_r+0x1a>
 80031d6:	42a9      	cmp	r1, r5
 80031d8:	d903      	bls.n	80031e2 <_malloc_r+0x22>
 80031da:	230c      	movs	r3, #12
 80031dc:	6033      	str	r3, [r6, #0]
 80031de:	2000      	movs	r0, #0
 80031e0:	bd70      	pop	{r4, r5, r6, pc}
 80031e2:	f000 fd7f 	bl	8003ce4 <__malloc_lock>
 80031e6:	4a23      	ldr	r2, [pc, #140]	; (8003274 <_malloc_r+0xb4>)
 80031e8:	6814      	ldr	r4, [r2, #0]
 80031ea:	4621      	mov	r1, r4
 80031ec:	b991      	cbnz	r1, 8003214 <_malloc_r+0x54>
 80031ee:	4c22      	ldr	r4, [pc, #136]	; (8003278 <_malloc_r+0xb8>)
 80031f0:	6823      	ldr	r3, [r4, #0]
 80031f2:	b91b      	cbnz	r3, 80031fc <_malloc_r+0x3c>
 80031f4:	4630      	mov	r0, r6
 80031f6:	f000 fb17 	bl	8003828 <_sbrk_r>
 80031fa:	6020      	str	r0, [r4, #0]
 80031fc:	4629      	mov	r1, r5
 80031fe:	4630      	mov	r0, r6
 8003200:	f000 fb12 	bl	8003828 <_sbrk_r>
 8003204:	1c43      	adds	r3, r0, #1
 8003206:	d126      	bne.n	8003256 <_malloc_r+0x96>
 8003208:	230c      	movs	r3, #12
 800320a:	6033      	str	r3, [r6, #0]
 800320c:	4630      	mov	r0, r6
 800320e:	f000 fd6a 	bl	8003ce6 <__malloc_unlock>
 8003212:	e7e4      	b.n	80031de <_malloc_r+0x1e>
 8003214:	680b      	ldr	r3, [r1, #0]
 8003216:	1b5b      	subs	r3, r3, r5
 8003218:	d41a      	bmi.n	8003250 <_malloc_r+0x90>
 800321a:	2b0b      	cmp	r3, #11
 800321c:	d90f      	bls.n	800323e <_malloc_r+0x7e>
 800321e:	600b      	str	r3, [r1, #0]
 8003220:	50cd      	str	r5, [r1, r3]
 8003222:	18cc      	adds	r4, r1, r3
 8003224:	4630      	mov	r0, r6
 8003226:	f000 fd5e 	bl	8003ce6 <__malloc_unlock>
 800322a:	f104 000b 	add.w	r0, r4, #11
 800322e:	1d23      	adds	r3, r4, #4
 8003230:	f020 0007 	bic.w	r0, r0, #7
 8003234:	1ac3      	subs	r3, r0, r3
 8003236:	d01b      	beq.n	8003270 <_malloc_r+0xb0>
 8003238:	425a      	negs	r2, r3
 800323a:	50e2      	str	r2, [r4, r3]
 800323c:	bd70      	pop	{r4, r5, r6, pc}
 800323e:	428c      	cmp	r4, r1
 8003240:	bf0d      	iteet	eq
 8003242:	6863      	ldreq	r3, [r4, #4]
 8003244:	684b      	ldrne	r3, [r1, #4]
 8003246:	6063      	strne	r3, [r4, #4]
 8003248:	6013      	streq	r3, [r2, #0]
 800324a:	bf18      	it	ne
 800324c:	460c      	movne	r4, r1
 800324e:	e7e9      	b.n	8003224 <_malloc_r+0x64>
 8003250:	460c      	mov	r4, r1
 8003252:	6849      	ldr	r1, [r1, #4]
 8003254:	e7ca      	b.n	80031ec <_malloc_r+0x2c>
 8003256:	1cc4      	adds	r4, r0, #3
 8003258:	f024 0403 	bic.w	r4, r4, #3
 800325c:	42a0      	cmp	r0, r4
 800325e:	d005      	beq.n	800326c <_malloc_r+0xac>
 8003260:	1a21      	subs	r1, r4, r0
 8003262:	4630      	mov	r0, r6
 8003264:	f000 fae0 	bl	8003828 <_sbrk_r>
 8003268:	3001      	adds	r0, #1
 800326a:	d0cd      	beq.n	8003208 <_malloc_r+0x48>
 800326c:	6025      	str	r5, [r4, #0]
 800326e:	e7d9      	b.n	8003224 <_malloc_r+0x64>
 8003270:	bd70      	pop	{r4, r5, r6, pc}
 8003272:	bf00      	nop
 8003274:	20017798 	.word	0x20017798
 8003278:	2001779c 	.word	0x2001779c

0800327c <__sfputc_r>:
 800327c:	6893      	ldr	r3, [r2, #8]
 800327e:	3b01      	subs	r3, #1
 8003280:	2b00      	cmp	r3, #0
 8003282:	b410      	push	{r4}
 8003284:	6093      	str	r3, [r2, #8]
 8003286:	da09      	bge.n	800329c <__sfputc_r+0x20>
 8003288:	6994      	ldr	r4, [r2, #24]
 800328a:	42a3      	cmp	r3, r4
 800328c:	db02      	blt.n	8003294 <__sfputc_r+0x18>
 800328e:	b2cb      	uxtb	r3, r1
 8003290:	2b0a      	cmp	r3, #10
 8003292:	d103      	bne.n	800329c <__sfputc_r+0x20>
 8003294:	f85d 4b04 	ldr.w	r4, [sp], #4
 8003298:	f000 bb1a 	b.w	80038d0 <__swbuf_r>
 800329c:	6813      	ldr	r3, [r2, #0]
 800329e:	1c58      	adds	r0, r3, #1
 80032a0:	6010      	str	r0, [r2, #0]
 80032a2:	7019      	strb	r1, [r3, #0]
 80032a4:	b2c8      	uxtb	r0, r1
 80032a6:	f85d 4b04 	ldr.w	r4, [sp], #4
 80032aa:	4770      	bx	lr

080032ac <__sfputs_r>:
 80032ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80032ae:	4606      	mov	r6, r0
 80032b0:	460f      	mov	r7, r1
 80032b2:	4614      	mov	r4, r2
 80032b4:	18d5      	adds	r5, r2, r3
 80032b6:	42ac      	cmp	r4, r5
 80032b8:	d101      	bne.n	80032be <__sfputs_r+0x12>
 80032ba:	2000      	movs	r0, #0
 80032bc:	e007      	b.n	80032ce <__sfputs_r+0x22>
 80032be:	463a      	mov	r2, r7
 80032c0:	f814 1b01 	ldrb.w	r1, [r4], #1
 80032c4:	4630      	mov	r0, r6
 80032c6:	f7ff ffd9 	bl	800327c <__sfputc_r>
 80032ca:	1c43      	adds	r3, r0, #1
 80032cc:	d1f3      	bne.n	80032b6 <__sfputs_r+0xa>
 80032ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

080032d0 <_vfiprintf_r>:
 80032d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80032d4:	b09d      	sub	sp, #116	; 0x74
 80032d6:	460c      	mov	r4, r1
 80032d8:	4617      	mov	r7, r2
 80032da:	9303      	str	r3, [sp, #12]
 80032dc:	4606      	mov	r6, r0
 80032de:	b118      	cbz	r0, 80032e8 <_vfiprintf_r+0x18>
 80032e0:	6983      	ldr	r3, [r0, #24]
 80032e2:	b90b      	cbnz	r3, 80032e8 <_vfiprintf_r+0x18>
 80032e4:	f7ff fee2 	bl	80030ac <__sinit>
 80032e8:	4b7c      	ldr	r3, [pc, #496]	; (80034dc <_vfiprintf_r+0x20c>)
 80032ea:	429c      	cmp	r4, r3
 80032ec:	d157      	bne.n	800339e <_vfiprintf_r+0xce>
 80032ee:	6874      	ldr	r4, [r6, #4]
 80032f0:	89a3      	ldrh	r3, [r4, #12]
 80032f2:	0718      	lsls	r0, r3, #28
 80032f4:	d55d      	bpl.n	80033b2 <_vfiprintf_r+0xe2>
 80032f6:	6923      	ldr	r3, [r4, #16]
 80032f8:	2b00      	cmp	r3, #0
 80032fa:	d05a      	beq.n	80033b2 <_vfiprintf_r+0xe2>
 80032fc:	2300      	movs	r3, #0
 80032fe:	9309      	str	r3, [sp, #36]	; 0x24
 8003300:	2320      	movs	r3, #32
 8003302:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
 8003306:	2330      	movs	r3, #48	; 0x30
 8003308:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
 800330c:	f04f 0b01 	mov.w	fp, #1
 8003310:	46b8      	mov	r8, r7
 8003312:	4645      	mov	r5, r8
 8003314:	f815 3b01 	ldrb.w	r3, [r5], #1
 8003318:	2b00      	cmp	r3, #0
 800331a:	d155      	bne.n	80033c8 <_vfiprintf_r+0xf8>
 800331c:	ebb8 0a07 	subs.w	sl, r8, r7
 8003320:	d00b      	beq.n	800333a <_vfiprintf_r+0x6a>
 8003322:	4653      	mov	r3, sl
 8003324:	463a      	mov	r2, r7
 8003326:	4621      	mov	r1, r4
 8003328:	4630      	mov	r0, r6
 800332a:	f7ff ffbf 	bl	80032ac <__sfputs_r>
 800332e:	3001      	adds	r0, #1
 8003330:	f000 80c4 	beq.w	80034bc <_vfiprintf_r+0x1ec>
 8003334:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003336:	4453      	add	r3, sl
 8003338:	9309      	str	r3, [sp, #36]	; 0x24
 800333a:	f898 3000 	ldrb.w	r3, [r8]
 800333e:	2b00      	cmp	r3, #0
 8003340:	f000 80bc 	beq.w	80034bc <_vfiprintf_r+0x1ec>
 8003344:	2300      	movs	r3, #0
 8003346:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800334a:	9304      	str	r3, [sp, #16]
 800334c:	9307      	str	r3, [sp, #28]
 800334e:	9205      	str	r2, [sp, #20]
 8003350:	9306      	str	r3, [sp, #24]
 8003352:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
 8003356:	931a      	str	r3, [sp, #104]	; 0x68
 8003358:	2205      	movs	r2, #5
 800335a:	7829      	ldrb	r1, [r5, #0]
 800335c:	4860      	ldr	r0, [pc, #384]	; (80034e0 <_vfiprintf_r+0x210>)
 800335e:	f7fc ff4f 	bl	8000200 <memchr>
 8003362:	f105 0801 	add.w	r8, r5, #1
 8003366:	9b04      	ldr	r3, [sp, #16]
 8003368:	2800      	cmp	r0, #0
 800336a:	d131      	bne.n	80033d0 <_vfiprintf_r+0x100>
 800336c:	06d9      	lsls	r1, r3, #27
 800336e:	bf44      	itt	mi
 8003370:	2220      	movmi	r2, #32
 8003372:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
 8003376:	071a      	lsls	r2, r3, #28
 8003378:	bf44      	itt	mi
 800337a:	222b      	movmi	r2, #43	; 0x2b
 800337c:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
 8003380:	782a      	ldrb	r2, [r5, #0]
 8003382:	2a2a      	cmp	r2, #42	; 0x2a
 8003384:	d02c      	beq.n	80033e0 <_vfiprintf_r+0x110>
 8003386:	9a07      	ldr	r2, [sp, #28]
 8003388:	2100      	movs	r1, #0
 800338a:	200a      	movs	r0, #10
 800338c:	46a8      	mov	r8, r5
 800338e:	3501      	adds	r5, #1
 8003390:	f898 3000 	ldrb.w	r3, [r8]
 8003394:	3b30      	subs	r3, #48	; 0x30
 8003396:	2b09      	cmp	r3, #9
 8003398:	d96d      	bls.n	8003476 <_vfiprintf_r+0x1a6>
 800339a:	b371      	cbz	r1, 80033fa <_vfiprintf_r+0x12a>
 800339c:	e026      	b.n	80033ec <_vfiprintf_r+0x11c>
 800339e:	4b51      	ldr	r3, [pc, #324]	; (80034e4 <_vfiprintf_r+0x214>)
 80033a0:	429c      	cmp	r4, r3
 80033a2:	d101      	bne.n	80033a8 <_vfiprintf_r+0xd8>
 80033a4:	68b4      	ldr	r4, [r6, #8]
 80033a6:	e7a3      	b.n	80032f0 <_vfiprintf_r+0x20>
 80033a8:	4b4f      	ldr	r3, [pc, #316]	; (80034e8 <_vfiprintf_r+0x218>)
 80033aa:	429c      	cmp	r4, r3
 80033ac:	bf08      	it	eq
 80033ae:	68f4      	ldreq	r4, [r6, #12]
 80033b0:	e79e      	b.n	80032f0 <_vfiprintf_r+0x20>
 80033b2:	4621      	mov	r1, r4
 80033b4:	4630      	mov	r0, r6
 80033b6:	f000 faef 	bl	8003998 <__swsetup_r>
 80033ba:	2800      	cmp	r0, #0
 80033bc:	d09e      	beq.n	80032fc <_vfiprintf_r+0x2c>
 80033be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80033c2:	b01d      	add	sp, #116	; 0x74
 80033c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80033c8:	2b25      	cmp	r3, #37	; 0x25
 80033ca:	d0a7      	beq.n	800331c <_vfiprintf_r+0x4c>
 80033cc:	46a8      	mov	r8, r5
 80033ce:	e7a0      	b.n	8003312 <_vfiprintf_r+0x42>
 80033d0:	4a43      	ldr	r2, [pc, #268]	; (80034e0 <_vfiprintf_r+0x210>)
 80033d2:	1a80      	subs	r0, r0, r2
 80033d4:	fa0b f000 	lsl.w	r0, fp, r0
 80033d8:	4318      	orrs	r0, r3
 80033da:	9004      	str	r0, [sp, #16]
 80033dc:	4645      	mov	r5, r8
 80033de:	e7bb      	b.n	8003358 <_vfiprintf_r+0x88>
 80033e0:	9a03      	ldr	r2, [sp, #12]
 80033e2:	1d11      	adds	r1, r2, #4
 80033e4:	6812      	ldr	r2, [r2, #0]
 80033e6:	9103      	str	r1, [sp, #12]
 80033e8:	2a00      	cmp	r2, #0
 80033ea:	db01      	blt.n	80033f0 <_vfiprintf_r+0x120>
 80033ec:	9207      	str	r2, [sp, #28]
 80033ee:	e004      	b.n	80033fa <_vfiprintf_r+0x12a>
 80033f0:	4252      	negs	r2, r2
 80033f2:	f043 0302 	orr.w	r3, r3, #2
 80033f6:	9207      	str	r2, [sp, #28]
 80033f8:	9304      	str	r3, [sp, #16]
 80033fa:	f898 3000 	ldrb.w	r3, [r8]
 80033fe:	2b2e      	cmp	r3, #46	; 0x2e
 8003400:	d110      	bne.n	8003424 <_vfiprintf_r+0x154>
 8003402:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003406:	2b2a      	cmp	r3, #42	; 0x2a
 8003408:	f108 0101 	add.w	r1, r8, #1
 800340c:	d137      	bne.n	800347e <_vfiprintf_r+0x1ae>
 800340e:	9b03      	ldr	r3, [sp, #12]
 8003410:	1d1a      	adds	r2, r3, #4
 8003412:	681b      	ldr	r3, [r3, #0]
 8003414:	9203      	str	r2, [sp, #12]
 8003416:	2b00      	cmp	r3, #0
 8003418:	bfb8      	it	lt
 800341a:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
 800341e:	f108 0802 	add.w	r8, r8, #2
 8003422:	9305      	str	r3, [sp, #20]
 8003424:	4d31      	ldr	r5, [pc, #196]	; (80034ec <_vfiprintf_r+0x21c>)
 8003426:	f898 1000 	ldrb.w	r1, [r8]
 800342a:	2203      	movs	r2, #3
 800342c:	4628      	mov	r0, r5
 800342e:	f7fc fee7 	bl	8000200 <memchr>
 8003432:	b140      	cbz	r0, 8003446 <_vfiprintf_r+0x176>
 8003434:	2340      	movs	r3, #64	; 0x40
 8003436:	1b40      	subs	r0, r0, r5
 8003438:	fa03 f000 	lsl.w	r0, r3, r0
 800343c:	9b04      	ldr	r3, [sp, #16]
 800343e:	4303      	orrs	r3, r0
 8003440:	9304      	str	r3, [sp, #16]
 8003442:	f108 0801 	add.w	r8, r8, #1
 8003446:	f898 1000 	ldrb.w	r1, [r8]
 800344a:	4829      	ldr	r0, [pc, #164]	; (80034f0 <_vfiprintf_r+0x220>)
 800344c:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
 8003450:	2206      	movs	r2, #6
 8003452:	f108 0701 	add.w	r7, r8, #1
 8003456:	f7fc fed3 	bl	8000200 <memchr>
 800345a:	2800      	cmp	r0, #0
 800345c:	d034      	beq.n	80034c8 <_vfiprintf_r+0x1f8>
 800345e:	4b25      	ldr	r3, [pc, #148]	; (80034f4 <_vfiprintf_r+0x224>)
 8003460:	bb03      	cbnz	r3, 80034a4 <_vfiprintf_r+0x1d4>
 8003462:	9b03      	ldr	r3, [sp, #12]
 8003464:	3307      	adds	r3, #7
 8003466:	f023 0307 	bic.w	r3, r3, #7
 800346a:	3308      	adds	r3, #8
 800346c:	9303      	str	r3, [sp, #12]
 800346e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003470:	444b      	add	r3, r9
 8003472:	9309      	str	r3, [sp, #36]	; 0x24
 8003474:	e74c      	b.n	8003310 <_vfiprintf_r+0x40>
 8003476:	fb00 3202 	mla	r2, r0, r2, r3
 800347a:	2101      	movs	r1, #1
 800347c:	e786      	b.n	800338c <_vfiprintf_r+0xbc>
 800347e:	2300      	movs	r3, #0
 8003480:	9305      	str	r3, [sp, #20]
 8003482:	4618      	mov	r0, r3
 8003484:	250a      	movs	r5, #10
 8003486:	4688      	mov	r8, r1
 8003488:	3101      	adds	r1, #1
 800348a:	f898 2000 	ldrb.w	r2, [r8]
 800348e:	3a30      	subs	r2, #48	; 0x30
 8003490:	2a09      	cmp	r2, #9
 8003492:	d903      	bls.n	800349c <_vfiprintf_r+0x1cc>
 8003494:	2b00      	cmp	r3, #0
 8003496:	d0c5      	beq.n	8003424 <_vfiprintf_r+0x154>
 8003498:	9005      	str	r0, [sp, #20]
 800349a:	e7c3      	b.n	8003424 <_vfiprintf_r+0x154>
 800349c:	fb05 2000 	mla	r0, r5, r0, r2
 80034a0:	2301      	movs	r3, #1
 80034a2:	e7f0      	b.n	8003486 <_vfiprintf_r+0x1b6>
 80034a4:	ab03      	add	r3, sp, #12
 80034a6:	9300      	str	r3, [sp, #0]
 80034a8:	4622      	mov	r2, r4
 80034aa:	4b13      	ldr	r3, [pc, #76]	; (80034f8 <_vfiprintf_r+0x228>)
 80034ac:	a904      	add	r1, sp, #16
 80034ae:	4630      	mov	r0, r6
 80034b0:	f3af 8000 	nop.w
 80034b4:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80034b8:	4681      	mov	r9, r0
 80034ba:	d1d8      	bne.n	800346e <_vfiprintf_r+0x19e>
 80034bc:	89a3      	ldrh	r3, [r4, #12]
 80034be:	065b      	lsls	r3, r3, #25
 80034c0:	f53f af7d 	bmi.w	80033be <_vfiprintf_r+0xee>
 80034c4:	9809      	ldr	r0, [sp, #36]	; 0x24
 80034c6:	e77c      	b.n	80033c2 <_vfiprintf_r+0xf2>
 80034c8:	ab03      	add	r3, sp, #12
 80034ca:	9300      	str	r3, [sp, #0]
 80034cc:	4622      	mov	r2, r4
 80034ce:	4b0a      	ldr	r3, [pc, #40]	; (80034f8 <_vfiprintf_r+0x228>)
 80034d0:	a904      	add	r1, sp, #16
 80034d2:	4630      	mov	r0, r6
 80034d4:	f000 f888 	bl	80035e8 <_printf_i>
 80034d8:	e7ec      	b.n	80034b4 <_vfiprintf_r+0x1e4>
 80034da:	bf00      	nop
 80034dc:	08003f2c 	.word	0x08003f2c
 80034e0:	08003f6c 	.word	0x08003f6c
 80034e4:	08003f4c 	.word	0x08003f4c
 80034e8:	08003f0c 	.word	0x08003f0c
 80034ec:	08003f72 	.word	0x08003f72
 80034f0:	08003f76 	.word	0x08003f76
 80034f4:	00000000 	.word	0x00000000
 80034f8:	080032ad 	.word	0x080032ad

080034fc <_printf_common>:
 80034fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8003500:	4691      	mov	r9, r2
 8003502:	461f      	mov	r7, r3
 8003504:	688a      	ldr	r2, [r1, #8]
 8003506:	690b      	ldr	r3, [r1, #16]
 8003508:	f8dd 8020 	ldr.w	r8, [sp, #32]
 800350c:	4293      	cmp	r3, r2
 800350e:	bfb8      	it	lt
 8003510:	4613      	movlt	r3, r2
 8003512:	f8c9 3000 	str.w	r3, [r9]
 8003516:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
 800351a:	4606      	mov	r6, r0
 800351c:	460c      	mov	r4, r1
 800351e:	b112      	cbz	r2, 8003526 <_printf_common+0x2a>
 8003520:	3301      	adds	r3, #1
 8003522:	f8c9 3000 	str.w	r3, [r9]
 8003526:	6823      	ldr	r3, [r4, #0]
 8003528:	0699      	lsls	r1, r3, #26
 800352a:	bf42      	ittt	mi
 800352c:	f8d9 3000 	ldrmi.w	r3, [r9]
 8003530:	3302      	addmi	r3, #2
 8003532:	f8c9 3000 	strmi.w	r3, [r9]
 8003536:	6825      	ldr	r5, [r4, #0]
 8003538:	f015 0506 	ands.w	r5, r5, #6
 800353c:	d107      	bne.n	800354e <_printf_common+0x52>
 800353e:	f104 0a19 	add.w	sl, r4, #25
 8003542:	68e3      	ldr	r3, [r4, #12]
 8003544:	f8d9 2000 	ldr.w	r2, [r9]
 8003548:	1a9b      	subs	r3, r3, r2
 800354a:	429d      	cmp	r5, r3
 800354c:	db29      	blt.n	80035a2 <_printf_common+0xa6>
 800354e:	f894 3043 	ldrb.w	r3, [r4, #67]	; 0x43
 8003552:	6822      	ldr	r2, [r4, #0]
 8003554:	3300      	adds	r3, #0
 8003556:	bf18      	it	ne
 8003558:	2301      	movne	r3, #1
 800355a:	0692      	lsls	r2, r2, #26
 800355c:	d42e      	bmi.n	80035bc <_printf_common+0xc0>
 800355e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8003562:	4639      	mov	r1, r7
 8003564:	4630      	mov	r0, r6
 8003566:	47c0      	blx	r8
 8003568:	3001      	adds	r0, #1
 800356a:	d021      	beq.n	80035b0 <_printf_common+0xb4>
 800356c:	6823      	ldr	r3, [r4, #0]
 800356e:	68e5      	ldr	r5, [r4, #12]
 8003570:	f8d9 2000 	ldr.w	r2, [r9]
 8003574:	f003 0306 	and.w	r3, r3, #6
 8003578:	2b04      	cmp	r3, #4
 800357a:	bf08      	it	eq
 800357c:	1aad      	subeq	r5, r5, r2
 800357e:	68a3      	ldr	r3, [r4, #8]
 8003580:	6922      	ldr	r2, [r4, #16]
 8003582:	bf0c      	ite	eq
 8003584:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
 8003588:	2500      	movne	r5, #0
 800358a:	4293      	cmp	r3, r2
 800358c:	bfc4      	itt	gt
 800358e:	1a9b      	subgt	r3, r3, r2
 8003590:	18ed      	addgt	r5, r5, r3
 8003592:	f04f 0900 	mov.w	r9, #0
 8003596:	341a      	adds	r4, #26
 8003598:	454d      	cmp	r5, r9
 800359a:	d11b      	bne.n	80035d4 <_printf_common+0xd8>
 800359c:	2000      	movs	r0, #0
 800359e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80035a2:	2301      	movs	r3, #1
 80035a4:	4652      	mov	r2, sl
 80035a6:	4639      	mov	r1, r7
 80035a8:	4630      	mov	r0, r6
 80035aa:	47c0      	blx	r8
 80035ac:	3001      	adds	r0, #1
 80035ae:	d103      	bne.n	80035b8 <_printf_common+0xbc>
 80035b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80035b4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80035b8:	3501      	adds	r5, #1
 80035ba:	e7c2      	b.n	8003542 <_printf_common+0x46>
 80035bc:	18e1      	adds	r1, r4, r3
 80035be:	1c5a      	adds	r2, r3, #1
 80035c0:	2030      	movs	r0, #48	; 0x30
 80035c2:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
 80035c6:	4422      	add	r2, r4
 80035c8:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
 80035cc:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
 80035d0:	3302      	adds	r3, #2
 80035d2:	e7c4      	b.n	800355e <_printf_common+0x62>
 80035d4:	2301      	movs	r3, #1
 80035d6:	4622      	mov	r2, r4
 80035d8:	4639      	mov	r1, r7
 80035da:	4630      	mov	r0, r6
 80035dc:	47c0      	blx	r8
 80035de:	3001      	adds	r0, #1
 80035e0:	d0e6      	beq.n	80035b0 <_printf_common+0xb4>
 80035e2:	f109 0901 	add.w	r9, r9, #1
 80035e6:	e7d7      	b.n	8003598 <_printf_common+0x9c>

080035e8 <_printf_i>:
 80035e8:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80035ec:	4617      	mov	r7, r2
 80035ee:	7e0a      	ldrb	r2, [r1, #24]
 80035f0:	b085      	sub	sp, #20
 80035f2:	2a6e      	cmp	r2, #110	; 0x6e
 80035f4:	4698      	mov	r8, r3
 80035f6:	4606      	mov	r6, r0
 80035f8:	460c      	mov	r4, r1
 80035fa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80035fc:	f101 0e43 	add.w	lr, r1, #67	; 0x43
 8003600:	f000 80bc 	beq.w	800377c <_printf_i+0x194>
 8003604:	d81a      	bhi.n	800363c <_printf_i+0x54>
 8003606:	2a63      	cmp	r2, #99	; 0x63
 8003608:	d02e      	beq.n	8003668 <_printf_i+0x80>
 800360a:	d80a      	bhi.n	8003622 <_printf_i+0x3a>
 800360c:	2a00      	cmp	r2, #0
 800360e:	f000 80c8 	beq.w	80037a2 <_printf_i+0x1ba>
 8003612:	2a58      	cmp	r2, #88	; 0x58
 8003614:	f000 808a 	beq.w	800372c <_printf_i+0x144>
 8003618:	f104 0542 	add.w	r5, r4, #66	; 0x42
 800361c:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
 8003620:	e02a      	b.n	8003678 <_printf_i+0x90>
 8003622:	2a64      	cmp	r2, #100	; 0x64
 8003624:	d001      	beq.n	800362a <_printf_i+0x42>
 8003626:	2a69      	cmp	r2, #105	; 0x69
 8003628:	d1f6      	bne.n	8003618 <_printf_i+0x30>
 800362a:	6821      	ldr	r1, [r4, #0]
 800362c:	681a      	ldr	r2, [r3, #0]
 800362e:	f011 0f80 	tst.w	r1, #128	; 0x80
 8003632:	d023      	beq.n	800367c <_printf_i+0x94>
 8003634:	1d11      	adds	r1, r2, #4
 8003636:	6019      	str	r1, [r3, #0]
 8003638:	6813      	ldr	r3, [r2, #0]
 800363a:	e027      	b.n	800368c <_printf_i+0xa4>
 800363c:	2a73      	cmp	r2, #115	; 0x73
 800363e:	f000 80b4 	beq.w	80037aa <_printf_i+0x1c2>
 8003642:	d808      	bhi.n	8003656 <_printf_i+0x6e>
 8003644:	2a6f      	cmp	r2, #111	; 0x6f
 8003646:	d02a      	beq.n	800369e <_printf_i+0xb6>
 8003648:	2a70      	cmp	r2, #112	; 0x70
 800364a:	d1e5      	bne.n	8003618 <_printf_i+0x30>
 800364c:	680a      	ldr	r2, [r1, #0]
 800364e:	f042 0220 	orr.w	r2, r2, #32
 8003652:	600a      	str	r2, [r1, #0]
 8003654:	e003      	b.n	800365e <_printf_i+0x76>
 8003656:	2a75      	cmp	r2, #117	; 0x75
 8003658:	d021      	beq.n	800369e <_printf_i+0xb6>
 800365a:	2a78      	cmp	r2, #120	; 0x78
 800365c:	d1dc      	bne.n	8003618 <_printf_i+0x30>
 800365e:	2278      	movs	r2, #120	; 0x78
 8003660:	f884 2045 	strb.w	r2, [r4, #69]	; 0x45
 8003664:	496e      	ldr	r1, [pc, #440]	; (8003820 <_printf_i+0x238>)
 8003666:	e064      	b.n	8003732 <_printf_i+0x14a>
 8003668:	681a      	ldr	r2, [r3, #0]
 800366a:	f101 0542 	add.w	r5, r1, #66	; 0x42
 800366e:	1d11      	adds	r1, r2, #4
 8003670:	6019      	str	r1, [r3, #0]
 8003672:	6813      	ldr	r3, [r2, #0]
 8003674:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 8003678:	2301      	movs	r3, #1
 800367a:	e0a3      	b.n	80037c4 <_printf_i+0x1dc>
 800367c:	f011 0f40 	tst.w	r1, #64	; 0x40
 8003680:	f102 0104 	add.w	r1, r2, #4
 8003684:	6019      	str	r1, [r3, #0]
 8003686:	d0d7      	beq.n	8003638 <_printf_i+0x50>
 8003688:	f9b2 3000 	ldrsh.w	r3, [r2]
 800368c:	2b00      	cmp	r3, #0
 800368e:	da03      	bge.n	8003698 <_printf_i+0xb0>
 8003690:	222d      	movs	r2, #45	; 0x2d
 8003692:	425b      	negs	r3, r3
 8003694:	f884 2043 	strb.w	r2, [r4, #67]	; 0x43
 8003698:	4962      	ldr	r1, [pc, #392]	; (8003824 <_printf_i+0x23c>)
 800369a:	220a      	movs	r2, #10
 800369c:	e017      	b.n	80036ce <_printf_i+0xe6>
 800369e:	6820      	ldr	r0, [r4, #0]
 80036a0:	6819      	ldr	r1, [r3, #0]
 80036a2:	f010 0f80 	tst.w	r0, #128	; 0x80
 80036a6:	d003      	beq.n	80036b0 <_printf_i+0xc8>
 80036a8:	1d08      	adds	r0, r1, #4
 80036aa:	6018      	str	r0, [r3, #0]
 80036ac:	680b      	ldr	r3, [r1, #0]
 80036ae:	e006      	b.n	80036be <_printf_i+0xd6>
 80036b0:	f010 0f40 	tst.w	r0, #64	; 0x40
 80036b4:	f101 0004 	add.w	r0, r1, #4
 80036b8:	6018      	str	r0, [r3, #0]
 80036ba:	d0f7      	beq.n	80036ac <_printf_i+0xc4>
 80036bc:	880b      	ldrh	r3, [r1, #0]
 80036be:	4959      	ldr	r1, [pc, #356]	; (8003824 <_printf_i+0x23c>)
 80036c0:	2a6f      	cmp	r2, #111	; 0x6f
 80036c2:	bf14      	ite	ne
 80036c4:	220a      	movne	r2, #10
 80036c6:	2208      	moveq	r2, #8
 80036c8:	2000      	movs	r0, #0
 80036ca:	f884 0043 	strb.w	r0, [r4, #67]	; 0x43
 80036ce:	6865      	ldr	r5, [r4, #4]
 80036d0:	60a5      	str	r5, [r4, #8]
 80036d2:	2d00      	cmp	r5, #0
 80036d4:	f2c0 809c 	blt.w	8003810 <_printf_i+0x228>
 80036d8:	6820      	ldr	r0, [r4, #0]
 80036da:	f020 0004 	bic.w	r0, r0, #4
 80036de:	6020      	str	r0, [r4, #0]
 80036e0:	2b00      	cmp	r3, #0
 80036e2:	d13f      	bne.n	8003764 <_printf_i+0x17c>
 80036e4:	2d00      	cmp	r5, #0
 80036e6:	f040 8095 	bne.w	8003814 <_printf_i+0x22c>
 80036ea:	4675      	mov	r5, lr
 80036ec:	2a08      	cmp	r2, #8
 80036ee:	d10b      	bne.n	8003708 <_printf_i+0x120>
 80036f0:	6823      	ldr	r3, [r4, #0]
 80036f2:	07da      	lsls	r2, r3, #31
 80036f4:	d508      	bpl.n	8003708 <_printf_i+0x120>
 80036f6:	6923      	ldr	r3, [r4, #16]
 80036f8:	6862      	ldr	r2, [r4, #4]
 80036fa:	429a      	cmp	r2, r3
 80036fc:	bfde      	ittt	le
 80036fe:	2330      	movle	r3, #48	; 0x30
 8003700:	f805 3c01 	strble.w	r3, [r5, #-1]
 8003704:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
 8003708:	ebae 0305 	sub.w	r3, lr, r5
 800370c:	6123      	str	r3, [r4, #16]
 800370e:	f8cd 8000 	str.w	r8, [sp]
 8003712:	463b      	mov	r3, r7
 8003714:	aa03      	add	r2, sp, #12
 8003716:	4621      	mov	r1, r4
 8003718:	4630      	mov	r0, r6
 800371a:	f7ff feef 	bl	80034fc <_printf_common>
 800371e:	3001      	adds	r0, #1
 8003720:	d155      	bne.n	80037ce <_printf_i+0x1e6>
 8003722:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003726:	b005      	add	sp, #20
 8003728:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800372c:	f881 2045 	strb.w	r2, [r1, #69]	; 0x45
 8003730:	493c      	ldr	r1, [pc, #240]	; (8003824 <_printf_i+0x23c>)
 8003732:	6822      	ldr	r2, [r4, #0]
 8003734:	6818      	ldr	r0, [r3, #0]
 8003736:	f012 0f80 	tst.w	r2, #128	; 0x80
 800373a:	f100 0504 	add.w	r5, r0, #4
 800373e:	601d      	str	r5, [r3, #0]
 8003740:	d001      	beq.n	8003746 <_printf_i+0x15e>
 8003742:	6803      	ldr	r3, [r0, #0]
 8003744:	e002      	b.n	800374c <_printf_i+0x164>
 8003746:	0655      	lsls	r5, r2, #25
 8003748:	d5fb      	bpl.n	8003742 <_printf_i+0x15a>
 800374a:	8803      	ldrh	r3, [r0, #0]
 800374c:	07d0      	lsls	r0, r2, #31
 800374e:	bf44      	itt	mi
 8003750:	f042 0220 	orrmi.w	r2, r2, #32
 8003754:	6022      	strmi	r2, [r4, #0]
 8003756:	b91b      	cbnz	r3, 8003760 <_printf_i+0x178>
 8003758:	6822      	ldr	r2, [r4, #0]
 800375a:	f022 0220 	bic.w	r2, r2, #32
 800375e:	6022      	str	r2, [r4, #0]
 8003760:	2210      	movs	r2, #16
 8003762:	e7b1      	b.n	80036c8 <_printf_i+0xe0>
 8003764:	4675      	mov	r5, lr
 8003766:	fbb3 f0f2 	udiv	r0, r3, r2
 800376a:	fb02 3310 	mls	r3, r2, r0, r3
 800376e:	5ccb      	ldrb	r3, [r1, r3]
 8003770:	f805 3d01 	strb.w	r3, [r5, #-1]!
 8003774:	4603      	mov	r3, r0
 8003776:	2800      	cmp	r0, #0
 8003778:	d1f5      	bne.n	8003766 <_printf_i+0x17e>
 800377a:	e7b7      	b.n	80036ec <_printf_i+0x104>
 800377c:	6808      	ldr	r0, [r1, #0]
 800377e:	681a      	ldr	r2, [r3, #0]
 8003780:	6949      	ldr	r1, [r1, #20]
 8003782:	f010 0f80 	tst.w	r0, #128	; 0x80
 8003786:	d004      	beq.n	8003792 <_printf_i+0x1aa>
 8003788:	1d10      	adds	r0, r2, #4
 800378a:	6018      	str	r0, [r3, #0]
 800378c:	6813      	ldr	r3, [r2, #0]
 800378e:	6019      	str	r1, [r3, #0]
 8003790:	e007      	b.n	80037a2 <_printf_i+0x1ba>
 8003792:	f010 0f40 	tst.w	r0, #64	; 0x40
 8003796:	f102 0004 	add.w	r0, r2, #4
 800379a:	6018      	str	r0, [r3, #0]
 800379c:	6813      	ldr	r3, [r2, #0]
 800379e:	d0f6      	beq.n	800378e <_printf_i+0x1a6>
 80037a0:	8019      	strh	r1, [r3, #0]
 80037a2:	2300      	movs	r3, #0
 80037a4:	6123      	str	r3, [r4, #16]
 80037a6:	4675      	mov	r5, lr
 80037a8:	e7b1      	b.n	800370e <_printf_i+0x126>
 80037aa:	681a      	ldr	r2, [r3, #0]
 80037ac:	1d11      	adds	r1, r2, #4
 80037ae:	6019      	str	r1, [r3, #0]
 80037b0:	6815      	ldr	r5, [r2, #0]
 80037b2:	6862      	ldr	r2, [r4, #4]
 80037b4:	2100      	movs	r1, #0
 80037b6:	4628      	mov	r0, r5
 80037b8:	f7fc fd22 	bl	8000200 <memchr>
 80037bc:	b108      	cbz	r0, 80037c2 <_printf_i+0x1da>
 80037be:	1b40      	subs	r0, r0, r5
 80037c0:	6060      	str	r0, [r4, #4]
 80037c2:	6863      	ldr	r3, [r4, #4]
 80037c4:	6123      	str	r3, [r4, #16]
 80037c6:	2300      	movs	r3, #0
 80037c8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 80037cc:	e79f      	b.n	800370e <_printf_i+0x126>
 80037ce:	6923      	ldr	r3, [r4, #16]
 80037d0:	462a      	mov	r2, r5
 80037d2:	4639      	mov	r1, r7
 80037d4:	4630      	mov	r0, r6
 80037d6:	47c0      	blx	r8
 80037d8:	3001      	adds	r0, #1
 80037da:	d0a2      	beq.n	8003722 <_printf_i+0x13a>
 80037dc:	6823      	ldr	r3, [r4, #0]
 80037de:	079b      	lsls	r3, r3, #30
 80037e0:	d507      	bpl.n	80037f2 <_printf_i+0x20a>
 80037e2:	2500      	movs	r5, #0
 80037e4:	f104 0919 	add.w	r9, r4, #25
 80037e8:	68e3      	ldr	r3, [r4, #12]
 80037ea:	9a03      	ldr	r2, [sp, #12]
 80037ec:	1a9b      	subs	r3, r3, r2
 80037ee:	429d      	cmp	r5, r3
 80037f0:	db05      	blt.n	80037fe <_printf_i+0x216>
 80037f2:	68e0      	ldr	r0, [r4, #12]
 80037f4:	9b03      	ldr	r3, [sp, #12]
 80037f6:	4298      	cmp	r0, r3
 80037f8:	bfb8      	it	lt
 80037fa:	4618      	movlt	r0, r3
 80037fc:	e793      	b.n	8003726 <_printf_i+0x13e>
 80037fe:	2301      	movs	r3, #1
 8003800:	464a      	mov	r2, r9
 8003802:	4639      	mov	r1, r7
 8003804:	4630      	mov	r0, r6
 8003806:	47c0      	blx	r8
 8003808:	3001      	adds	r0, #1
 800380a:	d08a      	beq.n	8003722 <_printf_i+0x13a>
 800380c:	3501      	adds	r5, #1
 800380e:	e7eb      	b.n	80037e8 <_printf_i+0x200>
 8003810:	2b00      	cmp	r3, #0
 8003812:	d1a7      	bne.n	8003764 <_printf_i+0x17c>
 8003814:	780b      	ldrb	r3, [r1, #0]
 8003816:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 800381a:	f104 0542 	add.w	r5, r4, #66	; 0x42
 800381e:	e765      	b.n	80036ec <_printf_i+0x104>
 8003820:	08003f8e 	.word	0x08003f8e
 8003824:	08003f7d 	.word	0x08003f7d

08003828 <_sbrk_r>:
 8003828:	b538      	push	{r3, r4, r5, lr}
 800382a:	4c06      	ldr	r4, [pc, #24]	; (8003844 <_sbrk_r+0x1c>)
 800382c:	2300      	movs	r3, #0
 800382e:	4605      	mov	r5, r0
 8003830:	4608      	mov	r0, r1
 8003832:	6023      	str	r3, [r4, #0]
 8003834:	f000 fb02 	bl	8003e3c <_sbrk>
 8003838:	1c43      	adds	r3, r0, #1
 800383a:	d102      	bne.n	8003842 <_sbrk_r+0x1a>
 800383c:	6823      	ldr	r3, [r4, #0]
 800383e:	b103      	cbz	r3, 8003842 <_sbrk_r+0x1a>
 8003840:	602b      	str	r3, [r5, #0]
 8003842:	bd38      	pop	{r3, r4, r5, pc}
 8003844:	2001786c 	.word	0x2001786c

08003848 <__sread>:
 8003848:	b510      	push	{r4, lr}
 800384a:	460c      	mov	r4, r1
 800384c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8003850:	f000 fa98 	bl	8003d84 <_read_r>
 8003854:	2800      	cmp	r0, #0
 8003856:	bfab      	itete	ge
 8003858:	6d63      	ldrge	r3, [r4, #84]	; 0x54
 800385a:	89a3      	ldrhlt	r3, [r4, #12]
 800385c:	181b      	addge	r3, r3, r0
 800385e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
 8003862:	bfac      	ite	ge
 8003864:	6563      	strge	r3, [r4, #84]	; 0x54
 8003866:	81a3      	strhlt	r3, [r4, #12]
 8003868:	bd10      	pop	{r4, pc}

0800386a <__swrite>:
 800386a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800386e:	461f      	mov	r7, r3
 8003870:	898b      	ldrh	r3, [r1, #12]
 8003872:	05db      	lsls	r3, r3, #23
 8003874:	4605      	mov	r5, r0
 8003876:	460c      	mov	r4, r1
 8003878:	4616      	mov	r6, r2
 800387a:	d505      	bpl.n	8003888 <__swrite+0x1e>
 800387c:	2302      	movs	r3, #2
 800387e:	2200      	movs	r2, #0
 8003880:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8003884:	f000 f9b8 	bl	8003bf8 <_lseek_r>
 8003888:	89a3      	ldrh	r3, [r4, #12]
 800388a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800388e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8003892:	81a3      	strh	r3, [r4, #12]
 8003894:	4632      	mov	r2, r6
 8003896:	463b      	mov	r3, r7
 8003898:	4628      	mov	r0, r5
 800389a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800389e:	f000 b869 	b.w	8003974 <_write_r>

080038a2 <__sseek>:
 80038a2:	b510      	push	{r4, lr}
 80038a4:	460c      	mov	r4, r1
 80038a6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80038aa:	f000 f9a5 	bl	8003bf8 <_lseek_r>
 80038ae:	1c43      	adds	r3, r0, #1
 80038b0:	89a3      	ldrh	r3, [r4, #12]
 80038b2:	bf15      	itete	ne
 80038b4:	6560      	strne	r0, [r4, #84]	; 0x54
 80038b6:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80038ba:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80038be:	81a3      	strheq	r3, [r4, #12]
 80038c0:	bf18      	it	ne
 80038c2:	81a3      	strhne	r3, [r4, #12]
 80038c4:	bd10      	pop	{r4, pc}

080038c6 <__sclose>:
 80038c6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80038ca:	f000 b8d3 	b.w	8003a74 <_close_r>
	...

080038d0 <__swbuf_r>:
 80038d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80038d2:	460e      	mov	r6, r1
 80038d4:	4614      	mov	r4, r2
 80038d6:	4605      	mov	r5, r0
 80038d8:	b118      	cbz	r0, 80038e2 <__swbuf_r+0x12>
 80038da:	6983      	ldr	r3, [r0, #24]
 80038dc:	b90b      	cbnz	r3, 80038e2 <__swbuf_r+0x12>
 80038de:	f7ff fbe5 	bl	80030ac <__sinit>
 80038e2:	4b21      	ldr	r3, [pc, #132]	; (8003968 <__swbuf_r+0x98>)
 80038e4:	429c      	cmp	r4, r3
 80038e6:	d12a      	bne.n	800393e <__swbuf_r+0x6e>
 80038e8:	686c      	ldr	r4, [r5, #4]
 80038ea:	69a3      	ldr	r3, [r4, #24]
 80038ec:	60a3      	str	r3, [r4, #8]
 80038ee:	89a3      	ldrh	r3, [r4, #12]
 80038f0:	071a      	lsls	r2, r3, #28
 80038f2:	d52e      	bpl.n	8003952 <__swbuf_r+0x82>
 80038f4:	6923      	ldr	r3, [r4, #16]
 80038f6:	b363      	cbz	r3, 8003952 <__swbuf_r+0x82>
 80038f8:	6923      	ldr	r3, [r4, #16]
 80038fa:	6820      	ldr	r0, [r4, #0]
 80038fc:	1ac0      	subs	r0, r0, r3
 80038fe:	6963      	ldr	r3, [r4, #20]
 8003900:	b2f6      	uxtb	r6, r6
 8003902:	4298      	cmp	r0, r3
 8003904:	4637      	mov	r7, r6
 8003906:	db04      	blt.n	8003912 <__swbuf_r+0x42>
 8003908:	4621      	mov	r1, r4
 800390a:	4628      	mov	r0, r5
 800390c:	f000 f94a 	bl	8003ba4 <_fflush_r>
 8003910:	bb28      	cbnz	r0, 800395e <__swbuf_r+0x8e>
 8003912:	68a3      	ldr	r3, [r4, #8]
 8003914:	3b01      	subs	r3, #1
 8003916:	60a3      	str	r3, [r4, #8]
 8003918:	6823      	ldr	r3, [r4, #0]
 800391a:	1c5a      	adds	r2, r3, #1
 800391c:	6022      	str	r2, [r4, #0]
 800391e:	701e      	strb	r6, [r3, #0]
 8003920:	6963      	ldr	r3, [r4, #20]
 8003922:	3001      	adds	r0, #1
 8003924:	4298      	cmp	r0, r3
 8003926:	d004      	beq.n	8003932 <__swbuf_r+0x62>
 8003928:	89a3      	ldrh	r3, [r4, #12]
 800392a:	07db      	lsls	r3, r3, #31
 800392c:	d519      	bpl.n	8003962 <__swbuf_r+0x92>
 800392e:	2e0a      	cmp	r6, #10
 8003930:	d117      	bne.n	8003962 <__swbuf_r+0x92>
 8003932:	4621      	mov	r1, r4
 8003934:	4628      	mov	r0, r5
 8003936:	f000 f935 	bl	8003ba4 <_fflush_r>
 800393a:	b190      	cbz	r0, 8003962 <__swbuf_r+0x92>
 800393c:	e00f      	b.n	800395e <__swbuf_r+0x8e>
 800393e:	4b0b      	ldr	r3, [pc, #44]	; (800396c <__swbuf_r+0x9c>)
 8003940:	429c      	cmp	r4, r3
 8003942:	d101      	bne.n	8003948 <__swbuf_r+0x78>
 8003944:	68ac      	ldr	r4, [r5, #8]
 8003946:	e7d0      	b.n	80038ea <__swbuf_r+0x1a>
 8003948:	4b09      	ldr	r3, [pc, #36]	; (8003970 <__swbuf_r+0xa0>)
 800394a:	429c      	cmp	r4, r3
 800394c:	bf08      	it	eq
 800394e:	68ec      	ldreq	r4, [r5, #12]
 8003950:	e7cb      	b.n	80038ea <__swbuf_r+0x1a>
 8003952:	4621      	mov	r1, r4
 8003954:	4628      	mov	r0, r5
 8003956:	f000 f81f 	bl	8003998 <__swsetup_r>
 800395a:	2800      	cmp	r0, #0
 800395c:	d0cc      	beq.n	80038f8 <__swbuf_r+0x28>
 800395e:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8003962:	4638      	mov	r0, r7
 8003964:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8003966:	bf00      	nop
 8003968:	08003f2c 	.word	0x08003f2c
 800396c:	08003f4c 	.word	0x08003f4c
 8003970:	08003f0c 	.word	0x08003f0c

08003974 <_write_r>:
 8003974:	b538      	push	{r3, r4, r5, lr}
 8003976:	4c07      	ldr	r4, [pc, #28]	; (8003994 <_write_r+0x20>)
 8003978:	4605      	mov	r5, r0
 800397a:	4608      	mov	r0, r1
 800397c:	4611      	mov	r1, r2
 800397e:	2200      	movs	r2, #0
 8003980:	6022      	str	r2, [r4, #0]
 8003982:	461a      	mov	r2, r3
 8003984:	f000 fa68 	bl	8003e58 <_write>
 8003988:	1c43      	adds	r3, r0, #1
 800398a:	d102      	bne.n	8003992 <_write_r+0x1e>
 800398c:	6823      	ldr	r3, [r4, #0]
 800398e:	b103      	cbz	r3, 8003992 <_write_r+0x1e>
 8003990:	602b      	str	r3, [r5, #0]
 8003992:	bd38      	pop	{r3, r4, r5, pc}
 8003994:	2001786c 	.word	0x2001786c

08003998 <__swsetup_r>:
 8003998:	4b32      	ldr	r3, [pc, #200]	; (8003a64 <__swsetup_r+0xcc>)
 800399a:	b570      	push	{r4, r5, r6, lr}
 800399c:	681d      	ldr	r5, [r3, #0]
 800399e:	4606      	mov	r6, r0
 80039a0:	460c      	mov	r4, r1
 80039a2:	b125      	cbz	r5, 80039ae <__swsetup_r+0x16>
 80039a4:	69ab      	ldr	r3, [r5, #24]
 80039a6:	b913      	cbnz	r3, 80039ae <__swsetup_r+0x16>
 80039a8:	4628      	mov	r0, r5
 80039aa:	f7ff fb7f 	bl	80030ac <__sinit>
 80039ae:	4b2e      	ldr	r3, [pc, #184]	; (8003a68 <__swsetup_r+0xd0>)
 80039b0:	429c      	cmp	r4, r3
 80039b2:	d10f      	bne.n	80039d4 <__swsetup_r+0x3c>
 80039b4:	686c      	ldr	r4, [r5, #4]
 80039b6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80039ba:	b29a      	uxth	r2, r3
 80039bc:	0715      	lsls	r5, r2, #28
 80039be:	d42c      	bmi.n	8003a1a <__swsetup_r+0x82>
 80039c0:	06d0      	lsls	r0, r2, #27
 80039c2:	d411      	bmi.n	80039e8 <__swsetup_r+0x50>
 80039c4:	2209      	movs	r2, #9
 80039c6:	6032      	str	r2, [r6, #0]
 80039c8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80039cc:	81a3      	strh	r3, [r4, #12]
 80039ce:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80039d2:	bd70      	pop	{r4, r5, r6, pc}
 80039d4:	4b25      	ldr	r3, [pc, #148]	; (8003a6c <__swsetup_r+0xd4>)
 80039d6:	429c      	cmp	r4, r3
 80039d8:	d101      	bne.n	80039de <__swsetup_r+0x46>
 80039da:	68ac      	ldr	r4, [r5, #8]
 80039dc:	e7eb      	b.n	80039b6 <__swsetup_r+0x1e>
 80039de:	4b24      	ldr	r3, [pc, #144]	; (8003a70 <__swsetup_r+0xd8>)
 80039e0:	429c      	cmp	r4, r3
 80039e2:	bf08      	it	eq
 80039e4:	68ec      	ldreq	r4, [r5, #12]
 80039e6:	e7e6      	b.n	80039b6 <__swsetup_r+0x1e>
 80039e8:	0751      	lsls	r1, r2, #29
 80039ea:	d512      	bpl.n	8003a12 <__swsetup_r+0x7a>
 80039ec:	6b61      	ldr	r1, [r4, #52]	; 0x34
 80039ee:	b141      	cbz	r1, 8003a02 <__swsetup_r+0x6a>
 80039f0:	f104 0344 	add.w	r3, r4, #68	; 0x44
 80039f4:	4299      	cmp	r1, r3
 80039f6:	d002      	beq.n	80039fe <__swsetup_r+0x66>
 80039f8:	4630      	mov	r0, r6
 80039fa:	f000 f975 	bl	8003ce8 <_free_r>
 80039fe:	2300      	movs	r3, #0
 8003a00:	6363      	str	r3, [r4, #52]	; 0x34
 8003a02:	89a3      	ldrh	r3, [r4, #12]
 8003a04:	f023 0324 	bic.w	r3, r3, #36	; 0x24
 8003a08:	81a3      	strh	r3, [r4, #12]
 8003a0a:	2300      	movs	r3, #0
 8003a0c:	6063      	str	r3, [r4, #4]
 8003a0e:	6923      	ldr	r3, [r4, #16]
 8003a10:	6023      	str	r3, [r4, #0]
 8003a12:	89a3      	ldrh	r3, [r4, #12]
 8003a14:	f043 0308 	orr.w	r3, r3, #8
 8003a18:	81a3      	strh	r3, [r4, #12]
 8003a1a:	6923      	ldr	r3, [r4, #16]
 8003a1c:	b94b      	cbnz	r3, 8003a32 <__swsetup_r+0x9a>
 8003a1e:	89a3      	ldrh	r3, [r4, #12]
 8003a20:	f403 7320 	and.w	r3, r3, #640	; 0x280
 8003a24:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8003a28:	d003      	beq.n	8003a32 <__swsetup_r+0x9a>
 8003a2a:	4621      	mov	r1, r4
 8003a2c:	4630      	mov	r0, r6
 8003a2e:	f000 f919 	bl	8003c64 <__smakebuf_r>
 8003a32:	89a2      	ldrh	r2, [r4, #12]
 8003a34:	f012 0301 	ands.w	r3, r2, #1
 8003a38:	d00c      	beq.n	8003a54 <__swsetup_r+0xbc>
 8003a3a:	2300      	movs	r3, #0
 8003a3c:	60a3      	str	r3, [r4, #8]
 8003a3e:	6963      	ldr	r3, [r4, #20]
 8003a40:	425b      	negs	r3, r3
 8003a42:	61a3      	str	r3, [r4, #24]
 8003a44:	6923      	ldr	r3, [r4, #16]
 8003a46:	b953      	cbnz	r3, 8003a5e <__swsetup_r+0xc6>
 8003a48:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003a4c:	f013 0080 	ands.w	r0, r3, #128	; 0x80
 8003a50:	d1ba      	bne.n	80039c8 <__swsetup_r+0x30>
 8003a52:	bd70      	pop	{r4, r5, r6, pc}
 8003a54:	0792      	lsls	r2, r2, #30
 8003a56:	bf58      	it	pl
 8003a58:	6963      	ldrpl	r3, [r4, #20]
 8003a5a:	60a3      	str	r3, [r4, #8]
 8003a5c:	e7f2      	b.n	8003a44 <__swsetup_r+0xac>
 8003a5e:	2000      	movs	r0, #0
 8003a60:	e7f7      	b.n	8003a52 <__swsetup_r+0xba>
 8003a62:	bf00      	nop
 8003a64:	20000008 	.word	0x20000008
 8003a68:	08003f2c 	.word	0x08003f2c
 8003a6c:	08003f4c 	.word	0x08003f4c
 8003a70:	08003f0c 	.word	0x08003f0c

08003a74 <_close_r>:
 8003a74:	b538      	push	{r3, r4, r5, lr}
 8003a76:	4c06      	ldr	r4, [pc, #24]	; (8003a90 <_close_r+0x1c>)
 8003a78:	2300      	movs	r3, #0
 8003a7a:	4605      	mov	r5, r0
 8003a7c:	4608      	mov	r0, r1
 8003a7e:	6023      	str	r3, [r4, #0]
 8003a80:	f000 f9b4 	bl	8003dec <_close>
 8003a84:	1c43      	adds	r3, r0, #1
 8003a86:	d102      	bne.n	8003a8e <_close_r+0x1a>
 8003a88:	6823      	ldr	r3, [r4, #0]
 8003a8a:	b103      	cbz	r3, 8003a8e <_close_r+0x1a>
 8003a8c:	602b      	str	r3, [r5, #0]
 8003a8e:	bd38      	pop	{r3, r4, r5, pc}
 8003a90:	2001786c 	.word	0x2001786c

08003a94 <__sflush_r>:
 8003a94:	898a      	ldrh	r2, [r1, #12]
 8003a96:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003a9a:	4605      	mov	r5, r0
 8003a9c:	0710      	lsls	r0, r2, #28
 8003a9e:	460c      	mov	r4, r1
 8003aa0:	d45a      	bmi.n	8003b58 <__sflush_r+0xc4>
 8003aa2:	684b      	ldr	r3, [r1, #4]
 8003aa4:	2b00      	cmp	r3, #0
 8003aa6:	dc05      	bgt.n	8003ab4 <__sflush_r+0x20>
 8003aa8:	6c0b      	ldr	r3, [r1, #64]	; 0x40
 8003aaa:	2b00      	cmp	r3, #0
 8003aac:	dc02      	bgt.n	8003ab4 <__sflush_r+0x20>
 8003aae:	2000      	movs	r0, #0
 8003ab0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003ab4:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
 8003ab6:	2e00      	cmp	r6, #0
 8003ab8:	d0f9      	beq.n	8003aae <__sflush_r+0x1a>
 8003aba:	2300      	movs	r3, #0
 8003abc:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
 8003ac0:	682f      	ldr	r7, [r5, #0]
 8003ac2:	602b      	str	r3, [r5, #0]
 8003ac4:	d033      	beq.n	8003b2e <__sflush_r+0x9a>
 8003ac6:	6d60      	ldr	r0, [r4, #84]	; 0x54
 8003ac8:	89a3      	ldrh	r3, [r4, #12]
 8003aca:	075a      	lsls	r2, r3, #29
 8003acc:	d505      	bpl.n	8003ada <__sflush_r+0x46>
 8003ace:	6863      	ldr	r3, [r4, #4]
 8003ad0:	1ac0      	subs	r0, r0, r3
 8003ad2:	6b63      	ldr	r3, [r4, #52]	; 0x34
 8003ad4:	b10b      	cbz	r3, 8003ada <__sflush_r+0x46>
 8003ad6:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8003ad8:	1ac0      	subs	r0, r0, r3
 8003ada:	2300      	movs	r3, #0
 8003adc:	4602      	mov	r2, r0
 8003ade:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
 8003ae0:	6a21      	ldr	r1, [r4, #32]
 8003ae2:	4628      	mov	r0, r5
 8003ae4:	47b0      	blx	r6
 8003ae6:	1c43      	adds	r3, r0, #1
 8003ae8:	89a3      	ldrh	r3, [r4, #12]
 8003aea:	d106      	bne.n	8003afa <__sflush_r+0x66>
 8003aec:	6829      	ldr	r1, [r5, #0]
 8003aee:	291d      	cmp	r1, #29
 8003af0:	d84b      	bhi.n	8003b8a <__sflush_r+0xf6>
 8003af2:	4a2b      	ldr	r2, [pc, #172]	; (8003ba0 <__sflush_r+0x10c>)
 8003af4:	40ca      	lsrs	r2, r1
 8003af6:	07d6      	lsls	r6, r2, #31
 8003af8:	d547      	bpl.n	8003b8a <__sflush_r+0xf6>
 8003afa:	2200      	movs	r2, #0
 8003afc:	6062      	str	r2, [r4, #4]
 8003afe:	04d9      	lsls	r1, r3, #19
 8003b00:	6922      	ldr	r2, [r4, #16]
 8003b02:	6022      	str	r2, [r4, #0]
 8003b04:	d504      	bpl.n	8003b10 <__sflush_r+0x7c>
 8003b06:	1c42      	adds	r2, r0, #1
 8003b08:	d101      	bne.n	8003b0e <__sflush_r+0x7a>
 8003b0a:	682b      	ldr	r3, [r5, #0]
 8003b0c:	b903      	cbnz	r3, 8003b10 <__sflush_r+0x7c>
 8003b0e:	6560      	str	r0, [r4, #84]	; 0x54
 8003b10:	6b61      	ldr	r1, [r4, #52]	; 0x34
 8003b12:	602f      	str	r7, [r5, #0]
 8003b14:	2900      	cmp	r1, #0
 8003b16:	d0ca      	beq.n	8003aae <__sflush_r+0x1a>
 8003b18:	f104 0344 	add.w	r3, r4, #68	; 0x44
 8003b1c:	4299      	cmp	r1, r3
 8003b1e:	d002      	beq.n	8003b26 <__sflush_r+0x92>
 8003b20:	4628      	mov	r0, r5
 8003b22:	f000 f8e1 	bl	8003ce8 <_free_r>
 8003b26:	2000      	movs	r0, #0
 8003b28:	6360      	str	r0, [r4, #52]	; 0x34
 8003b2a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003b2e:	6a21      	ldr	r1, [r4, #32]
 8003b30:	2301      	movs	r3, #1
 8003b32:	4628      	mov	r0, r5
 8003b34:	47b0      	blx	r6
 8003b36:	1c41      	adds	r1, r0, #1
 8003b38:	d1c6      	bne.n	8003ac8 <__sflush_r+0x34>
 8003b3a:	682b      	ldr	r3, [r5, #0]
 8003b3c:	2b00      	cmp	r3, #0
 8003b3e:	d0c3      	beq.n	8003ac8 <__sflush_r+0x34>
 8003b40:	2b1d      	cmp	r3, #29
 8003b42:	d001      	beq.n	8003b48 <__sflush_r+0xb4>
 8003b44:	2b16      	cmp	r3, #22
 8003b46:	d101      	bne.n	8003b4c <__sflush_r+0xb8>
 8003b48:	602f      	str	r7, [r5, #0]
 8003b4a:	e7b0      	b.n	8003aae <__sflush_r+0x1a>
 8003b4c:	89a3      	ldrh	r3, [r4, #12]
 8003b4e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003b52:	81a3      	strh	r3, [r4, #12]
 8003b54:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003b58:	690f      	ldr	r7, [r1, #16]
 8003b5a:	2f00      	cmp	r7, #0
 8003b5c:	d0a7      	beq.n	8003aae <__sflush_r+0x1a>
 8003b5e:	0793      	lsls	r3, r2, #30
 8003b60:	680e      	ldr	r6, [r1, #0]
 8003b62:	bf08      	it	eq
 8003b64:	694b      	ldreq	r3, [r1, #20]
 8003b66:	600f      	str	r7, [r1, #0]
 8003b68:	bf18      	it	ne
 8003b6a:	2300      	movne	r3, #0
 8003b6c:	eba6 0807 	sub.w	r8, r6, r7
 8003b70:	608b      	str	r3, [r1, #8]
 8003b72:	f1b8 0f00 	cmp.w	r8, #0
 8003b76:	dd9a      	ble.n	8003aae <__sflush_r+0x1a>
 8003b78:	4643      	mov	r3, r8
 8003b7a:	463a      	mov	r2, r7
 8003b7c:	6a21      	ldr	r1, [r4, #32]
 8003b7e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
 8003b80:	4628      	mov	r0, r5
 8003b82:	47b0      	blx	r6
 8003b84:	2800      	cmp	r0, #0
 8003b86:	dc07      	bgt.n	8003b98 <__sflush_r+0x104>
 8003b88:	89a3      	ldrh	r3, [r4, #12]
 8003b8a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003b8e:	81a3      	strh	r3, [r4, #12]
 8003b90:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003b94:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003b98:	4407      	add	r7, r0
 8003b9a:	eba8 0800 	sub.w	r8, r8, r0
 8003b9e:	e7e8      	b.n	8003b72 <__sflush_r+0xde>
 8003ba0:	20400001 	.word	0x20400001

08003ba4 <_fflush_r>:
 8003ba4:	b538      	push	{r3, r4, r5, lr}
 8003ba6:	690b      	ldr	r3, [r1, #16]
 8003ba8:	4605      	mov	r5, r0
 8003baa:	460c      	mov	r4, r1
 8003bac:	b1db      	cbz	r3, 8003be6 <_fflush_r+0x42>
 8003bae:	b118      	cbz	r0, 8003bb8 <_fflush_r+0x14>
 8003bb0:	6983      	ldr	r3, [r0, #24]
 8003bb2:	b90b      	cbnz	r3, 8003bb8 <_fflush_r+0x14>
 8003bb4:	f7ff fa7a 	bl	80030ac <__sinit>
 8003bb8:	4b0c      	ldr	r3, [pc, #48]	; (8003bec <_fflush_r+0x48>)
 8003bba:	429c      	cmp	r4, r3
 8003bbc:	d109      	bne.n	8003bd2 <_fflush_r+0x2e>
 8003bbe:	686c      	ldr	r4, [r5, #4]
 8003bc0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003bc4:	b17b      	cbz	r3, 8003be6 <_fflush_r+0x42>
 8003bc6:	4621      	mov	r1, r4
 8003bc8:	4628      	mov	r0, r5
 8003bca:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8003bce:	f7ff bf61 	b.w	8003a94 <__sflush_r>
 8003bd2:	4b07      	ldr	r3, [pc, #28]	; (8003bf0 <_fflush_r+0x4c>)
 8003bd4:	429c      	cmp	r4, r3
 8003bd6:	d101      	bne.n	8003bdc <_fflush_r+0x38>
 8003bd8:	68ac      	ldr	r4, [r5, #8]
 8003bda:	e7f1      	b.n	8003bc0 <_fflush_r+0x1c>
 8003bdc:	4b05      	ldr	r3, [pc, #20]	; (8003bf4 <_fflush_r+0x50>)
 8003bde:	429c      	cmp	r4, r3
 8003be0:	bf08      	it	eq
 8003be2:	68ec      	ldreq	r4, [r5, #12]
 8003be4:	e7ec      	b.n	8003bc0 <_fflush_r+0x1c>
 8003be6:	2000      	movs	r0, #0
 8003be8:	bd38      	pop	{r3, r4, r5, pc}
 8003bea:	bf00      	nop
 8003bec:	08003f2c 	.word	0x08003f2c
 8003bf0:	08003f4c 	.word	0x08003f4c
 8003bf4:	08003f0c 	.word	0x08003f0c

08003bf8 <_lseek_r>:
 8003bf8:	b538      	push	{r3, r4, r5, lr}
 8003bfa:	4c07      	ldr	r4, [pc, #28]	; (8003c18 <_lseek_r+0x20>)
 8003bfc:	4605      	mov	r5, r0
 8003bfe:	4608      	mov	r0, r1
 8003c00:	4611      	mov	r1, r2
 8003c02:	2200      	movs	r2, #0
 8003c04:	6022      	str	r2, [r4, #0]
 8003c06:	461a      	mov	r2, r3
 8003c08:	f000 f908 	bl	8003e1c <_lseek>
 8003c0c:	1c43      	adds	r3, r0, #1
 8003c0e:	d102      	bne.n	8003c16 <_lseek_r+0x1e>
 8003c10:	6823      	ldr	r3, [r4, #0]
 8003c12:	b103      	cbz	r3, 8003c16 <_lseek_r+0x1e>
 8003c14:	602b      	str	r3, [r5, #0]
 8003c16:	bd38      	pop	{r3, r4, r5, pc}
 8003c18:	2001786c 	.word	0x2001786c

08003c1c <__swhatbuf_r>:
 8003c1c:	b570      	push	{r4, r5, r6, lr}
 8003c1e:	460e      	mov	r6, r1
 8003c20:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8003c24:	2900      	cmp	r1, #0
 8003c26:	b090      	sub	sp, #64	; 0x40
 8003c28:	4614      	mov	r4, r2
 8003c2a:	461d      	mov	r5, r3
 8003c2c:	da07      	bge.n	8003c3e <__swhatbuf_r+0x22>
 8003c2e:	2300      	movs	r3, #0
 8003c30:	602b      	str	r3, [r5, #0]
 8003c32:	89b3      	ldrh	r3, [r6, #12]
 8003c34:	061a      	lsls	r2, r3, #24
 8003c36:	d410      	bmi.n	8003c5a <__swhatbuf_r+0x3e>
 8003c38:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8003c3c:	e00e      	b.n	8003c5c <__swhatbuf_r+0x40>
 8003c3e:	aa01      	add	r2, sp, #4
 8003c40:	f000 f8b2 	bl	8003da8 <_fstat_r>
 8003c44:	2800      	cmp	r0, #0
 8003c46:	dbf2      	blt.n	8003c2e <__swhatbuf_r+0x12>
 8003c48:	9a02      	ldr	r2, [sp, #8]
 8003c4a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
 8003c4e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
 8003c52:	425a      	negs	r2, r3
 8003c54:	415a      	adcs	r2, r3
 8003c56:	602a      	str	r2, [r5, #0]
 8003c58:	e7ee      	b.n	8003c38 <__swhatbuf_r+0x1c>
 8003c5a:	2340      	movs	r3, #64	; 0x40
 8003c5c:	2000      	movs	r0, #0
 8003c5e:	6023      	str	r3, [r4, #0]
 8003c60:	b010      	add	sp, #64	; 0x40
 8003c62:	bd70      	pop	{r4, r5, r6, pc}

08003c64 <__smakebuf_r>:
 8003c64:	898b      	ldrh	r3, [r1, #12]
 8003c66:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8003c68:	079d      	lsls	r5, r3, #30
 8003c6a:	4606      	mov	r6, r0
 8003c6c:	460c      	mov	r4, r1
 8003c6e:	d507      	bpl.n	8003c80 <__smakebuf_r+0x1c>
 8003c70:	f104 0347 	add.w	r3, r4, #71	; 0x47
 8003c74:	6023      	str	r3, [r4, #0]
 8003c76:	6123      	str	r3, [r4, #16]
 8003c78:	2301      	movs	r3, #1
 8003c7a:	6163      	str	r3, [r4, #20]
 8003c7c:	b002      	add	sp, #8
 8003c7e:	bd70      	pop	{r4, r5, r6, pc}
 8003c80:	ab01      	add	r3, sp, #4
 8003c82:	466a      	mov	r2, sp
 8003c84:	f7ff ffca 	bl	8003c1c <__swhatbuf_r>
 8003c88:	9900      	ldr	r1, [sp, #0]
 8003c8a:	4605      	mov	r5, r0
 8003c8c:	4630      	mov	r0, r6
 8003c8e:	f7ff fa97 	bl	80031c0 <_malloc_r>
 8003c92:	b948      	cbnz	r0, 8003ca8 <__smakebuf_r+0x44>
 8003c94:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003c98:	059a      	lsls	r2, r3, #22
 8003c9a:	d4ef      	bmi.n	8003c7c <__smakebuf_r+0x18>
 8003c9c:	f023 0303 	bic.w	r3, r3, #3
 8003ca0:	f043 0302 	orr.w	r3, r3, #2
 8003ca4:	81a3      	strh	r3, [r4, #12]
 8003ca6:	e7e3      	b.n	8003c70 <__smakebuf_r+0xc>
 8003ca8:	4b0d      	ldr	r3, [pc, #52]	; (8003ce0 <__smakebuf_r+0x7c>)
 8003caa:	62b3      	str	r3, [r6, #40]	; 0x28
 8003cac:	89a3      	ldrh	r3, [r4, #12]
 8003cae:	6020      	str	r0, [r4, #0]
 8003cb0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8003cb4:	81a3      	strh	r3, [r4, #12]
 8003cb6:	9b00      	ldr	r3, [sp, #0]
 8003cb8:	6163      	str	r3, [r4, #20]
 8003cba:	9b01      	ldr	r3, [sp, #4]
 8003cbc:	6120      	str	r0, [r4, #16]
 8003cbe:	b15b      	cbz	r3, 8003cd8 <__smakebuf_r+0x74>
 8003cc0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8003cc4:	4630      	mov	r0, r6
 8003cc6:	f000 f881 	bl	8003dcc <_isatty_r>
 8003cca:	b128      	cbz	r0, 8003cd8 <__smakebuf_r+0x74>
 8003ccc:	89a3      	ldrh	r3, [r4, #12]
 8003cce:	f023 0303 	bic.w	r3, r3, #3
 8003cd2:	f043 0301 	orr.w	r3, r3, #1
 8003cd6:	81a3      	strh	r3, [r4, #12]
 8003cd8:	89a3      	ldrh	r3, [r4, #12]
 8003cda:	431d      	orrs	r5, r3
 8003cdc:	81a5      	strh	r5, [r4, #12]
 8003cde:	e7cd      	b.n	8003c7c <__smakebuf_r+0x18>
 8003ce0:	0800302d 	.word	0x0800302d

08003ce4 <__malloc_lock>:
 8003ce4:	4770      	bx	lr

08003ce6 <__malloc_unlock>:
 8003ce6:	4770      	bx	lr

08003ce8 <_free_r>:
 8003ce8:	b538      	push	{r3, r4, r5, lr}
 8003cea:	4605      	mov	r5, r0
 8003cec:	2900      	cmp	r1, #0
 8003cee:	d045      	beq.n	8003d7c <_free_r+0x94>
 8003cf0:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8003cf4:	1f0c      	subs	r4, r1, #4
 8003cf6:	2b00      	cmp	r3, #0
 8003cf8:	bfb8      	it	lt
 8003cfa:	18e4      	addlt	r4, r4, r3
 8003cfc:	f7ff fff2 	bl	8003ce4 <__malloc_lock>
 8003d00:	4a1f      	ldr	r2, [pc, #124]	; (8003d80 <_free_r+0x98>)
 8003d02:	6813      	ldr	r3, [r2, #0]
 8003d04:	4610      	mov	r0, r2
 8003d06:	b933      	cbnz	r3, 8003d16 <_free_r+0x2e>
 8003d08:	6063      	str	r3, [r4, #4]
 8003d0a:	6014      	str	r4, [r2, #0]
 8003d0c:	4628      	mov	r0, r5
 8003d0e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8003d12:	f7ff bfe8 	b.w	8003ce6 <__malloc_unlock>
 8003d16:	42a3      	cmp	r3, r4
 8003d18:	d90c      	bls.n	8003d34 <_free_r+0x4c>
 8003d1a:	6821      	ldr	r1, [r4, #0]
 8003d1c:	1862      	adds	r2, r4, r1
 8003d1e:	4293      	cmp	r3, r2
 8003d20:	bf04      	itt	eq
 8003d22:	681a      	ldreq	r2, [r3, #0]
 8003d24:	685b      	ldreq	r3, [r3, #4]
 8003d26:	6063      	str	r3, [r4, #4]
 8003d28:	bf04      	itt	eq
 8003d2a:	1852      	addeq	r2, r2, r1
 8003d2c:	6022      	streq	r2, [r4, #0]
 8003d2e:	6004      	str	r4, [r0, #0]
 8003d30:	e7ec      	b.n	8003d0c <_free_r+0x24>
 8003d32:	4613      	mov	r3, r2
 8003d34:	685a      	ldr	r2, [r3, #4]
 8003d36:	b10a      	cbz	r2, 8003d3c <_free_r+0x54>
 8003d38:	42a2      	cmp	r2, r4
 8003d3a:	d9fa      	bls.n	8003d32 <_free_r+0x4a>
 8003d3c:	6819      	ldr	r1, [r3, #0]
 8003d3e:	1858      	adds	r0, r3, r1
 8003d40:	42a0      	cmp	r0, r4
 8003d42:	d10b      	bne.n	8003d5c <_free_r+0x74>
 8003d44:	6820      	ldr	r0, [r4, #0]
 8003d46:	4401      	add	r1, r0
 8003d48:	1858      	adds	r0, r3, r1
 8003d4a:	4282      	cmp	r2, r0
 8003d4c:	6019      	str	r1, [r3, #0]
 8003d4e:	d1dd      	bne.n	8003d0c <_free_r+0x24>
 8003d50:	6810      	ldr	r0, [r2, #0]
 8003d52:	6852      	ldr	r2, [r2, #4]
 8003d54:	605a      	str	r2, [r3, #4]
 8003d56:	4401      	add	r1, r0
 8003d58:	6019      	str	r1, [r3, #0]
 8003d5a:	e7d7      	b.n	8003d0c <_free_r+0x24>
 8003d5c:	d902      	bls.n	8003d64 <_free_r+0x7c>
 8003d5e:	230c      	movs	r3, #12
 8003d60:	602b      	str	r3, [r5, #0]
 8003d62:	e7d3      	b.n	8003d0c <_free_r+0x24>
 8003d64:	6820      	ldr	r0, [r4, #0]
 8003d66:	1821      	adds	r1, r4, r0
 8003d68:	428a      	cmp	r2, r1
 8003d6a:	bf04      	itt	eq
 8003d6c:	6811      	ldreq	r1, [r2, #0]
 8003d6e:	6852      	ldreq	r2, [r2, #4]
 8003d70:	6062      	str	r2, [r4, #4]
 8003d72:	bf04      	itt	eq
 8003d74:	1809      	addeq	r1, r1, r0
 8003d76:	6021      	streq	r1, [r4, #0]
 8003d78:	605c      	str	r4, [r3, #4]
 8003d7a:	e7c7      	b.n	8003d0c <_free_r+0x24>
 8003d7c:	bd38      	pop	{r3, r4, r5, pc}
 8003d7e:	bf00      	nop
 8003d80:	20017798 	.word	0x20017798

08003d84 <_read_r>:
 8003d84:	b538      	push	{r3, r4, r5, lr}
 8003d86:	4c07      	ldr	r4, [pc, #28]	; (8003da4 <_read_r+0x20>)
 8003d88:	4605      	mov	r5, r0
 8003d8a:	4608      	mov	r0, r1
 8003d8c:	4611      	mov	r1, r2
 8003d8e:	2200      	movs	r2, #0
 8003d90:	6022      	str	r2, [r4, #0]
 8003d92:	461a      	mov	r2, r3
 8003d94:	f000 f84a 	bl	8003e2c <_read>
 8003d98:	1c43      	adds	r3, r0, #1
 8003d9a:	d102      	bne.n	8003da2 <_read_r+0x1e>
 8003d9c:	6823      	ldr	r3, [r4, #0]
 8003d9e:	b103      	cbz	r3, 8003da2 <_read_r+0x1e>
 8003da0:	602b      	str	r3, [r5, #0]
 8003da2:	bd38      	pop	{r3, r4, r5, pc}
 8003da4:	2001786c 	.word	0x2001786c

08003da8 <_fstat_r>:
 8003da8:	b538      	push	{r3, r4, r5, lr}
 8003daa:	4c07      	ldr	r4, [pc, #28]	; (8003dc8 <_fstat_r+0x20>)
 8003dac:	2300      	movs	r3, #0
 8003dae:	4605      	mov	r5, r0
 8003db0:	4608      	mov	r0, r1
 8003db2:	4611      	mov	r1, r2
 8003db4:	6023      	str	r3, [r4, #0]
 8003db6:	f000 f821 	bl	8003dfc <_fstat>
 8003dba:	1c43      	adds	r3, r0, #1
 8003dbc:	d102      	bne.n	8003dc4 <_fstat_r+0x1c>
 8003dbe:	6823      	ldr	r3, [r4, #0]
 8003dc0:	b103      	cbz	r3, 8003dc4 <_fstat_r+0x1c>
 8003dc2:	602b      	str	r3, [r5, #0]
 8003dc4:	bd38      	pop	{r3, r4, r5, pc}
 8003dc6:	bf00      	nop
 8003dc8:	2001786c 	.word	0x2001786c

08003dcc <_isatty_r>:
 8003dcc:	b538      	push	{r3, r4, r5, lr}
 8003dce:	4c06      	ldr	r4, [pc, #24]	; (8003de8 <_isatty_r+0x1c>)
 8003dd0:	2300      	movs	r3, #0
 8003dd2:	4605      	mov	r5, r0
 8003dd4:	4608      	mov	r0, r1
 8003dd6:	6023      	str	r3, [r4, #0]
 8003dd8:	f000 f818 	bl	8003e0c <_isatty>
 8003ddc:	1c43      	adds	r3, r0, #1
 8003dde:	d102      	bne.n	8003de6 <_isatty_r+0x1a>
 8003de0:	6823      	ldr	r3, [r4, #0]
 8003de2:	b103      	cbz	r3, 8003de6 <_isatty_r+0x1a>
 8003de4:	602b      	str	r3, [r5, #0]
 8003de6:	bd38      	pop	{r3, r4, r5, pc}
 8003de8:	2001786c 	.word	0x2001786c

08003dec <_close>:
 8003dec:	4b02      	ldr	r3, [pc, #8]	; (8003df8 <_close+0xc>)
 8003dee:	2258      	movs	r2, #88	; 0x58
 8003df0:	601a      	str	r2, [r3, #0]
 8003df2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003df6:	4770      	bx	lr
 8003df8:	2001786c 	.word	0x2001786c

08003dfc <_fstat>:
 8003dfc:	4b02      	ldr	r3, [pc, #8]	; (8003e08 <_fstat+0xc>)
 8003dfe:	2258      	movs	r2, #88	; 0x58
 8003e00:	601a      	str	r2, [r3, #0]
 8003e02:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e06:	4770      	bx	lr
 8003e08:	2001786c 	.word	0x2001786c

08003e0c <_isatty>:
 8003e0c:	4b02      	ldr	r3, [pc, #8]	; (8003e18 <_isatty+0xc>)
 8003e0e:	2258      	movs	r2, #88	; 0x58
 8003e10:	601a      	str	r2, [r3, #0]
 8003e12:	2000      	movs	r0, #0
 8003e14:	4770      	bx	lr
 8003e16:	bf00      	nop
 8003e18:	2001786c 	.word	0x2001786c

08003e1c <_lseek>:
 8003e1c:	4b02      	ldr	r3, [pc, #8]	; (8003e28 <_lseek+0xc>)
 8003e1e:	2258      	movs	r2, #88	; 0x58
 8003e20:	601a      	str	r2, [r3, #0]
 8003e22:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e26:	4770      	bx	lr
 8003e28:	2001786c 	.word	0x2001786c

08003e2c <_read>:
 8003e2c:	4b02      	ldr	r3, [pc, #8]	; (8003e38 <_read+0xc>)
 8003e2e:	2258      	movs	r2, #88	; 0x58
 8003e30:	601a      	str	r2, [r3, #0]
 8003e32:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e36:	4770      	bx	lr
 8003e38:	2001786c 	.word	0x2001786c

08003e3c <_sbrk>:
 8003e3c:	4a04      	ldr	r2, [pc, #16]	; (8003e50 <_sbrk+0x14>)
 8003e3e:	4905      	ldr	r1, [pc, #20]	; (8003e54 <_sbrk+0x18>)
 8003e40:	6813      	ldr	r3, [r2, #0]
 8003e42:	2b00      	cmp	r3, #0
 8003e44:	bf08      	it	eq
 8003e46:	460b      	moveq	r3, r1
 8003e48:	4418      	add	r0, r3
 8003e4a:	6010      	str	r0, [r2, #0]
 8003e4c:	4618      	mov	r0, r3
 8003e4e:	4770      	bx	lr
 8003e50:	200177a0 	.word	0x200177a0
 8003e54:	20017870 	.word	0x20017870

08003e58 <_write>:
 8003e58:	4b02      	ldr	r3, [pc, #8]	; (8003e64 <_write+0xc>)
 8003e5a:	2258      	movs	r2, #88	; 0x58
 8003e5c:	601a      	str	r2, [r3, #0]
 8003e5e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e62:	4770      	bx	lr
 8003e64:	2001786c 	.word	0x2001786c

08003e68 <_init>:
 8003e68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003e6a:	bf00      	nop
 8003e6c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003e6e:	bc08      	pop	{r3}
 8003e70:	469e      	mov	lr, r3
 8003e72:	4770      	bx	lr

08003e74 <_fini>:
 8003e74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003e76:	bf00      	nop
 8003e78:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003e7a:	bc08      	pop	{r3}
 8003e7c:	469e      	mov	lr, r3
 8003e7e:	4770      	bx	lr
