/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

private _lines = [];
private _counter = 1;
private _lineBreak = toString [10];

_lines pushBack "class Entities";
_lines pushBack "{";

{
	_shape = (_x get3DENAttribute "markerType") select 0;
	_color = (_x get3DENAttribute "baseColor") select 0;
	_brush = (_x get3DENAttribute "markerBrush") select 0;
	_position = (_x get3DENAttribute "position") select 0;
	_size = (_x get3DENAttribute "size2") select 0;
	_text = (_x get3DENAttribute "text") select 0;
	_zone = (_x get3DENAttribute "ExileMarkerZone") select 0;
	_icon = (_x get3DENAttribute "ExileMarkerIcon") select 0;
	_radius = (_size select 0) max (_size select 1);

	switch (_zone) do
	{
		case 'Safe Zone':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = ""%1"";", _text]);
			_lines pushBack (format ["        markerType = ""ELLIPSE"";"]);
			_lines pushBack (format ["        type = ""ExileTraderZone"";"]);
			_lines pushBack (format ["        colorName = ""ColorBlack"";"]);
			_lines pushBack (format ["        fillName = ""Border"";"]);
			_lines pushBack (format ["        a = %1;", _radius]);
			_lines pushBack (format ["        b = %1;", _radius]);
			_lines pushBack (format ["        drawBorder = 1;"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Spawn Zone':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = ""%1"";", _text]);
			_lines pushBack (format ["        markerType = ""ELLIPSE"";"]);
			_lines pushBack (format ["        type = ""ExileSpawnZone"";"]);
			_lines pushBack (format ["        colorName = ""ColorBlack"";"]);
			_lines pushBack (format ["        alpha = 0;"]);
			_lines pushBack (format ["        fillName = ""Border"";"]);
			_lines pushBack (format ["        a = %1;", _radius]);
			_lines pushBack (format ["        b = %1;", _radius]);
			_lines pushBack (format ["        drawBorder = 1;"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Concrete Mixer Zone':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = ""%1"";", _text]);
			_lines pushBack (format ["        markerType = ""ELLIPSE"";"]);
			_lines pushBack (format ["        type = ""ExileConcreteMixerZone"";"]);
			_lines pushBack (format ["        colorName = ""ColorBlack"";"]);
			_lines pushBack (format ["        fillName = ""Border"";"]);
			_lines pushBack (format ["        alpha = 0;"]);
			_lines pushBack (format ["        a = %1;", _radius]);
			_lines pushBack (format ["        b = %1;", _radius]);
			_lines pushBack (format ["        drawBorder = 1;"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Non-Construction Zone':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = ""%1"";", _text]);
			_lines pushBack (format ["        markerType = ""ELLIPSE"";"]);
			_lines pushBack (format ["        type = ""ExileNonConstructionZone"";"]);
			_lines pushBack (format ["        colorName = ""ColorBlack"";"]);
			_lines pushBack (format ["        fillName = ""Border"";"]);
			_lines pushBack (format ["        alpha = 0;"]);
			_lines pushBack (format ["        a = %1;", _radius]);
			_lines pushBack (format ["        b = %1;", _radius]);
			_lines pushBack (format ["        drawBorder = 1;"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Contaminated Zone':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = ""%1"";", _text]);
			_lines pushBack (format ["        markerType = ""ELLIPSE"";"]);
			_lines pushBack (format ["        type = ""ExileContaminatedZone"";"]);
			_lines pushBack (format ["        colorName = ""ColorBlack"";"]);
			_lines pushBack (format ["        fillName = ""Border"";"]);
			_lines pushBack (format ["        a = %1;", _radius]);
			_lines pushBack (format ["        b = %1;", _radius]);
			_lines pushBack (format ["        drawBorder = 1;"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};
	};

	switch (_icon) do 
	{
		case 'Trader City':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = """";"]);
			_lines pushBack (format ["        type = ""ExileTraderZoneIcon"";"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Concrete Mixer':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = """";"]);
			_lines pushBack (format ["        type = ""ExileConcreteMixerZoneIcon"";"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Spawn Point':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = """";"]);
			_lines pushBack (format ["        type = ""ExileSpawnZoneIcon"";"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Spec Ops Trader':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = """";"]);
			_lines pushBack (format ["        type = ""ExileSpecOpsTraderIcon"";"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Boat Trader':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = """";"]);
			_lines pushBack (format ["        type = ""ExileBoatTraderIcon"";"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Aircraft Trader':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = """";"]);
			_lines pushBack (format ["        type = ""ExileAircraftTraderIcon"";"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Russian Roulette':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = """";"]);
			_lines pushBack (format ["        type = ""ExileRussianRouletteIcon"";"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};

		case 'Contamination':
		{
			_lines pushBack (format ["    class Item%1", _counter]);
			_lines pushBack (format ["    {"]);
			_lines pushBack (format ["        dataType = ""Marker"";"]);
			_lines pushBack (format ["        position[] = {%1, 0, %2};", _position select 0, _position select 1]);
			_lines pushBack (format ["        name = ""ExileMarker%1"";", _counter]);
			_lines pushBack (format ["        text = """";"]);
			_lines pushBack (format ["        type = ""ExileContaminatedZoneIcon"";"]);
			_lines pushBack (format ["        id = %1;", 100 + _counter]);
			_lines pushBack (format ["        atlOffset = 0;"]);
			_lines pushBack (format ["    };"]);

			_counter = _counter + 1;
		};
	};
}
forEach (all3DENEntities select 5);

_lines pushBack (format ["    items = %1;", _counter - 1]);
_lines pushBack "};";

// As found in fn_3DENExportTerrainBuilder.sqf
uiNameSpace setVariable ["Display3DENCopy_data", ["Markers for mission.sqm", _lines joinString _lineBreak]];
(findDisplay 313) createdisplay "Display3DENCopy";