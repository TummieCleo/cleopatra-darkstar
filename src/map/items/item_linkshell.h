/*
===========================================================================

  Copyright (c) 2010-2012 Darkstar Dev Teams

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

#ifndef _CITEMLINKSHELL_H
#define _CITEMLINKSHELL_H

#include "../../common/cbasetypes.h"

#include "item.h"

struct lscolor_t
{
	uint8 R:4;
	uint8 G:4;
	uint8 B:4;
	uint8 A:4;
};

class CItemLinkshell : public CItem
{
public:

	CItemLinkshell(uint16);
	virtual ~CItemLinkshell();

	lscolor_t	GetLSColor();
	void		SetLSColor(uint32 color);	
	
private:

	lscolor_t	m_LSColor;
};

#endif