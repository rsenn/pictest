/**
 * @file usb_config.h
 * @brief Contains core USB stack settings.
 * @author John Izzard
 * @date 13/02/2019
 *
 * USB uC - USB Stack.
 * Copyright (C) 2017-2019  John Izzard
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
#ifndef USB_CONFIG_H
#define USB_CONFIG_H

#define BUS_POWERED 0
#define SELF_POWERED 1
#define POWERED_TYPE BUS_POWERED

#define REMOTE_WAKEUP_OFF 0
#define REMOTE_WAKEUP_ON 1
#define REMOTE_WAKEUP REMOTE_WAKEUP_OFF

#define PINGPONG_DIS 0
#define PINGPONG_0_OUT 1
#define PINGPONG_ALL_EP 2
#define PINGPONG_1_15 3
#define PINGPONG_MODE PINGPONG_0_OUT

#define NUM_CONFIGURATIONS 1
#define NUM_INTERFACES 2
#define NUM_ALT_INTERFACES 0
#define NUM_ENDPOINTS 3
#define EP0_SIZE 8
#define EP1_SIZE 10
#define EP2_SIZE 64

#define LOW_SPEED 0
#define FULL_SPEED (1 << 2)
#define USB_SPEED FULL_SPEED

#define SPEED_PULLUP_OFF 0
#define SPEED_PULLUP_ON (1 << 4)
#define SPEED_PULLUP SPEED_PULLUP_ON

/*
 * INTERRUPT MASK OPTIONS:
 * _SOFIE   - Start Of Frame Interrupt (Optional, must define USE_SOF if used)
 * _STALLIE - Stall Interrupt (*not used)
 * _IDLEIE  - Idle Interrupt (Mandatory)
 * _TRNIE   - Transaction Complete Interrupt (Mandatory)
 * _ACTVIE  - Bus Activity Interrupt (*not used)
 * _UERIE   - USB Error Interrupt (Optional, must define USE_ERROR if used)
 * _URSTIE  - USB Reset Interrupt (Mandatory)
 */

#define INTERRUPTS_MASK (_TRNIE | _URSTIE | _IDLEIE)
#define ERROR_INTERRUPT_MASK 0

//#define USE_RESET
//#define USE_ERROR
//#define USE_IDLE
//#define USE_ACTIVITY
//#define USE_SOF
#define USE_OUT_CONTROL_FINISHED

#include <stdbool.h>

#endif /* USB_CONFIG_H */