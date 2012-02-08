#ifndef INTERRUPT_H
#define INTERRUPT_H 1

#ifdef HI_TECH_C
# define INTERRUPT_HI_PRIO interrupt
# define INTERRUPT_LO_PRIO interrupt low_priority
#else // defined(HI_TECH_C)
# define INTERRUPT_HI_PRIO
# define INTERRUPT_LO_PRIO
#endif // !defined(HI_TECH_C)

#ifdef SDCC

#define INTERRUPT_DISABLE() do { GIE = 0; } while(0);
#define INTERRUPT_ENABLE() do { GIE = 1; } while(0);

#elif 0 //defined(HI_TECH_C)
#define INTERRUPT_DISABLE() #asm \
                            bcf GIE \
                            #endasm

#define INTERRUPT_ENABLE() #asm \
                           bsf GIE \
                           #endasm

#elif defined(__IAR_SYSTEMS_ICC__)

# define INTERRUPT_DISABLE() { __disable_interrupt();  }
# define INTERRUPT_ENABLE()  { __enable_interrupt();  }               

#else //if defined(MCC18) || defined(HI_TECH_C) || defined(SDCC)

# define INTERRUPT_DISABLE() (INTCON &= 0x7f);
# define INTERRUPT_ENABLE() (INTCON |= 0x80);

#endif


#endif // !defined(INTERRUPT_H)
