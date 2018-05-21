/**
 * ExileServer_system_garbageCollector_unscheduled_deleteDeadAnimals
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_lifeTime","_diedAt"];
_lifeTime = 60 * getNumber (configFile >> "CfgSettings" >> "GarbageCollector" >> "Ingame" >> "Animals" >> "lifeTime");
{
	_diedAt = _x getVariable ["DiedAt", -1];
	if ((time - _diedAt) >= _lifeTime) then
	{
		deleteVehicle _x;
	};
}
forEach ExileServerDeadAnimals;
