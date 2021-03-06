; os memory map
CLRTEXT = $c050
SETTEXT = $c051
CLRMIXED = $c052
SETMIXED = $c053
TXTPAGE1 = $c054
TXTPAGE2 = $c055
CLRHIRES = $c056
SETHIRES = $c057

; ROM entry points
COUT = $fded
ROMWAIT = $fca8

; Zero page locations we use (unused by Monitor, Applesoft, or ProDOS)
PARAM0          = $06
PARAM1          = $07
PARAM2          = $08
PARAM3          = $09
SCRATCH0        = $19
SCRATCH1        = $1a
SPRITEPTR_L     = $1b
SPRITEPTR_H     = $1c
RENDERCOUNT     = $ce
DRAWPAGE        = $d7      ; pos = page1, neg = page2
BGSTORE = $fa
TEMPADDR        = $fc

BGTOP = $c0       ; page number of first byte beyond top of backing store stack

; constants
MAXPOSX                 = 250
MAXPOSY                 = 192 - 16


    *= $6000

start
    bit CLRTEXT     ; start with HGR page 1, full screen
    bit CLRMIXED
    bit TXTPAGE1
    bit SETHIRES

    jsr clrscr
    jsr initonce
    jsr initsprites

gameloop
    jsr renderstart
    jsr pageflip
    jsr movestart
    dec fasttoggle
    bpl gofast
    jsr wait
gofast
    jsr restorebg_driver
    jmp gameloop

fasttoggle
    .byte 0


initonce
    lda #0
    sta DRAWPAGE
    rts


initsprites
    jsr restorebg_init
    rts

pageflip
    lda DRAWPAGE
    eor #$80
    sta DRAWPAGE
    bpl pageflip1
    bit TXTPAGE2
    rts
pageflip1
    bit TXTPAGE1
    rts



; Draw sprites by looping through the list of sprites
renderstart
    lda #sprite_l - sprite_active
    sta RENDERCOUNT
    inc renderroundrobin_smc+1

renderroundrobin_smc
    ldy #0
    sty PARAM3

renderloop
    lda PARAM3
    and #sprite_l - sprite_active - 1
    tay
    lda sprite_active,y
    beq renderskip      ; skip if zero
    lda sprite_l,y
    sta jsrsprite_smc+1
    lda sprite_h,y
    sta jsrsprite_smc+2
    lda sprite_x,y
    sta PARAM0
    lda sprite_y,y
    sta PARAM1

jsrsprite_smc
    jsr $ffff           ; wish you could JSR ($nnnn)
renderskip
    inc PARAM3
    dec RENDERCOUNT
    bne renderloop

renderend
    rts


movestart
    lda #sprite_l - sprite_active
    sta RENDERCOUNT
    ldy #0

moveloop
    lda sprite_active,y
    bmi moveend
    beq movenext

movex
    ; Apply X velocity to X coordinate
    lda sprite_dirx,y
    bpl move_right
    sec
    lda sprite_x,y
    sbc sprite_dx,y
    cmp #MAXPOSX
    bcc movex_end
    lda #1
    sta sprite_dirx,y
    lda #0
    sta sprite_x,y
    bpl movey

move_right
    clc
    lda sprite_x,y
    adc sprite_dx,y
    cmp #MAXPOSX
    bcc movex_end
    lda #-1
    sta sprite_dirx,y
    lda #MAXPOSX

movex_end
    ; Store the new X
    sta sprite_x,y

movey
    ; Apply Y velocity to Y coordinate
    lda sprite_diry,y
    bpl move_down
    sec
    lda sprite_y,y
    sbc sprite_dy,y
    cmp #MAXPOSY        ; checking wraparound
    bcc movey_end       ; less than => not wrapped
    lda #1
    sta sprite_diry,y
    lda #0
    sta sprite_y,y
    bpl movenext

move_down
    clc
    lda sprite_y,y
    adc sprite_dy,y
    cmp #MAXPOSY
    bcc movey_end
    lda #-1
    sta sprite_diry,y
    lda #MAXPOSY

movey_end
    ; Store the new X
    sta sprite_y,y

movenext
    iny
    dec RENDERCOUNT
    bne moveloop

moveend
    rts



wait
    ldy     #$06    ; Loop a bit
wait_outer
    ldx     #$ff
wait_inner
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dex
    bne     wait_inner
    dey
    bne     wait_outer
    rts


clrscr
    lda #0
    sta clr1+1
    sta clr2+1
    lda #$20
    sta clr1+2
    lda #$40
    sta clr2+2
clr0
    lda #0
    ldy #0
clr1
    sta $ffff,y
clr2
    sta $ffff,y
    iny
    bne clr1
    inc clr1+2
    inc clr2+2
    ldx clr1+2
    cpx #$40
    bcc clr1

; put the same info on both screens
clrscr2
    ldy #1
clrouter
    ldx #0
clrloop
    lda HGRROWS_H1,x
    sta SCRATCH1
    lda HGRROWS_H2,x
    sta TEMPADDR+1
    lda HGRROWS_L,x
    sta SCRATCH0
    sta TEMPADDR
    lda tophalf,y
    cpx #96
    bcc clrwrite
    lda bothalf,y
clrwrite
    sta (SCRATCH0),y
    sta (TEMPADDR),y
    inx
    cpx #192
    bcc clrloop
    iny
    cpy #40
    bcs clrend
    bne clrouter
clrend
    rts

tophalf
    .byte 0
    .byte $88, ~01010101, ~00101010, ~01010101, ~00101010, ~01010101
    .byte $08, ~00101010, ~01010101, ~00101010, ~01010101, ~00101010
    .byte $10, ~01010101, ~00101010, ~01010101, ~00101010, ~01010101
    .byte $1c, ~00101010, ~01010101, ~00101010, ~01010101, ~00101010
    .byte $88, ~01010101, ~00101010, ~01010101, ~00101010, ~01010101
    .byte $9c, ~01010101, ~00101010, ~01010101, ~00101010, ~01010101
    .byte $9c, ~00101010, ~01010101, ~00101010, ~01010101, ~00101010
    .byte $1c, ~01010101, ~00101010, ~01010101, ~00101010, ~01010101

bothalf
    .byte 0
    .byte $9c, ~11010101, ~10101010, ~11010101, ~10101010, ~11010101
    .byte ~10001000, ~10101010, ~11010101, ~10101010, ~11010101, ~10101010
    .byte ~00010000, ~11010101, ~10101010, ~11010101, ~10101010, ~11010101
    .byte $08, ~10101010, ~11010101, ~10101010, ~11010101, ~10101010
    .byte $9c, ~11010101, ~10101010, ~11010101, ~10101010, ~11010101
    .byte $9c, ~11010101, ~10101010, ~11010101, ~10101010, ~11010101
    .byte $88, ~11010101, ~10101010, ~11010101, ~10101010, ~11010101
    .byte $08, ~10101010, ~11010101, ~10101010, ~11010101, ~10101010



; Sprite data is interleaved so a simple indexed mode can be used. This is not
; convenient to set up but makes faster accessing because you don't have to 
; increment the index register. For example, all the info about sprite #2 can
; be indexed using Y = 2 on the indexed operators, e.g. "lda sprite_active,y",
; "lda sprite_x,y", etc.
;
; Number of sprites must be a power of 2

sprite_active
    .byte 1, 1, 1, 1, 1, 1, 1, 1  ; 1 = active, 0 = skip

sprite_l
    .byte <APPLE_SPRITE9X11, <APPLE_SPRITE9X11, <APPLE_SPRITE9X11, <APPLE_SPRITE9X11, <APPLE_SPRITE9X11, <APPLE_SPRITE9X11, <MOLDY_BURGER, <MOLDY_BURGER

sprite_h
    .byte >APPLE_SPRITE9X11, >APPLE_SPRITE9X11, >APPLE_SPRITE9X11, >APPLE_SPRITE9X11, >APPLE_SPRITE9X11, >APPLE_SPRITE9X11, >MOLDY_BURGER, >MOLDY_BURGER

sprite_x
    .byte 80, 164, 33, 245, 4, 9, 255, 18

sprite_y
    .byte 116, 126, 40, 60, 80, 100, 120, 140

sprite_dx
    .byte 1, 2, 3, 4, 1, 2, 3, 4

sprite_dirx
    .byte -1, -1, -1, -1, 1, 1, 1, 1

sprite_dy
    .byte 4, 3, 2, 1, 4, 3, 2, 1

sprite_diry
    .byte 1, 1, 1, 1, -1, -1, -1, -1



.include multitest-asmgen-driver.s
