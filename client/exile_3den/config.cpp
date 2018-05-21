/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

class CfgPatches
{
	class exile_3den
	{
		requiredVersion = 0.1;
		requiredAddons[] = {"3den", "exile_client"};
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
	};
};

///////////////////////////////////////////////////////////////////////////////

class CfgFunctions
{
	class Exile3DEN
	{
		class Export
		{
			file = "exile_3den\code\export";

			class saveInitServer {};
			class saveInitPlayerLocal {};
			class saveWeather {};
			class saveMarkers {};
			class exportCheck {};
		};

		class Serialization
		{
			file = "exile_3den\code\serialization";

			class serializeVector2d {};
			class serializeVector3d {};
			class serializeSimpleObject {};
			class serializeVehicle {};
			class serializeTrader {};
			class getObjectSerializationType {};
		};

		class File
		{
			file = "exile_3den\code\file";

			// Because Arma
			class getModelPath {};
			class sanitizeFilePath {};
			class sanitizeFilePathArray {};
		};

		class Animation
		{
			file = "exile_3den\code\animation";

			class applyTraderAnimations {};
			class playNextTraderAnimation {};
		};

		class Hack
		{
			file = "exile_3den\code\hack";

			class convertIntoDummy {};
			class updateDummy {};
			class synchronizeDummy {};
		};

		class Event 
		{
			file = "exile_3den\code\event";

			class onDeleteUnits {};
			class onPaste {};
			class onCut {};
		};
	};
};

///////////////////////////////////////////////////////////////////////////////

class ctrlCombo;

class Cfg3DEN
{
	class EventHandlers
	{
		class Exile
		{
			/*
				onCut
				_this: []
				get3DENSelected: []

				onPaste
				_this: []
				get3DENSelected: [97687200# 1697443: chairwood_f.p3d]

				onDeleteUnits
				_this: []
				get3DENSelected: []
			*/
			OnDeleteUnits = "_this call Exile3DEN_fnc_onDeleteUnits";
			OnPaste = "_this call Exile3DEN_fnc_onPaste";
			OnCut = "_this call Exile3DEN_fnc_onCut";
		};
	};

	class Attributes
	{
		class Default;

		class Title: Default
		{
			class Controls
			{
				class Title;
			};
		};

		class Combo: Title
		{
			class Controls: Controls
			{
				class Title: Title {};
				class Value: ctrlCombo {};
			};
		};

		class ExileMarkerIcon: Combo
		{
			class Controls: Controls
			{
				class Title: Title {};
				class Value: Value
				{
					onload = "\
					_control = _this select 0;\
					{\
						_index = _control lbAdd _x;\
						_control lbsetdata [_index, _x];\
					}\
					forEach ['', 'Trader City', 'Concrete Mixer', 'Spawn Point', 'Spec Ops Trader', 'Boat Trader', 'Aircraft Trader', 'Russian Roulette', 'Contamination'];";
				};
			};
		};

		class ExileMarkerZone: Combo
		{
			class Controls: Controls
			{
				class Title: Title {};
				class Value: Value
				{
					onload = "\
					_control = _this select 0;\
					{\
						_index = _control lbAdd _x;\
						_control lbsetdata [_index, _x];\
					}\
					forEach ['', 'Safe Zone', 'Spawn Zone', 'Concrete Mixer Zone', 'Non-Construction Zone', 'Contaminated Zone'];";
				};
			};
		};
	};

	class Object 
	{
		class AttributeCategories 
		{
			class StateSpecial 
			{
				class Attributes
				{
					class EnableSimulation
					{
						defaultValue = "false";
					};
					
					class AllowDamage
					{
						defaultValue = "false";
					};
				};
			};
		};
	};

	class Marker
	{
		class AttributeCategories
		{
			class Exile
			{
				displayName = "Exile";
				collapsed = 0;
				
				class Attributes
				{
					class ExileMarkerZone
					{
						displayName = "Zone";
						tooltip = ""; 
						property = "ExileMarkerZone"; 
						control = "ExileMarkerZone";
						defaultValue = "";
					};

					class ExileMarkerIcon
					{
						displayName = "Icon";
						tooltip = ""; 
						property = "ExileMarkerIcon"; 
						control = "ExileMarkerIcon";
						defaultValue = "";
					};
				};
			};
		};
	};
};

///////////////////////////////////////////////////////////////////////////////

class ctrlMenuStrip;

class display3DEN
{
	class Controls
	{
		class MenuStrip: ctrlMenuStrip
		{
			class Items
			{
				items[] += {"Exile"};

				class Exile
				{
					text = "Exile";
					items[] = {"ExileExportCheck", "ExileSeparator", "ExileConvertIntoDummy", "ExileSynchronizeDummies", "ExileSeparator", "ExileSaveInitServer", "ExileSaveInitPlayerLocal", "ExileSaveMarkers", "ExileSaveWeather"};
				};

				class ExileSynchronizeDummies
				{
					text = "Synchronize Simple Object";
					action = "call Exile3DEN_fnc_synchronizeDummy";
					shortcuts[] = {0x52}; // Numpad 0
				};

				class ExileConvertIntoDummy
				{
					text = "Convert into Simple Object";
					action = "call Exile3DEN_fnc_convertIntoDummy";
				};

				class ExileExportCheck
				{
					text = "Run Sanity Check";
					action = "call Exile3DEN_fnc_exportCheck";
					//picture = "\a3\3DEN\Data\Displays\Display3DEN\ToolBar\save_ca.paa";
				};

				class ExileSeparator 
				{
					value = 0;
				};

				class ExileSaveInitServer
				{
					text = "Save initServer.sqf";
					action = "call Exile3DEN_fnc_saveInitServer";
					picture = "\a3\3DEN\Data\Displays\Display3DEN\ToolBar\save_ca.paa";
				};

				class ExileSaveInitPlayerLocal
				{
					text = "Save initPlayerLocal.sqf";
					action = "call Exile3DEN_fnc_saveInitPlayerLocal";
					picture = "\a3\3DEN\Data\Displays\Display3DEN\ToolBar\save_ca.paa";
				};

				class ExileSaveWeather
				{
					text = "Save Weather Keyframe";
					action = "call Exile3DEN_fnc_saveWeather";
					picture = "\a3\3DEN\Data\Displays\Display3DEN\ToolBar\save_ca.paa";
				};

				class ExileSaveMarkers
				{
					text = "Save Markers and Zones";
					action = "call Exile3DEN_fnc_saveMarkers";
					picture = "\a3\3DEN\Data\Displays\Display3DEN\ToolBar\save_ca.paa";
				};
			};
		};
	};
};

///////////////////////////////////////////////////////////////////////////////

class CfgVehicles
{
	class B_Soldier_base_F;
	class Exile_Cosmetic_BBQSandwich;

	class Exile_DummyItem: Exile_Cosmetic_BBQSandwich
	{
		displayName = "Because Arma";

		class Attributes 
		{
			class ExileModel
			{
				displayName 	= "Model";
				tooltip 		= "Because Arma crashes and is missing useful script functions.";
				property 		= "ExileModel";
				control 		= "Edit";
				defaultValue 	= "A3\Weapons_F\LongRangeRifles\GM6\GM6_F.p3d";
				expression 		= "[_this, _value] call Exile3DEN_fnc_updateDummy";
			};
		};
	};

	class Exile_Trader_Abstract: B_Soldier_base_F
	{
		// 3DEN Attributes
		// https://community.bistudio.com/wiki/Eden_Editor:_Configuring_Attributes
		// https://community.bistudio.com/wiki/Eden_Editor:_Configuring_Attributes:_Controls
		class Attributes 
		{
			class ExileAnimations
			{
				displayName 	= "Animations";
				tooltip 		= "Comma-separated list of animations.";
				property 		= "ExileAnimations";
				control 		= "EditArray";
				defaultValue 	= "[]";

				// Expression called when applying the attribute in Eden and at the scenario start
				// The expression is called twice - first for data validation, and second for actual saving
				// Entity is passed as _this, value is passed as _value
				// %s is replaced by attribute config name. It can be used only once in the expression
				// In MP scenario, the expression is called only on server.
				expression 		= "[_this, _value] call Exile3DEN_fnc_applyTraderAnimations";
			};

			class ExileTraderType
			{
				displayName 	= "Trader Type";
				tooltip 		= "The trader type referencing CfgTraders.";
				property 		= "ExileTraderType";
				control 		= "Edit";
				defaultValue 	= "typeOf _this";
				expression 		= "";
			};
		};
	};

	class Exile_Guard_Abstract: B_Soldier_base_F
	{
		// 3DEN Attributes
		// https://community.bistudio.com/wiki/Eden_Editor:_Configuring_Attributes
		// https://community.bistudio.com/wiki/Eden_Editor:_Configuring_Attributes:_Controls
		class Attributes 
		{
			class ExileAnimations
			{
				displayName 	= "Animations";
				tooltip 		= "Comma-separated list of animations.";
				property 		= "ExileAnimations";
				control 		= "EditArray";
				defaultValue 	= "[]";

				// Expression called when applying the attribute in Eden and at the scenario start
				// The expression is called twice - first for data validation, and second for actual saving
				// Entity is passed as _this, value is passed as _value
				// %s is replaced by attribute config name. It can be used only once in the expression
				// In MP scenario, the expression is called only on server.
				expression 		= "[_this, _value] call Exile3DEN_fnc_applyTraderAnimations";
			};
		};
	};
};