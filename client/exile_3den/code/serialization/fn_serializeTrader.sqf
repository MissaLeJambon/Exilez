/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

private _traderType = "";

if (_this isKindOf "Exile_Trader_Abstract") then
{
	_traderType = (_this get3DENAttribute "ExileTraderType") select 0;
};

format 
[
	"[%1, %2, %3, %4, %5, %6, %7, %8]",
	str (typeOf _this),
	(_this get3DENAttribute "ExileAnimations") select 0,
	str _traderType,
	str (face _this),
	getUnitLoadOut _this,
	(getPosWorld _this) call Exile3DEN_fnc_serializeVector3d,
	(vectorDir _this) call Exile3DEN_fnc_serializeVector3d,
	(vectorUp _this) call Exile3DEN_fnc_serializeVector3d
]