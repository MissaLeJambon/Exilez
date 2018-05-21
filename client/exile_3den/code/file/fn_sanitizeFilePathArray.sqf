/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
params ["_pathArray", "_fileExtension"];

private _sanitized = [];

{
	_sanitized pushBack ([_x, _fileExtension] call Exile3DEN_fnc_sanitizeFilePath);
}
forEach _pathArray;

_sanitized