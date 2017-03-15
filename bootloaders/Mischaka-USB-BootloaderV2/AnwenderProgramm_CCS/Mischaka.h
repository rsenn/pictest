#reserve 0x5:0xF9           // Dieses RAM-Bereich wird vom Bootloader und USB genuzt
#reserve 0x400:0x5C7        // Dieses RAM-Bereich Ist USB-Stack

#bit Terminal=0x7A.1        // Ist ein empfangsprogramm am PC gestartet? Wenn ja wird 1
#bit USB_RCIF=0x7C.0        // Wird 1 wen ein zeichen über USB empfangen wurde
#locate USB_Verbunden=0x1A  // USB Status wird1 wenn USB ist verbunden

#ORG 0x0E32, 0x0E34         // USB-Resetten
char USB_Reset()
{
}
#ORG 0x0E7A, 0x0E7C        // USB-Verbindung aufbauen
char USB_Verbinde()
{
}

#ORG 0x0F08, 0x0F0A         // An dieser stelle befindet sich Unterprogramm zum senden eines Zeichens über USB
void USB_Char_send(char k)  // So heist diese Unterprogramm in unserem Programm
{
    #locate k=0x0CE
}

#ORG 0x0F2A, 0x0F2C         //Dummy Empfangen eines Zeichens
char USB_Char_empf()
{
}

#build(reset=0x1140,interrupt=0x1148)        // Resetvektor verbiegen 
#ORG 0x1200, 0x4000 default // Benutzerprogramm liegt im speicher