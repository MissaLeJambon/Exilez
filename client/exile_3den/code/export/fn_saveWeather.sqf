/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

private _lineBreak = toString [10];
private _lines = [];

_lines pushBack "// Add this to: exile_server_config.pbo >> config.cpp >> CfgSettings >> Weather.";
_lines pushBack "// Change the name of YourNameForThisWeatherHere to a unique name.";
_lines pushBack "// Do not forget to add it to the list of active keyframes in this config.";
_lines pushBack "class YourNameForThisWeatherHere";
_lines pushBack "{";
_lines pushBack (format ["    fogValue = %1;", fogParams select 0]);
_lines pushBack (format ["    fogDecay = %1;", fogParams select 1]);
_lines pushBack (format ["    fogBase = %1;", fogParams select 2]);
_lines pushBack (format ["    overcast = %1;", overcast]);
_lines pushBack (format ["    waves = %1;", waves]);
_lines pushBack (format ["    wind = %1;", windStr]);
_lines pushBack (format ["    gusts = %1;", gusts]);
_lines pushBack (format ["    rain = %1;", rain]);
_lines pushBack (format ["    lightnings = %1;", lightnings]);
_lines pushBack (format ["    rainbows = %1;", rainbow]);
_lines pushBack "};";

// As found in fn_3DENExportTerrainBuilder.sqf
uiNameSpace setVariable ["Display3DENCopy_data", ["Weather Keyframe", _lines joinString _lineBreak]];
(findDisplay 313) createdisplay "Display3DENCopy";