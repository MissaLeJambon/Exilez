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
	private _model = _object call Exile3DEN_fnc_getModelPath;

	if !(_model isEqualTo "") then
	{
		private _entity = create3DENEntity ["object", "Exile_DummyItem", getPos _object, true];
		_entity setPosWorld (getPosWorld _object);
		_entity setVectorDirAndUp [vectorDir _object, vectorUp _object];
		_entity set3DENAttribute ["ExileModel", _model];

		delete3DENEntities [_object];
	};
};