[] execVM "Custom\EnigmaRevive\init.sqf";
[] execVM "VCOMAI\init.sqf";
[] spawn {
	waitUntil {!isNil "AR_Rappel_From_Heli_Action_Check"};
	AR_Rappel_From_Heli_Action_Check = {
		params ["_player","_vehicle"];
		if!([_vehicle] call AR_Is_Supported_Vehicle) exitWith {false};
		if(((getPos _vehicle) select 2) < 5 ) exitWith {false};
		if(((getPos _vehicle) select 2) > 150 ) exitWith {false};
		if(driver _vehicle == _player && isEngineOn _vehicle) exitWith {false};
		if(speed _vehicle > 100) exitWith {false};
		if!("Exile_Item_Rope" in magazines _player) exitWith {false};
		true;
	};
};