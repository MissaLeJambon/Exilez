/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private _model = "";

try 
{
	if (_this isKindOf "WeaponHolder") then
	{
		private _objectConfig = configFile >> "CfgVehicles" >> typeOf _this;
		private _transportWeapons = "true" configClasses (_objectConfig >> "TransportWeapons");

		if ((count _transportWeapons) > 0) then
		{
			private _weaponClass = getText ((_transportWeapons select 0) >> "weapon");
			private _weaponModel = getText (configFile >> "CfgWeapons" >> _weaponClass >> "model");

			throw _weaponModel;
		};

		private _transportItems = "true" configClasses (_objectConfig >> "TransportItems");

		if ((count _transportItems) > 0) then
		{
			private _itemClass = getText ((_transportItems select 0) >> "name");
			private _itemModel = getText (configFile >> "CfgWeapons" >> _itemClass >> "model");

			throw _itemModel;
		};
	};

	throw ((getModelInfo _this) select 1);
}
catch 
{
	_model = _exception;
};

if !(_model isEqualTo "") then
{
	_model = [_model, ".p3d"] call Exile3DEN_fnc_sanitizeFilePath;
};

_model