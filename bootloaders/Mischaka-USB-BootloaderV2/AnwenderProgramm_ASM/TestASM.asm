	processor  PIC18F2550
	#include	<P18F2550.INC>
    radix  DEC

W1          EQU   0x01	; Dürfen nicht geändert werden
USBout      EQU   0xCE

c           EQU   0x100 ; Benutzervariablen ab 0x100

    GOTO main

    ORG 0x0E32
USB_Reset

    ORG 0x0E7A
USB_Verbinde

    ORG 0x0F08           
USB_Char_send
                    
    ORG 0x0F2A            
USB_Char_empf
               
    ORG 0x1200           
main
            
    BCF   TXSTA,BRGH,0	;115200 baud @ 48MHz input clock           
    MOVLW 2
    MOVWF SPBRG,0            
    BSF   RCSTA,SPEN,0           
    BCF   TXSTA,4,0     ;Set_Serial_Pins      
    BCF   RCSTA,RX9,0	;Set_8bit_Rx           
    BCF   RCSTA,RX9,0	;Set_8bit_Rx           
    BSF   RCSTA,CREN,0	;Enable_Rx            
    BSF   TXSTA,TXEN,0 	;Enable_Tx
            
    
Endlos    
    CLRF  BSR,0     
    CALL  USB_Char_empf       
    MOVFF W1,c
            
    MOVLW 128				; Wenn sich der Bootloader meldet
    MOVLB 1
    CPFSEQ c,1
    GOTO  Weiter          
    CLRF  BSR,0
 	GOTO  0x1002			; Gehe zu Bootloader   
            
Weiter   CLRF  BSR,0            
    MOVFF c,USBout   
    CALL  USB_Char_send
    GOTO  Endlos

    END