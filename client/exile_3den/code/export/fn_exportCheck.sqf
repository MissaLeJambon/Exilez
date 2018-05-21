/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

#include "\exile_3den\code\preprocessor.h"

private _lineBreak = toString [10];
private _lines = [];
private _weaponHolders = [];
private _backPacks = [];

{
	if (_x isKindOf "WeaponHolder") then 
	{
		_weaponHolders pushBack (format ["- %1", typeOf _x]);
	};

	if (_x isKindOf "Bag_Base") then 
	{
		_backPacks pushBack (format ["- %1", typeOf _x]);
	};
}
forEach (all3DENEntities select 0);

// Weapon Holders
if ((count _weaponHolders) > 0) then
{
	_lines pushBack "These weapon holders will not be exported.";
	_lines pushBack "Players would be able to pick them up.";
	_lines pushBack (_weaponHolders joinString _lineBreak);
}
else 
{
	_lines pushBack "No problematic weapon holders found.";
};

_lines pushBack "";

// Backpacks
if ((count _backPacks) > 0) then
{
	_lines pushBack "These backpacks will not be exported.";
	_lines pushBack "Players will be able to pick these backpacks up.";
	_lines pushBack (_backPacks joinString (format [",%1", _lineBreak]));
}
else 
{
	_lines pushBack "No problematic backpacks found.";
};

// As found in fn_3DENExportTerrainBuilder.sqf
uiNameSpace setVariable ["Display3DENCopy_data", ["Identified Problems", _lines joinString _lineBreak]];
(findDisplay 313) createdisplay "Display3DENCopy";