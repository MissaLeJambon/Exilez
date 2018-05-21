/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
params ["_vehicle", "_enableSimulation"];

format 
[
	"[%1, %2, %3, %4, %5]", 
	str (typeOf _vehicle), // Double-String it for extra ""
	(getPos _vehicle) call Exile3DEN_fnc_serializeVector3d,
	(vectorDir _vehicle) call Exile3DEN_fnc_serializeVector3d,
	(vectorUp _vehicle) call Exile3DEN_fnc_serializeVector3d,
	_enableSimulation
]