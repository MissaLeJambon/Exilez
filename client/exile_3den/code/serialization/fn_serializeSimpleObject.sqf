/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

private _model = (getModelInfo _this) select 1;

// Because Arma
if (_x isKindOf "Exile_DummyItem") then 
{
	_model = (_x get3DENAttribute "ExileModel") select 0;
};

format 
[
	"[%1, %2, %3, %4]", 
	str _model, // Double-String it for extra ""
	(getPosWorld _this) call Exile3DEN_fnc_serializeVector3d,
	(vectorDir _this) call Exile3DEN_fnc_serializeVector3d,
	(vectorUp _this) call Exile3DEN_fnc_serializeVector3d
]