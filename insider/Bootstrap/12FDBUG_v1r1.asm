;
*******************************************************;
12FDBUG : --DEBUG INSIDER-- TARGET ROUTINE VR 1.1;
ATANASIOS MELIMOPOULOS(pic.insider @gmail.com)

    ;
**************PLACE DEBUG ON / OFF MACRO AT USER - PROG -
    START

        DBRK EQU 1;
SET BREAKPOINTS - DEBUG ON / OFF 1 / 0 DBEE EQU 1;
SET EEPROM - READ -
    CMD ON / OFF 1 /
        0 noexpand

            BREAK MACRO bkn;
BREAKPOINT MACRO DEF IF DBRK == 1 MOVWF DB0 MOVLW bkn CALL DBUG BTFSC DB1, 6 GOTO DBGF ENDIF ENDM

    ;
**************PLACE AT BREAKPOINT ADR :

    BREAK nn;
BREAKPOINT NUMBER : 00H - 0FFH

    ;
**************REPLACE DBUG LABEL / VAR NAMES IF USED BY THE USER - PROG;
**************PLACE DBUG - DATA - ADR AT 12F6xx UNUSED BANK - 0 DATA AREA;
**************PLACE THE FOLLOWING CODE AT THE END OF THE USER - PROG

                                                                    IF DBRK ==
    1;
12FDBUG : --DEBUG INSIDER-- TARGET ROUTINE VR 1.1 NOLIST DB0 EQU 5FH;
COMMON ACCESS AREA DB1 EQU 5EH;
COMMON ACCESS AREA DB2 EQU 5DH;
BANK0
DB3 EQU 5CH;
BANK0
DB4 EQU 5BH;
BANK0

    ;
**************USER - PROG INITIALIZED DEBUG PIN / PORT FOR DIGITAL I / O P EQU 2;
DEBUG PIN-- USER SELECTED GPIO I / O - PIN DBN EQU .1;
SPEED MULTIPLIER : 1x, 2x, 4x, 8x,
    16x

    ENDPROG EQU 3FFH;
USER SELECTED END - PROG - MEM - CHECK CPU TYPE - ;
-----BE CAREFUL WITH OSCCAL / CONFIG BYTE AT THE END OF PROG -
    MEM-- --

    ORG ENDPROG -
    .144 IF DBEE IFDEF EECON1 ORG ENDPROG -
    .158 ENDIF ENDIF

        DBUG MOVWF DB1 MOVF STATUS,
    W CLRF STATUS MOVWF DB2 MOVF INTCON, W BCF INTCON, GIE MOVWF DB4 MOVF FSR, W MOVWF DB3 DG001 BSF GPIO, P BSF STATUS,
    RP0 BCF TRISIO,
    P CLRF STATUS MOVLW .251 MOVWF FSR CALL DG003 RLF DB1 GOTO DG006 DG002 RRF DB1 MOVLW .258 - .127 / DBN BTFSS STATUS,
    C DG003 MOVLW .258 - .63 / DBN ADDLW 1 BTFSS STATUS, Z GOTO $ - 2 DG004 RETURN DG005 CALL DG002 DG006 BCF GPIO,
    P CALL DG004 CALL DG002 BSF GPIO, P CLRWDT INCFSZ FSR GOTO DG005 DG007 BSF STATUS, RP0 BSF TRISIO,
    P CLRF STATUS CALL DG016 BTFSS DB1, 7 GOTO DG009 BTFSC DB1, 6 RETURN BTFSS DB1,
    5 GOTO $ + 5 CALL DBGF MOVWF DB0 MOVLW 0FFH GOTO DBUG MOVLW DBN BTFSC DB1, 4 GOTO DG015 DG008 MOVF DB3,
    W MOVWF FSR MOVF DB4, W MOVWF INTCON MOVF DB2, W MOVWF STATUS SWAPF DB0 SWAPF DB0,
    W RETURN DBGF CALL DG016 MOVF DB1, W MOVWF DB0 CALL DG016 CALL DG008 MOVWF PCLATH SWAPF DB1 SWAPF DB1,
    W MOVWF PCL DG009 BTFSC DB1, 4 BTFSS DB1, 5 GOTO DG010 CALL DG016 IF DBEE IFDEF EECON1 BSF STATUS, RP0 MOVF EEADR,
    W MOVWF FSR MOVF DB1, W MOVWF EEADR MOVF EEDATA, W BSF EECON1, 0 XORWF EEDATA XORWF EEDATA,
    W XORWF EEDATA MOVWF DB1 MOVF FSR, W MOVWF EEADR CLRF STATUS ENDIF ENDIF GOTO DG001 DG010 MOVF DB1,
    W MOVWF FSR MOVLW DB0 BTFSC DB1, 4 GOTO DG013 BTFSC DB1, 5 GOTO DG011 CALL DG016 MOVLW 7FH ANDWF DB1,
    W XORLW STATUS BTFSS STATUS, Z GOTO $ + 3 DG011 MOVLW DB2 GOTO DG013 XORLW FSR ^ STATUS BTFSS STATUS,
    Z GOTO $ + 3 MOVLW DB3 GOTO DG013 XORLW INTCON ^ FSR BTFSS STATUS,
    Z GOTO $ + 3 MOVLW DB4 GOTO DG013 XORLW DB0 ^ INTCON BTFSC STATUS, Z GOTO DG012 MOVF DB1, W XORLW DB2 BTFSS STATUS,
    Z XORLW DB3 ^ DB2 BTFSS STATUS, Z XORLW DB4 ^ DB3 DG012 MOVLW DB1 BTFSS STATUS, Z MOVF DB1, W DG013 BTFSS FSR,
    6 GOTO DG014 MOVWF FSR CALL DG016 MOVF DB1, W MOVWF INDF GOTO DG007 DG014 MOVWF FSR MOVF INDF,
    W DG015 MOVWF DB1 GOTO DG001 DG016 CLRF DB1 CLRWDT BTFSC GPIO,
    P GOTO $ - 2 GOTO DG018 DG017 CLRW CLRWDT ADDLW 1 BTFSC GPIO,
    P GOTO $ - 3 ADDLW .256 - .78 / DBN RRF DB1 DG018 CLRW CLRWDT ADDLW 1 BTFSS GPIO,
    P GOTO $ - 3 ADDLW .256 - .78 / DBN RRF DB1 BTFSS STATUS, C GOTO DG017 RETURN LIST ENDIF
