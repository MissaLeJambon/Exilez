/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

params ["_trader", "_animations"];

private _logic = objNull;
private _direction = [1, 0, 0];
private _up = [0, 0, 1];

// Only execute the following code when the mission starts. The "execute" statement
// of the 3DEN attribute is executed after the attribute was saved, when the 
// expression of the attribute value is validated and when the mission initializes.
// We only want to attach the guy to an invisible object in the mission, so it
// does not collide with surrounding objects
if !(is3DEN) then 
{
	// TODO: Maybe not use Logic, since it has a brain. Maybe a can could do
	// "Logic" cannot be created with createVehicle
	_logic = "Logic" createVehicleLocal [0, 0, 0];
	_logic setPosASL (getPosASL _trader);

	// Do not disable simulation on the parent object, as it look like
	// the simulation is inherited to attached objects
	//_logic enableSimulation false;

	_direction = vectorDir _trader;
	_up = vectorUp _trader;

	_trader reveal _logic;
	_trader attachTo [_logic, [0, 0, 0]];
	_trader setVectorDirAndUp [_direction, _up];
	_trader allowDamage false;
	_trader setBehaviour "CARELESS"; // Don't give a shit
	_trader disableAI "ANIM"; // disable ability of AI to change animation

	// The rest of these is not required in the 3DEN mission preview
	// but it might be worth testing them while on a live server
	//_trader disableAI "AIMINGERROR"; // prevents AI's aiming from being distracted by its shooting, moving, turning, reloading, hit, injury, fatigue, suppression or concealed/lost target
	//_trader disableAI "AUTOCOMBAT"; // disables autonomous switching to COMBAT when in danger 
	//_trader disableAI "AUTOTARGET"; // prevent the unit from assigning a target independently and watching unknown objects / no automatic target selection
	//_trader disableAI "CHECKVISIBLE"; // disables visibility raycasts
	//_trader disableAI "COVER"; // disables usage of cover positions by the AI
	//_trader disableAI "FSM"; // disable the execution of AI behavior scripts.
	//_trader disableAI "MOVE"; // disable the AI's movement / do not move
	//_trader disableAI "PATH"; //  stops the AI’s movement but not the target alignment 
	//_trader disableAI "SUPPRESSION"; // prevents AI from being suppressed
	//_trader disableAI "TARGET"; // stop the unit to watch the assigned target / group commander may not assign targets
	//_trader disableAI "TEAMSWITCH"; // disable the execution of AI behavior scripts.
};

if (_animations isEqualType []) then 
{
	if ((count _animations) > 0) then 
	{
		_trader switchMove (_animations select 0);

		if !(is3DEN) then 
		{
			_trader setVariable ["ExileAnimations", _animations];
			_trader addEventHandler ["AnimDone", {_this call Exile3DEN_fnc_playNextTraderAnimation;}];
		};
	};
};
