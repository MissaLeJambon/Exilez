/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private _selection = get3DENSelected "object"; 

if !(_selection isEqualTo []) then 
{
	private _object = _selection select 0;

	if (_object isKindOf "Exile_DummyItem") then 
	{
		[_object, (_object get3DENAttribute "ExileModel") select 0] call Exile3DEN_fnc_updateDummy;
	};
};
