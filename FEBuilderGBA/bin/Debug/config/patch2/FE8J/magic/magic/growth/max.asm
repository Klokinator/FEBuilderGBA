@thumb
	mov	r1, #26	;加算
	ldsb	r1, [r4, r1]
	ldrb	r2, [r5, #25]	;上限
	mov	r0, #25
	ldsb	r0, [r5, r0]	;上限
	cmp	r1, r0
	ble	jump
	strb	r2, [r4, #26]	;加算
jump