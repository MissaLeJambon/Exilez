/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

params ["_path", "_fileExtension"];

// It should be lowercase
_path = toLower _path;

if !(_path isEqualTo "") then 
{
	// It must not start with "\"
	if ((_path select [0, 1]) isEqualTo "\") then 
	{
		_path = _path select [1];
	};

	// It must end with ".p3d" or ".paa" or ".rvmat" etc.
	if !((_path select [(count _path) - (count _fileExtension), (count _fileExtension)]) isEqualTo _fileExtension) then 
	{
		_path = _path + _fileExtension;
	};
};

_path