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
private _vehicles = [];
private _simpleObjects = [];

// Go through all objects, identify the serialiation type
// and serialize them
{
	switch (_x call Exile3DEN_fnc_getObjectSerializationType) do 
	{
		case SERIALIZATION_VEHICLE:
		{
			_vehicles pushBack ([_x, true] call Exile3DEN_fnc_serializeVehicle);
		};

		case SERIALIZATION_VEHICLE_NO_SIMULATION:
		{
			_vehicles pushBack ([_x, false] call Exile3DEN_fnc_serializeVehicle);
		};

		case SERIALIZATION_SIMPLE_OBJECT:
		{
			_simpleObjects pushBack (_x call Exile3DEN_fnc_serializeSimpleObject);
		};
	};
}
forEach (all3DENEntities select 0);

// Export vehicles
_lines pushBack "/**";
_lines pushBack " * Created with Exile Mod 3DEN Plugin";
_lines pushBack " * www.exilemod.com";
_lines pushBack " */";
_lines pushBack "";
_lines pushBack "ExileRouletteChairs = [];";
_lines pushBack "ExileRouletteChairPositions = [];";
_lines pushBack "";
_lines pushBack (format ["// %1 Vehicles", count _vehicles]);
_lines pushBack "private _vehicles = [";
_lines pushBack (_vehicles joinString (format [",%1", _lineBreak]));
_lines pushBack "];";
_lines pushBack "";
_lines pushBack "{";
_lines pushBack "    private _vehicle = (_x select 0) createVehicle (_x select 1);";
_lines pushBack "    _vehicle allowDamage false;";
_lines pushBack "    _vehicle setPosWorld (_x select 1);";
_lines pushBack "    _vehicle setVectorDirAndUp [_x select 2, _x select 3];";
_lines pushBack "    _vehicle enableSimulationGlobal (_x select 4);";
_lines pushBack "    _vehicle setVariable [""ExileIsLocked"", -1, true];";
_lines pushBack "    ";
_lines pushBack "    if (_vehicle isKindOf ""Exile_RussianRouletteChair"") then";
_lines pushBack "    {";
_lines pushBack "        ExileRouletteChairs pushBack _vehicle;";
_lines pushBack "        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];";
_lines pushBack "    };";
_lines pushBack "}";
_lines pushBack "forEach _vehicles;";
_lines pushBack "";

// Export simple objects
_lines pushBack (format ["// %1 Simple Objects", count _simpleObjects]);
_lines pushBack "private _invisibleSelections = [""zasleh"", ""zasleh2"", ""box_nato_grenades_sign_f"", ""box_nato_ammoord_sign_f"", ""box_nato_support_sign_f""];";
_lines pushBack "private _simpleObjects = [";
_lines pushBack (_simpleObjects joinString (format [",%1", _lineBreak]));
_lines pushBack "];";
_lines pushBack "";
_lines pushBack "{";
_lines pushBack "    private _simpleObject = createSimpleObject [_x select 0, _x select 1];";
_lines pushBack "    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];";
_lines pushBack "    ";
_lines pushBack "    {";
_lines pushBack "        if ((toLower _x) in _invisibleSelections) then ";
_lines pushBack "        {";
_lines pushBack "            _simpleObject hideSelection [_x, true];";
_lines pushBack "        };";
_lines pushBack "    }";
_lines pushBack "    forEach (selectionNames _simpleObject);";
_lines pushBack "}";
_lines pushBack "forEach _simpleObjects;";

// As found in fn_3DENExportTerrainBuilder.sqf
uiNameSpace setVariable ["Display3DENCopy_data", ["initServer.sqf", _lines joinString _lineBreak]];
(findDisplay 313) createdisplay "Display3DENCopy";