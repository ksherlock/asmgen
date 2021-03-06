
FATFONT = $6000

; A = character, X = column, Y = row; A is clobbered, X&Y are not

    stx SCRATCH_X
    sty SCRATCH_Y
    
    ; find address of glyph
    sta font_ptr
    lda #0
    sta font_ptr + 1
    asl font_ptr ; multiply by 8
    rol font_ptr + 1
    asl font_ptr
    rol font_ptr + 1
    asl font_ptr
    rol font_ptr + 1

    clc         ; add font table address to get pointer inside font table
    lda #<fatfont ; would be slightly faster if page aligned because you
    adc font_ptr  ; could just store the low byte
    sta font_ptr
    lda #>fatfont
    adc font_ptr+1
    sta font_ptr+1

    clc
    lda hgrtextrow_l,y ; load address of first line of hgr text
    adc SCRATCH_X
    sta hgr_ptr
    lda hgrtextrow_h,y
    adc #0
    sta hgr_ptr+1

    ldy #0
slowfont_loop
    lda (font_ptr),y
    sta (hgr_ptr),y
    clc
    lda hgr_ptr
    adc #$ff
    sta hgr_ptr
    lda #3
    adc hgr_ptr+1
    sta hgr_ptr+1
    iny
    cpy #8
    bcc slowfont_loop

done
    ldx SCRATCH_X
    ldy SCRATCH_Y
    rts




hgrtextrow_l
        .byte $00,$80,$00,$80,$00,$80,$00,$80
        .byte $28,$A8,$28,$A8,$28,$A8,$28,$A8
        .byte $50,$D0,$50,$D0,$50,$D0,$50,$D0
hgrtextrow_h
        .byte $20,$20,$21,$21,$22,$22,$23,$23
        .byte $20,$20,$21,$21,$22,$22,$23,$23
        .byte $20,$20,$21,$21,$22,$22,$23,$23
