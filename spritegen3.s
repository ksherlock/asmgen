
; This file was generated by HiSprite.py, a sprite compiler by Quinn Dunki.
; If you feel the need to modify this file, you are probably doing it wrong.

BOXW_ORG: ;6 bytes per row
	SAVE_AXY
	ldy PARAM0
	ldx MOD7_2,y
	jmp (BOXW_ORG_JMP,x)

BOXW_ORG_JMP:
	.addr BOXW_ORG_SHIFT0
	.addr BOXW_ORG_SHIFT1
	.addr BOXW_ORG_SHIFT2
	.addr BOXW_ORG_SHIFT3
	.addr BOXW_ORG_SHIFT4
	.addr BOXW_ORG_SHIFT5
	.addr BOXW_ORG_SHIFT6


BOXW_ORG_SHIFT0:
	ldy PARAM0

	ldx PARAM1
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	RESTORE_AXY
	rts



BOXW_ORG_SHIFT1:
	ldy PARAM0

	ldx PARAM1
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10101000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10101000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	RESTORE_AXY
	rts



BOXW_ORG_SHIFT2:
	ldy PARAM0

	ldx PARAM1
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10100010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10100010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10100010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10100010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	iny

	RESTORE_AXY
	rts



BOXW_ORG_SHIFT3:
	ldy PARAM0

	ldx PARAM1
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11010001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10010001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10010001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11010001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	RESTORE_AXY
	rts



BOXW_ORG_SHIFT4:
	ldy PARAM0

	ldx PARAM1
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11010100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10100000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11010100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	RESTORE_AXY
	rts



BOXW_ORG_SHIFT5:
	ldy PARAM0

	ldx PARAM1
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10010001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10010001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10000010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10010001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10010001
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%10010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%10010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11010000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	RESTORE_AXY
	rts



BOXW_ORG_SHIFT6:
	ldy PARAM0

	ldx PARAM1
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%11000000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11000101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10001000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11000100
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11000101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny
	lda #%11000000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #%11000000
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%10101010
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	lda #%11010101
	ora (SCRATCH0),y
	sta (SCRATCH0),y
	iny
	iny

	RESTORE_AXY
	rts



