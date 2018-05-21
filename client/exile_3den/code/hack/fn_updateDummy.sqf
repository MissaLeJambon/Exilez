/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
params ["_dummy", "_model"];

private _simpleObject = _dummy getVariable ["ExileSimpleObject", objNull];

if !(isNull _simpleObject) then 
{
	deleteVehicle _simpleObject;
};

if !(_model isEqualTo "") then 
{
	_simpleObject = createSimpleObject [_model, [0, 0, 0]];
	_simpleObject hideSelection ["zasleh", true];
	_simpleObject attachTo [_dummy, [0, 0, 0]]; // Has no effect in 3DEN

	_dummy setVariable ["ExileSimpleObject", _simpleObject];
};