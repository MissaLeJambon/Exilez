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
private _traders = [];

{
	if ((_x call Exile3DEN_fnc_getObjectSerializationType) isEqualTo SERIALIZATION_TRADER) then 
	{
		_traders pushBack (_x call Exile3DEN_fnc_serializeTrader);
	};
}
forEach (all3DENEntities select 0);

_lines pushBack "/**";
_lines pushBack " * Created with Exile Mod 3DEN Plugin";
_lines pushBack " * www.exilemod.com";
_lines pushBack " */";
_lines pushBack "";
_lines pushBack "if (!hasInterface || isServer) exitWith {};";
_lines pushBack "";
_lines pushBack (format ["// %1 NPCs", count _traders]);
_lines pushBack "private _npcs = [";
_lines pushBack (_traders joinString (format [",%1", _lineBreak]));
_lines pushBack "];";
_lines pushBack "";
_lines pushBack "{";
_lines pushBack "    private _logic = ""Logic"" createVehicleLocal [0, 0, 0];";
_lines pushBack "    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];";
_lines pushBack "    private _animations = _x select 1;";
_lines pushBack "    ";
_lines pushBack "    _logic setPosWorld (_x select 5);";
_lines pushBack "    _logic setVectorDirAndUp [_x select 6, _x select 7];";
_lines pushBack "    ";
_lines pushBack "    _trader setVariable [""BIS_enableRandomization"", false];";
_lines pushBack "    _trader setVariable [""BIS_fnc_animalBehaviour_disable"", true];";
_lines pushBack "    _trader setVariable [""ExileAnimations"", _animations];";
_lines pushBack "    _trader setVariable [""ExileTraderType"", _x select 2];";
_lines pushBack "    _trader disableAI ""ANIM"";";
_lines pushBack "    _trader disableAI ""MOVE"";";
_lines pushBack "    _trader disableAI ""FSM"";";
_lines pushBack "    _trader disableAI ""AUTOTARGET"";";
_lines pushBack "    _trader disableAI ""TARGET"";";
_lines pushBack "    _trader disableAI ""CHECKVISIBLE"";";
_lines pushBack "    _trader allowDamage false;";
_lines pushBack "    _trader setFace (_x select 3);";
_lines pushBack "    _trader setUnitLoadOut (_x select 4);";
_lines pushBack "    _trader setPosWorld (_x select 5);";
_lines pushBack "    _trader setVectorDirAndUp [_x select 6, _x select 7];";
_lines pushBack "    _trader reveal _logic;";
_lines pushBack "    _trader attachTo [_logic, [0, 0, 0]];";
_lines pushBack "    _trader switchMove (_animations select 0);";
_lines pushBack "    _trader addEventHandler [""AnimDone"", {_this call ExileClient_object_trader_event_onAnimationDone}];";
_lines pushBack "}";
_lines pushBack "forEach _npcs;";

// As found in fn_3DENExportTerrainBuilder.sqf
uiNameSpace setVariable ["Display3DENCopy_data", ["initPlayerLocal.sqf", _lines joinString _lineBreak]];
(findDisplay 313) createdisplay "Display3DENCopy";