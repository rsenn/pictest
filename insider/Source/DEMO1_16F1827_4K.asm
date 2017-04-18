;PROGRAM DEMO_16F1827 4K CODE

 list		p=16F1827, st=OFF
 #include	<p16F1827.inc>
 errorlevel	-302
 errorlevel	-305
 errorlevel	-306	;TO AVOID "Message[306]: Crossing page boundary -- ensure page bits are set."
 radix	dec

 __CONFIG _CONFIG1, _FOSC_INTOSC & _WDTE_OFF & _PWRTE_ON & _MCLRE_OFF & _CP_OFF & _CPD_OFF & _BOREN_OFF & _CLKOUTEN_OFF & _IESO_OFF & _FCMEN_OFF
 __CONFIG _CONFIG2, _WRT_OFF & _PLLEN_OFF & _STVREN_OFF & _BORV_19 & _LVP_OFF

;************************************************************************
DBRK	EQU	1	;SET BREAKPOINTS-DEBUG ON/OFF 1/0
DBEE	EQU	1	;SET EEPROM-READ-CMD   ON/OFF 1/0

 IF DBRK==1
;************** DBUG-DATA-ADR AT 16F1xxx UNUSED BANK-0 DATA AREA
DB0	EQU	7FH	;DEBUG BYTE 0  -- W_TMP ------ COMMON ACCESS AREA
DB1	EQU	7EH	;DEBUG BYTE 1  -- DATA RX/TX - COMMON ACCESS AREA
DB2	EQU	7DH	;DEBUG BYTE 2  -- STATUS_TMP - COMMON ACCESS AREA
DB3	EQU	7CH	;DEBUG BYTE 3  -- PCLATH_TMP - COMMON ACCESS AREA
DB4	EQU	6FH	;DEBUG BYTE 4  -- FSR0L_TMP
DB5	EQU	6EH	;DEBUG BYTE 5  -- FSR0H_TMP
DB6	EQU	6DH	;DEBUG BYTE 6  -- BSR_TMP
DB7	EQU	6CH	;DEBUG BYTE 7  -- INTCON_TMP

;************** USER-PROG INITIALIZED DEBUG PIN/PORT FOR DIGITAL I/O
#DEFINE X	PORTA,1	;DEBUG PORT    -- USER SELECTED CPU PORT-REG-PIN
#DEFINE T	TRISA,1	;TRIS REG NAME -- USER SELECTED CPU TRIS-REG-PIN
DBN	EQU	.1	;SPEED MULTIPLIER: 1x, 2x, 4x, 8x, 16x
 ENDIF

;************** DEBUG MACROS
 noexpand
BREAK	MACRO	bkn	;BREAKPOINT MACRO DEF
 IF DBRK==1
	MOVWF	DB0
	MOVLW	bkn
	CALL	DBUG
 ENDIF
	ENDM


;************************************************************************
;************************************************************************
; DEMO PROGRAM THAT LOADS BYTE 55H TO DATA RAM ADDRESS 20H-2FH,
; BYTE 69H TO DATA RAM ADDRESS A0H-AFH, BYTE 73H TO DATA RAM ADDRESS 120H-12FH
; TO TEST THE INSIDER DISPLAY (D cmd)
; THEN THERE IS LOOP WHERE PORTB BITS:4-5-6-7 CONNECTED TO 4x PUSHBUTTONS ARE
; READ AND IF ANY IS PRESSED (0-INPUT) THE CORRESPONDING LED CONNECTED TO
; PORTB 0-1-2-3 IS TURNED ON.

VAR1	EQU	20H
VAR2	EQU	21H
TMP	EQU	22H

;**************************************************************

	ORG	00H		;PAGE0

START
	BANKSEL OSCCON
	MOVLW	0F0H		;SET 4x 8MHz INTOSC
	MOVWF	OSCCON

	BANKSEL	PORTA
	MOVLW	0FFH		;INIT PORTA-B
	MOVWF	PORTA
	MOVLW	0FFH
	MOVWF	PORTB
	BANKSEL	ANSELA
	CLRF	ANSELA		;SET PORTA-B DIGITAL
	CLRF	ANSELB
	BANKSEL	TRISA
	MOVLW	0FFH
	MOVWF	TRISA
	MOVLW	0F0H
	MOVWF	TRISB		;RB7-4 INPUT, RB3-0 OUTPUT

	BTFSS	OSCSTAT,PLLR	;WAIT UNTIL 4xPLL IS STABLE
	GOTO	$-1

	MOVLB	0		;SET RBANK0

	MOVLW	30H
	MOVWF	FSR0L
	CLRF	FSR0H
	MOVLW	55H		;LOAD 55H -> 30H-3FH
	MOVWF	TMP

	PAGESEL	SAVE	;CHANGE CODE FROM PAGE0 TO PAGE1 TO EXECUTE SAVE ROUTINE

	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE

	PAGESEL	START	;BACK TO PAGE0 IN ORDER TO EXECUTE THE BREAKPOINT

	BREAK	17H		;BREAK HERE TO CHECK THE DATA RAM WITH 
				;INSIDER cmd: D30.3F A0.AF 120.12F(CR)

	PAGESEL	SAVE	;CHANGE CODE FROM PAGE0 TO PAGE1 TO EXECUTE SAVE ROUTINE

	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE

	PAGESEL	START	;BACK TO PAGE0

	MOVLW	0A0H
	MOVWF	FSR0L
	CLRF	FSR0H
	MOVLW	69H		;LOAD 69H -> A0H-AFH
	MOVWF	TMP

	PAGESEL	SAVE	;CHANGE CODE FROM PAGE0 TO PAGE1 TO EXECUTE SAVE ROUTINE

	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE

	PAGESEL	START	;BACK TO PAGE0 IN ORDER TO EXECUTE THE BREAKPOINT

	BREAK	18H		;BREAK HERE TO CHECK THE DATA RAM WITH 
				;INSIDER cmd: D30.3F A0.AF 120.12F(CR)

	PAGESEL	SAVE	;CHANGE CODE FROM PAGE0 TO PAGE1 TO EXECUTE SAVE ROUTINE

	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE

	PAGESEL	START	;BACK TO PAGE0 IN ORDER TO EXECUTE THE BREAKPOINT

	BREAK	19H		;BREAK HERE TO CHECK THE DATA RAM WITH 
				;INSIDER cmd: D30.3F A0.AF 120.12F(CR)

	MOVLW	20H
	MOVWF	FSR0L
	MOVLW	01
	MOVWF	FSR0H
	MOVLW	73H		;LOAD 73H -> 120H-12FH
	MOVWF	TMP


	PAGESEL	SAVE	;CHANGE CODE FROM PAGE0 TO PAGE1 TO EXECUTE SAVE ROUTINE

	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE
	CALL	SAVE

				;PAGESEL ALREADY SET TO PAGE1
	GOTO	LBL1		;TO CHECK THE INSIDER MULTIPAGE FUNCTIONALITY


	ORG	800H		;PAGE1

LBL1	MOVF	PORTB,W		;READ KEY PRESS -> BIT 4-7


	BREAK	20H		;BREAK HERE TO CHECK THE DATA RAM WITH 
				;INSIDER cmd: D(CR)

	MOVWF	VAR1
	IORLW	0FH
	XORLW	0FFH
	SKPNZ
	GOTO	LBL1
	BSF	STATUS,C	;TO CONFIRM THIS STATUS VALUE
	BSF	STATUS,DC
	BSF	STATUS,Z


	BREAK	31H		;BREAK HERE AFTER ANY KEY PRESSED IN W


	MOVLW	0FFH
	MOVWF	VAR2		;SET VAR2-> FFH
	BTFSS	VAR1,4		;SET LEDS
	BCF	VAR2,0
	BTFSS	VAR1,5
	BCF	VAR2,1
	BTFSS	VAR1,6
	BCF	VAR2,2
	BTFSS	VAR1,7
	BCF	VAR2,3
	MOVF	VAR2,W
	MOVWF	PORTB
	GOTO	LBL1

SAVE	MOVF	TMP,W		;CALLF THIS ROUTINE WITH BREAK 40H DISABLE

	BREAK	40H		;DISABLE AND ENABLE THIS BREAK TO SEE THE CALLF CMD BEHAVIOR

	MOVWI	FSR0++
	RETURN



;******************************************************************

 IF DBRK==1	;DBUG16F1: -- DEBUG INSIDER -- TARGET ROUTINE VR 1.2
 NOLIST
	ORG	0x800-6
	MOVWF	DB1		;SWITCH ROUTINE
	MOVF	STATUS,W
	MOVWF	DB2
	MOVF	PCLATH,W
	PAGESEL	DBUG
	GOTO	DBGX

ENDPROG	EQU	0x1000	   	;LAST 2K-PAGE-END-PROG-MEM

	ORG	ENDPROG-.191
 IF DBEE
 IFDEF	EECON1
	ORG	ENDPROG-.210
 ENDIF
 ENDIF

DBGY	MOVF	BSR,W
	MOVLB	0
	MOVWF	DB6
	MOVF	INTCON,W
	BCF	INTCON,GIE
	MOVWF	DB7
	MOVF	FSR0H,W
	MOVWF	DB5
	MOVF	FSR0L,W
	MOVWF	DB4
DG001	BSF	X
	MOVLB	1
	BCF	T
	MOVLB	0
	MOVLW	.251
	MOVWF	FSR0H
	CALL	DG003
	RLF	DB1
	GOTO	DG006
DG002	RRF	DB1
	MOVLW	.258-.127/DBN
	BTFSS	STATUS,C
DG003	MOVLW	.258-.63/DBN
	ADDLW	1
	BTFSS	STATUS,Z
	GOTO	$-2
DG004	RETURN
DG005	CALL	DG002
DG006	BCF	X
	CALL	DG004
	CALL	DG002
	BSF	X
	CLRWDT
	INCFSZ	FSR0H
	GOTO	DG005
DG007	MOVLB	1
	BSF	T
	CALL	DG022
	BTFSS	DB1,7
	GOTO	DG012
	BTFSC	DB1,6
	GOTO	DG010
	BTFSS	DB1,5
	GOTO	DG008
	CALL	DG009
	MOVWF	DB0
	MOVLW	0FFH
	GOTO	DBUG
DG008	BTFSS	DB1,4
	GOTO	DG011
	MOVLW	DBN
	GOTO	DG021
DG009
	BANKSEL	STKPTR
	INCF	STKPTR
DG010	CALL	DG022
	MOVF	DB1,W
	BANKSEL	TOSH
	MOVWF	TOSH
	CALL	DG022
	MOVF	DB1,W
	BANKSEL	TOSL
	MOVWF	TOSL
	MOVLB	0
DG011	MOVF	DB3,W
	MOVWF	PCLATH
	MOVF	DB4,W
	MOVWF	FSR0L
	MOVF	DB5,W
	MOVWF	FSR0H
	MOVF	DB7,W
	MOVWF	INTCON
	MOVF	DB6,W
	MOVWF	BSR
	MOVF	DB2,W
	MOVWF	STATUS
	SWAPF	DB0
	SWAPF	DB0,W
	RETURN
DG012	BTFSC	DB1,4
	BTFSS	DB1,5
	GOTO	DG013
	CALL	DG022
 IF DBEE
 IFDEF	EECON1
	BANKSEL	EECON1
	MOVF	EEADRL,W
	MOVWF	FSR0L
	MOVF	EEDATL,W
	MOVWF	FSR0H
	MOVF	DB1,W
	MOVWF	EEADRL
	MOVF	EECON1,W
	BCF	EECON1,7
	BCF	EECON1,6
	BSF	EECON1,0
	MOVWF	EECON1
	MOVF	EEDATL,W
	MOVWF	DB1
	MOVF	FSR0H,W
	MOVWF	EEDATL
	MOVF	FSR0L,W
	MOVWF	EEADRL
	MOVLB	0
 ENDIF
 ENDIF
	GOTO	DG001
DG013	MOVF	DB1,W
	MOVWF	FSR0L
	ANDLW	0FH
	MOVWF	FSR0H
	BTFSC	DB1,4
	GOTO	DG014
	BTFSC	DB1,5
	GOTO	DG015
	CALL	DG022
	MOVLW	7FH
	ANDWF	DB1,W
	XORLW	LOW WREG
	BTFSS	STATUS,Z
	GOTO	$+3
DG014	MOVLW	LOW DB0
	GOTO	DG016
	XORLW	LOW STATUS^LOW WREG
	BTFSS	STATUS,Z
	GOTO	$+3
DG015	MOVLW	LOW DB2
	GOTO	DG016
	XORLW	LOW PCLATH^LOW STATUS
	BTFSS	STATUS,Z
	GOTO	$+3
	MOVLW	LOW DB3
	GOTO	DG016
	XORLW	LOW FSR0L^LOW PCLATH
	BTFSS	STATUS,Z
	GOTO	$+3
	MOVLW	LOW DB4
	GOTO	DG016
	XORLW	LOW FSR0H^LOW FSR0L
	BTFSS	STATUS,Z
	GOTO	$+3
	MOVLW	LOW DB5
	GOTO	DG016
	XORLW	LOW INTCON^LOW FSR0H
	BTFSS	STATUS,Z
	GOTO	$+3
	MOVLW	LOW DB7
	GOTO	DG016
	XORLW	LOW BSR^LOW INTCON
	BTFSS	STATUS,Z
	GOTO	$+4
	MOVLW	LOW DB6
DG016	CLRF	FSR0H
	GOTO	DG019
	XORLW	LOW DB0^LOW BSR
	BTFSS	STATUS,Z
	XORLW	LOW DB2^LOW DB0
	BTFSS	STATUS,Z
	XORLW	LOW DB3^LOW DB2
	BTFSC	STATUS,Z
	GOTO	DG017
	MOVF	FSR0H
	BTFSC	STATUS,Z
	BTFSC	DB1,7
	GOTO	DG018
	XORLW	LOW DB4^LOW DB3
	BTFSS	STATUS,Z
	XORLW	LOW DB5^LOW DB4
	BTFSS	STATUS,Z
	XORLW	LOW DB6^LOW DB5
	BTFSS	STATUS,Z
	XORLW	LOW DB7^LOW DB6
DG017	MOVLW	LOW DB1
	BTFSS	STATUS,Z
DG018	MOVF	DB1,W
DG019	BTFSS	FSR0L,6
	GOTO	DG020
	MOVWF	FSR0L
	CALL	DG022
	MOVF	DB1,W
	MOVWF	INDF0
	GOTO	DG007
DG020	MOVWF	FSR0L
	MOVF	INDF0,W
DG021	MOVWF	DB1
	GOTO	DG001
DG022	MOVLB	0
	CLRF	DB1
	CLRWDT
	BTFSC	X
	GOTO	$-2
	GOTO	DG024
DG023	CLRW
	CLRWDT
	ADDLW	1
	BTFSC	X
	GOTO	$-3
	ADDLW	.256-.78/DBN
	RRF	DB1
DG024	CLRW
	CLRWDT
	ADDLW	1
	BTFSS	X
	GOTO	$-3
	ADDLW	.256-.78/DBN
	RRF	DB1
	BTFSS	STATUS,C
	GOTO	DG023
	RETURN
DBUG	MOVWF	DB1
	MOVF	STATUS,W
	MOVWF	DB2
	MOVF	PCLATH,W
DBGX	MOVWF	DB3
	GOTO	DBGY

 ENDIF
	END