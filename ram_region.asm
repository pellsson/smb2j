		.org $6000

WRAM_StartAddress:

;
; Number of stars collected
;
WRAM_NumberOfStars:
		.db $08

;
; Player palette colors
;
WRAM_PlayerColors:
		.db $22, $16, $27, $18 ; Mario
		.db $22, $37, $27, $16 ; Luigi

WRAM_JumpMForceData:
		.db $20, $20, $1E, $28, $28, $0D, $04
WRAM_FallMForceData:
		.db $70, $70, $60, $90, $90, $0A, $09
WRAM_FrictionData:
		.db $E4, $98, $D0

WRAM_EnemyAttributeData:
		.db $01, $02, $03, $02
		.db $22, $01, $03, $03
		.db $03, $01, $01, $02
		.db $02
WRAM_PiranhaPlantAttributeData:
		.db $21
		.db $01, $02, $01, $01
		.db $02, $FF, $02, $02
		.db $01, $01
WRAM_UnknownAttributeData0:
		.db $02
WRAM_UnknownAttributeData1:
		.db $02
WRAM_UnknownAttributeData2:
		.db $02

;
; Draw buffer for title screen with mushroom
;
WRAM_MushroomSelection:
		.db $22
		.db $4B
		.db $83
WRAM_SelectMario:
		.db $CE
		.db $24
WRAM_SelectLuigi:
		.db $24
		.db $00

;
; Originally patched the immediate byte of the
; cmp instruction, but that was too much of a hack, so
; now we just store it here directly
;
WRAM_PiranhaPlantDist:
		.db $21
;
; Halway stuff
;
WRAM_HalfwayPageNybbles:
		.db $66, $60
		.db $88, $60
		.db $66, $70
		.db $77, $60
		.db $D6, $00
		.db $77, $80
		.db $70, $B0
		.db $00, $00
		.db $00, $00

;
; Thank you mario buffer
;
WRAM_ThankYouMario:
		.db $25, $48
		.db $10
		.db $1D, $11, $0A, $17, $14, $24	; "THANK "
		.db $22, $18, $1E, $24				; "YOU "
WRAM_PatchMarioName1:
		.db $16, $0A, $1B, $12, $18, $2B	; "MARIO!"
		.db $00
;
; Game texts (only really need to copy the one that is patched)
;
WRAM_GameText:
		.db $20, $43
		.db $05
WRAM_PatchMarioName0:
		.db $16, $0A, $1B, $12, $18 ; "MARIO"
		.db $20, $52
		.db $0B
		.db $20, $18, $1B, $15, $0D ; "WORLD"
		.db $24, $24				; "  "
		.db $1D, $12, $16, $0E		; "TIME"
		.db $20, $68
		.db $05
		.db $00
		.db $24
		.db $24
		.db $2E
		.db $29
		.db $23
		.db $C0
		.db $7F
		.db $AA
		.db $23
		.db $C2
		.db 1
		.db $EA
		.db $FF
		;
		; Display lifes left and mario screen
		;
		.db $21
		.db $CD
		.db 7
		.db $24
		.db $24
		.db $29
		.db $24
		.db $24
		.db $24
		.db $24
		.db $21
		.db $4B
		.db 9
		.db $20
		.db $18
		.db $1B
		.db $15
		.db $D
		.db $24
		.db $24
		.db $28
		.db $24
		.db $22
		.db $C
		.db $47
		.db $24
		.db $23
		.db $DC
		.db 1
		.db $BA
		.db $FF
		.db $22
		.db $C
		.db 7
		.db $1D
		.db $12
		.db $16
		.db $E
		.db $24
		.db $1E
		.db $19
		.db $FF
		.db $21
		.db $6B
		.db 9
		.db $10
		.db $A
		.db $16
		.db $E
		.db $24
		.db $18
		.db $1F
		.db $E
		.db $1B
		.db $21
		.db $EB
		.db 8
		.db $C
		.db $18
		.db $17
		.db $1D
		.db $12
		.db $17
		.db $1E
		.db $E
		.db $22
		.db $C
		.db $47
		.db $24
		.db $22
		.db $4B
		.db 5
		.db $1B
		.db $E
		.db $1D
		.db $1B
		.db $22
		.db $FF
