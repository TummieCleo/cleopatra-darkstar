﻿/*
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

#include <string.h>

#include "petentity.h"


CPetEntity::CPetEntity(PETTYPE petType)
{
	objtype = TYPE_PET;
	m_PetType = petType;
	m_EcoSystem = SYSTEM_UNCLASSIFIED;
}

PETTYPE CPetEntity::getPetType(){
  return m_PetType;
}

bool CPetEntity::isBstPet()
{
  return getPetType()==PETTYPE_JUGPET || objtype == TYPE_MOB;
}

CPetEntity::~CPetEntity()
{
}