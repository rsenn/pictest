; INSPULSE routine: Used only if an user controlled target-startup is needed.
; the idea is to insert it at any convenient place in the user code startup area
; in order to stop it after target-power-up-reset. So, whenever the user is ready
; he can rerun his code executing I(CR) that will send a 1ms '0' pulse to the target
; which has been stopped and waiting for the 0->1 edge to rerun.



;12-16F-16F1   Insert this code at a convenient place in the user code start up area

 IF DBRK==1
	BTFSC	STATUS,NOT_PD		;WDT RESET
	BTFSS	STATUS,NOT_TO		;DETECTION
	GOTO	$+2			;IF NEEDED
	CALL	DG000
 ENDIF

;Wait Routine for 12F pics (Placed at the end of the user code)

 IF DBRK==1
DG000	MOVWF	DB0		;SAVE W, STATUS
	MOVF	STATUS,W	;IF NEEDED
	MOVWF	DB2		;

	BSF	STATUS,RP0
	BCF	TRISIO,P	;SET OUTPUT PIN
	BCF	STATUS,RP0	;SET RBANK0
	BSF	GPIO,P		;SET HIGH OUTPUT LATCH
	CLRWDT
	BTFSC	GPIO,P		;WAIT X->'0'
	GOTO	$-2
	CLRWDT
	BTFSS	GPIO,P		;WAIT X->'1'
	GOTO	$-2

	MOVF	DB2,W		;RESTORE W, STATUS
	MOVWF	STATUS		;IF NEEDED
	SWAPF	DB0		;
	SWAPF	DB0,W		;
	RETURN
 ENDIF

;Wait Routine for 16F pics (Placed at first 2K Prog-Page)

 IF DBRK==1
DG000	MOVWF	DB0		;SAVE W, STATUS
	MOVF	STATUS,W	;IF NEEDED
	MOVWF	DB2		;

	BCF	STATUS,RP1
	BSF	STATUS,RP0
	BCF	T		;SET OUTPUT PIN
	BCF	STATUS,RP0	;SET RBANK0
	BSF	X		;SET HIGH OUTPUT LATCH
	CLRWDT
	BTFSC	X		;WAIT X->'0'
	GOTO	$-2
	CLRWDT
	BTFSS	X		;WAIT X->'1'
	GOTO	$-2

	MOVF	DB2,W		;RESTORE W, STATUS
	MOVWF	STATUS		;IF NEEDED
	SWAPF	DB0		;
	SWAPF	DB0,W		;
	RETURN
 ENDIF

;Wait Routine for 16F1 ENHANCED pics (Placed at first 2K Prog-Page)

 IF DBRK==1
DG000	MOVWF	DB0		;SAVE W, STATUS, BSR
	MOVF	STATUS,W	;IF NEEDED
	MOVWF	DB2		;
	MOVF	BSR,W		;
	MOVLB	0		;
	MOVWF	DB6		;

	MOVLB	1		;SET RBANK1
	BCF	T		;SET OUTPUT PIN
	MOVLB	0		;SET RBANK0
	BSF	X		;SET HIGH OUTPUT LATCH

	CLRWDT
	BTFSC	X		;WAIT X->'0'
	GOTO	$-2
	CLRWDT
	BTFSS	X		;WAIT X->'1'
	GOTO	$-2

	MOVF	DB6,W		;RESTORE W, STATUS, BSR
	MOVWF	BSR		;IF NEEDED
	MOVF	DB2,W		;
	MOVWF	STATUS		;
	SWAPF	DB0		;
	SWAPF	DB0,W		;
	RETURN
 ENDIF

;***************************************************
;18F   Insert this code at a convenient place in the user code start up area

 IF DBRK==1
	BTFSC	RCON,PD		;WDT RESET
	BTFSS	RCON,TO		;DETECTION
	BRA	$+6		;IF NEEDED
	CALL	DG000
 ENDIF

;Wait Routine for 18F pics (Placed at the end of the user code)

 IF DBRK==1
DG000	BSF	X
	BCF	T		;SET OUTPUT PIN
	CLRWDT
	BTFSC	X		;WAIT X->'0'
	BRA	$-4
	CLRWDT
	BTFSS	X		;WAIT X->'1'
	BRA	$-4
	RETURN
 ENDIF

;***************************************************
