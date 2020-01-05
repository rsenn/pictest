/*********************************************************************
 *
 *                  Generic Type Definitions
 *
 *********************************************************************
 * FileName:        GenericTypeDefs.h
 * Dependencies:	None
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F
 * Complier:        Microchip C18
 *
 * Adapted from Microchip Template	
 *
 * Author					Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Nilesh Rajbharti			07/12/04	Rel 0.9
 * Nilesh Rajbharti			11/24/04	Rel 0.9.1
 * Rawin Rojvanit			09/17/05	Rel 0.9.2
 * D Flowers & H Schlunder	08/10/06	Much better now (1.0)
 * D Flowers & H Schlunder	09/11/06	Add base signed types (1.1)
 * Ray Gordon				07/06/07	Added pointer definitions & MSB/LSB selection
 ********************************************************************/

#ifndef __GENERIC_TYPE_DEFS_H_
#define __GENERIC_TYPE_DEFS_H_

typedef enum _BOOL { FALSE = 0, TRUE } BOOL;	

typedef unsigned char		byte;				// 8-bit unsigned
typedef unsigned short int	word;				// 16-bit unsigned
typedef unsigned long		dword;				// 32-bit unsigned


typedef union _BYTE
{
    byte _byte;
    struct
    {
        unsigned char b0:1;
        unsigned char b1:1;
        unsigned char b2:1;
        unsigned char b3:1;
        unsigned char b4:1;
        unsigned char b5:1;
        unsigned char b6:1;
        unsigned char b7:1;
    }; 
} BYTE;

typedef union _WORD
{
    word _word;
      struct
    {
        byte byte0;
        byte byte1;
    };
    struct
    {
        BYTE Byte0;
        BYTE Byte1;
    };
    struct
    {
        BYTE LowB;
        BYTE HighB;
    };
    struct
    {
        byte v[2];
    };
    struct
    {
        unsigned char b0:1;
        unsigned char b1:1;
        unsigned char b2:1;
        unsigned char b3:1;
        unsigned char b4:1;
        unsigned char b5:1;
        unsigned char b6:1;
        unsigned char b7:1;
        unsigned char b8:1;
        unsigned char b9:1;
        unsigned char b10:1;
        unsigned char b11:1;
        unsigned char b12:1;
        unsigned char b13:1;
        unsigned char b14:1;
        unsigned char b15:1;
    };
} WORD;

#define LSB(a)          ((a).v[0])
#define MSB(a)   	    ((a).v[1])

typedef union _DWORD
{
    dword _dword;
   struct
    {
        byte byte0;
        byte byte1;
        byte byte2;
        byte byte3;
    };
    struct
    {
        word word0;
        word word1;
    };
    struct
    {
        BYTE Byte0;
        BYTE Byte1;
        BYTE Byte2;
        BYTE Byte3;
    };
    struct
    {
        WORD Word0;
        WORD Word1;
    };
    struct
    {
        byte v[4];
    };
    struct
    {
        unsigned char b0:1;
        unsigned char b1:1;
        unsigned char b2:1;
        unsigned char b3:1;
        unsigned char b4:1;
        unsigned char b5:1;
        unsigned char b6:1;
        unsigned char b7:1;
        unsigned char b8:1;
        unsigned char b9:1;
        unsigned char b10:1;
        unsigned char b11:1;
        unsigned char b12:1;
        unsigned char b13:1;
        unsigned char b14:1;
        unsigned char b15:1;
        unsigned char b16:1;
        unsigned char b17:1;
        unsigned char b18:1;
        unsigned char b19:1;
        unsigned char b20:1;
        unsigned char b21:1;
        unsigned char b22:1;
        unsigned char b23:1;
        unsigned char b24:1;
        unsigned char b25:1;
        unsigned char b26:1;
        unsigned char b27:1;
        unsigned char b28:1;
        unsigned char b29:1;
        unsigned char b30:1;
        unsigned char b31:1;
    };
} DWORD;

#define LOWER_LSB(a)    ((a).v[0])
#define LOWER_MSB(a)    ((a).v[1])
#define UPPER_LSB(a)    ((a).v[2])
#define UPPER_MSB(a)    ((a).v[3])


/***** RPG Additions *****/

typedef void(*pFunc)(void);

typedef union _POINTER
{
    struct
    {
        byte bLow;
        byte bHigh;
    };
    word _word;                         // bLow & bHigh
    
    byte* bRam;                         // Ram byte pointer: 2 bytes pointer pointing
                                        // to 1 byte of data
    word* wRam;                         // Ram word poitner: 2 bytes poitner pointing
                                        // to 2 bytes of data

    rom byte* bRom;                     // Size depends on compiler setting
    rom word* wRom;
} POINTER;


#define NULL 0


#endif //__GENERIC_TYPE_DEFS_H_
