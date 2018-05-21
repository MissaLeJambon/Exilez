/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
#include "\exile_3den\code\preprocessor.h"

if (_this isKindOf "Exile_Locker") exitWith
{
	SERIALIZATION_VEHICLE
};

if (_this isKindOf "Exile_ConcreteMixer") exitWith
{
	SERIALIZATION_VEHICLE
};

if (_this isKindOf "Exile_RussianRouletteChair") exitWith
{
	SERIALIZATION_VEHICLE
};

// NPC traders
if (_this isKindOf "Exile_Trader_Abstract") exitWith
{
	SERIALIZATION_TRADER
};

// NPC guards
if (_this isKindOf "Exile_Guard_Abstract") exitWith
{
	SERIALIZATION_TRADER
};

// Units are not serialized
if (_this isKindOf "Man") exitWith
{
	SERIALIZATION_NONE
};

// Hacky...
if (_this isKindOf "Exile_DummyItem") exitWith
{
	SERIALIZATION_SIMPLE_OBJECT
};

if (_this isKindOf "ReammoBox_F") exitWith
{
	SERIALIZATION_SIMPLE_OBJECT
};

// For placed weapons etc.
if (_this isKindOf "WeaponHolder") exitWith
{
	SERIALIZATION_NONE
};

// No backpacks
if (_this isKindOf "Bag_Base") exitWith
{
	SERIALIZATION_NONE
};

// For buildings with doors etc.
if ((_x get3DENAttribute "enableSimulation") select 0) exitWith 
{
	SERIALIZATION_VEHICLE
};

// If it has selection textures, it needs to be a vehicle
// We cannot do setObjectTextures/Material on simple objects
//
// TODO: If/Once Bohemia has support for that, implement it 
if !((getObjectTextures _x) isEqualTo []) exitWith 
{
	SERIALIZATION_VEHICLE_NO_SIMULATION
};

SERIALIZATION_SIMPLE_OBJECT