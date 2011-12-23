﻿/*
===========================================================================

  Copyright (c) 2010-2011 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

  This file is part of DarkStar-server source code.

===========================================================================
*/

#include "../../common/showmsg.h"
#include "../../common/socket.h"

#include "party_list.h"


/************************************************************************
*                                                                       *
*  Если количество отправляемых предметов превышает 20, то отправляем   *
*  их несколькими пакетами, в кажный их коротых записываем смещение     *
*                                                                       *
************************************************************************/

CPartyListPacket::CPartyListPacket(uint32 partyid)
{
    m_partyid = partyid;

    memset(m_PData, 0, PARTYLISTPACKET_SIZE);

    WBUFW(m_PData,(0x00)) = PARTYLISTPACKET_SIZE;       // packet size
    WBUFL(m_PData,(0x04)) = 0x46465849;                 // "XIFF"

    WBUFB(m_PData,(0x0A)) = 0x80;
	WBUFB(m_PData,(0x0B)) = 0x82;                       // packet type

    WBUFB(m_PData,(0x0E)) = 0x00;                       // количество персонажей в пакете
}

CPartyListPacket::~CPartyListPacket()
{
    
}

/************************************************************************
*																		*
*  Возвращаем собранный пакет                                           *
*																		*
************************************************************************/

uint8* CPartyListPacket::GetData()
{
    uint8 packet[] = 
    {
        0x4c,  0x02,  0x00,  0x00,  0x49,  0x58,  0x46,  0x46,  0x04,  0x02,  0x80,  0x82,  0x00,  0x00,  0x0d,  0x00,  
        0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x22,  0x02,  0x54,  0xe5,  0x97,  0xc8,  0x71,  0x04,  
        0x0d,  0xe3,  0x20,  0xa8,  0x51,  0x46,  0x01,  0x46,  0x20,  0xc0,  0x40,  0x3d,  0x23,  0x34,  0x09,  0xc0,  
        0x17,  0x3e,  0x2d,  0x34,  0x00,  0x00,  0x20,  0xc0,  0xa8,  0x00,  0x10,  0x22,  0x02,  0x42,  0xeb,  0xab,  
        0x78,  0x71,  0x04,  0x8c,  0x83,  0x20,  0x80,  0x41,  0x46,  0x01,  0x46,  0x20,  0xc8,  0x42,  0x85,  0x4f,  
        0x34,  0x0d,  0xc0,  0x18,  0x24,  0x02,  0xf4,  0x00,  0x00,  0x20,  0xc8,  0xa8,  0x00,  0x10,  0x25,  0x03,  
        0xcc,  0xeb,  0xd3,  0x4e,  0x5d,  0xdd,  0x03,  0x88,  0x20,  0x6e,  0x61,  0x05,  0x42,  0x8a,  0x70,  0x02,  
        0x31,  0x06,  0x02,  0x18,  0x22,  0xed,  0xa0,  0x0e,  0x01,  0x1a,  0xfb,  0x4e,  0xa0,  0x00,  0x01,  0x06,  
        0x05,  0x40,  0x00,  0x80,  0x28,  0x05,  0xd0,  0xd3,  0xcb,  0x0f,  0x4c,  0xba,  0xb2,  0xee,  0xdd,  0xe4,  
        0x38,  0x82,  0x46,  0xc0,  0x90,  0x40,  0x20,  0xa9,  0x00,  0x53,  0x10,  0x60,  0x21,  0xe4,  0x44,  0x5a,  
        0x00,  0xe0,  0x14,  0x4f,  0xfb,  0xda,  0x00,  0x00,  0x10,  0x60,  0x54,  0x00,  0x08,  0x24,  0x03,  0x45,  
        0xd9,  0x87,  0x87,  0x3c,  0xa1,  0xc4,  0x12,  0x36,  0x84,  0x82,  0x61,  0x25,  0x28,  0x01,  0x98,  0x83,  
        0x21,  0x0f,  0x25,  0x38,  0xd0,  0x27,  0x00,  0xa2,  0x85,  0x47,  0xd0,  0x00,  0x00,  0x83,  0x22,  0xa0,  
        0x00,  0x40,  0x25,  0x03,  0xcd,  0xc3,  0xbb,  0x0f,  0x2d,  0x3a,  0x43,  0x88,  0x24,  0x63,  0x21,  0x04,  
        0x02,  0x0a,  0xf0,  0x05,  0x31,  0x06,  0x02,  0x1e,  0x56,  0x49,  0xa0,  0x6e,  0x00,  0xbf,  0x7f,  0x78,  
        0xa0,  0x00,  0x01,  0x06,  0x05,  0x40,  0x00,  0x80,  0x26,  0x04,  0x4b,  0xc3,  0xcb,  0x9f,  0x4d,  0x39,  
        0x77,  0x07,  0x10,  0x48,  0xd2,  0x12,  0x08,  0x04,  0x14,  0x60,  0x0e,  0x62,  0x0c,  0x04,  0x3c,  0xb1,  
        0x3b,  0x40,  0xdc,  0x01,  0x86,  0x04,  0x5d,  0x40,  0x00,  0x02,  0x0c,  0x0a,  0x80,  0x01,  0x00,  0x26,  
        0x04,  0x46,  0xdf,  0xe3,  0x96,  0x5d,  0xda,  0xb4,  0x87,  0x10,  0x40,  0xe6,  0x12,  0x09,  0x84,  0x94,  
        0x60,  0x08,  0x62,  0x0c,  0x04,  0x3c,  0xb3,  0xf3,  0x40,  0xdc,  0x02,  0x59,  0x6d,  0x51,  0x40,  0x00,  
        0x02,  0x0c,  0x0a,  0x80,  0x01,  0x00,  0x24,  0x03,  0x44,  0xc3,  0xb3,  0xce,  0xec,  0x61,  0xc4,  0x12,  
        0x39,  0x84,  0x82,  0x81,  0x45,  0x18,  0x02,  0x18,  0x83,  0x01,  0x0f,  0x3c,  0x74,  0xd0,  0x37,  0x00,  
        0xa2,  0xb8,  0x49,  0x50,  0x00,  0x00,  0x83,  0x02,  0xa0,  0x00,  0x40,  0x25,  0x03,  0xc1,  0xdd,  0x87,  
        0x4f,  0x1e,  0xb9,  0x43,  0x88,  0x24,  0x65,  0x21,  0x05,  0x42,  0x8a,  0x50,  0x04,  0x31,  0x06,  0x02,  
        0x1e,  0x79,  0x2d,  0xa0,  0x6e,  0x01,  0x45,  0x70,  0x90,  0xa0,  0x00,  0x01,  0x06,  0x05,  0x40,  0x00,  
        0x80,  0x24,  0x03,  0x41,  0xe5,  0xb7,  0x4e,  0xbc,  0x21,  0xc4,  0x12,  0x30,  0xcc,  0x82,  0xa1,  0x45,  
        0x28,  0x01,  0x98,  0x83,  0x21,  0x0f,  0x3c,  0xc6,  0xd0,  0x37,  0x00,  0xa2,  0xb8,  0x48,  0xd0,  0x00,  
        0x00,  0x83,  0x22,  0xa0,  0x00,  0x40,  0x26,  0x04,  0xc4,  0xd3,  0x87,  0xa6,  0x1d,  0xd8,  0x7a,  0x6f,  
        0x0e,  0x20,  0xa1,  0x84,  0x04,  0x13,  0x00,  0x2a,  0xc0,  0x04,  0xc4,  0x18,  0x08,  0x79,  0xed,  0x96,  
        0x80,  0x38,  0x05,  0x15,  0xfc,  0x72,  0x80,  0x00,  0x04,  0x18,  0x15,  0x00,  0x1a,  0x26,  0x04,  0xcd,  
        0xc3,  0xcf,  0xa6,  0x5e,  0x5a,  0x30,  0xee,  0x0e,  0x20,  0x91,  0x88,  0x24,  0x15,  0x0a,  0x29,  0xc0,  
        0x04,  0xc4,  0x18,  0x08,  0x79,  0xf1,  0xb6,  0x81,  0xb8,  0x05,  0x16,  0x03,  0xe2,  0x80,  0x00,  0x04,  
        0x18,  0x15,  0x00,  0x02,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  
        0xe4,  0x62,  0x60,  0x09,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  
        0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  
        0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x9a,  0xdc,  0x26,  0x1e,  0x23,  0x7a,  0x48,  0x2a,  
        0x47,  0x2c,  0xe0,  0x08,  0x3f,  0x38,  0x68,  0xaf,  0x5f,  0x28,  0xb7,  0x10
    };

    memcpy(m_PData, packet, 588);

    return m_PData;
}

/************************************************************************
*																		*
*  Возвращаем размер отправляемого пакета                               *
*																		*
************************************************************************/

uint16 CPartyListPacket::GetSize()
{
    return PARTYLISTPACKET_SIZE;
}