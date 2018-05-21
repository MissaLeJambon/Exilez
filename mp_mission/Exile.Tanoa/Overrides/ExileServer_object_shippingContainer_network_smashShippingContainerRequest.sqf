/**
 * ExileServer_object_shippingContainer_network_smashShippingContainerRequest
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 * Edited by: williamv1999
 */
 
private["_sessionId","_parameters","_shippingContainer","_player","_shippingContainerVolume","_damagePerHit","_newDamage","_shippingContainerPosition","_numberOfItems","_weaponHolder"];
_sessionId = _this select 0;
_parameters = _this select 1;
_shippingContainer = _parameters select 0;

///////////////////////////////////
//////Farm Metal Into Vehicles/////
///////////////////////////////////
_metalText = "Junk Metal dropped in your Area,No Vehicle found in 15 meters!";
_metalVehicleFullText = "Junk Metal dropped in your Area! Vehicle is Full!";
///////////////////////////////////

try 
{
	if (isNull _shippingContainer) then 
	{
		throw format ["Cannot smash unknown shipping container!"];
	};
	if !(alive _shippingContainer) then 
	{
		throw "Cannot smash destroyed shipping container!";
	};
	if !([_shippingContainer, "ShippingContainerSource"] call ExileClient_util_model_isInteraction) then 
	{
		throw "Can only smash shipping containers!";
	};
	_player = _sessionId call ExileServer_system_session_getPlayerObject;
	if (isNull _player) then 
	{
		throw "Unknown players cannot smash shipping containers!";
	};
	if !(alive _player) then 
	{
		throw "The dead cannot smash shipping containers!";
	};
	if ((_player distance _shippingContainer) > 30) then 
	{
		throw "No long distance shipping container smashing! Nope!";
	};
	_shippingContainerVolume = _shippingContainer call ExileClient_util_model_getBoundingBoxVolume;
	if (_shippingContainerVolume < 1) then 
	{
		_shippingContainerVolume = 1;
	};
	//_damagePerHit = (1 / (_shippingContainerVolume * 0.5)) min 0.2; 
	//_newDamage = ((damage _shippingContainer) + _damagePerHit) min 1;
	
	_newDamage = (damage _shippingContainer); //CDAH
	if (_newDamage < 0.85) then  
	{
		_shippingContainer setDamage [((damage _shippingContainer) + 0.1),false];
	};
///////////////////////////////////
//////Farm Metal Into Vehicles/////
///////////////////////////////////
            _nearestTruck = (getPosATL _shippingContainer) nearEntities[[
			
						"Exile_Car_BRDM2_HQ",

						"Exile_Car_BTR40_MG_Green","Exile_Car_BTR40_MG_Camo","Exile_Car_BTR40_Green","Exile_Car_BTR40_Camo",

						"Exile_Car_Golf_Red","Exile_Car_Golf_Black",

						"Exile_Car_Hatchback_Beige","Exile_Car_Hatchback_Green","Exile_Car_Hatchback_Blue","Exile_Car_Hatchback_BlueCustom",
						"Exile_Car_Hatchback_BeigeCustom","Exile_Car_Hatchback_Yellow","Exile_Car_Hatchback_Grey","Exile_Car_Hatchback_Black",
						"Exile_Car_Hatchback_Dark","Exile_Car_Hatchback_Rusty1","Exile_Car_Hatchback_Rusty2","Exile_Car_Hatchback_Rusty3",

						"Exile_Car_Hatchback_Sport_Red","Exile_Car_Hatchback_Sport_Blue","Exile_Car_Hatchback_Sport_Orange","Exile_Car_Hatchback_Sport_White",
						"Exile_Car_Hatchback_Sport_Beige","Exile_Car_Hatchback_Sport_Green","Exile_Car_Hatchback_Sport_Admin",

						"Exile_Car_HEMMT","HMMWV_M134","Exile_Car_HMMWV_M134_Green","Exile_Car_HMMWV_M134_Desert","HMMWV_M2","Exile_Car_HMMWV_M2_Green",
						"Exile_Car_HMMWV_M2_Desert","HMMWV_MEV","Exile_Car_HMMWV_MEV_Green","Exile_Car_HMMWV_MEV_Desert","HMMWV_UNA",
						"Exile_Car_HMMWV_UNA_Green","Exile_Car_HMMWV_UNA_Desert",

						"Exile_Car_Hunter",
						"Exile_Car_Ifrit",

						"Exile_Car_Ikarus_Blue","Exile_Car_Ikarus_Red","Exile_Car_Ikarus_Party",

						"Exile_Car_Lada_Green","Exile_Car_Lada_Taxi","Exile_Car_Lada_Red","Exile_Car_Lada_White","Exile_Car_Lada_Hipster",

						"Exile_Car_LandRover_Red","Exile_Car_LandRover_Urban","Exile_Car_LandRover_Green","Exile_Car_LandRover_Sand","Exile_Car_LandRover_Desert",
						"Exile_Car_LandRover_Ambulance_Green","Exile_Car_LandRover_Ambulance_Desert","Exile_Car_LandRover_Ambulance_Sand",

						"Exile_Car_Octavius_White","Exile_Car_Octavius_Black",

						"Exile_Car_Offroad_Red","Exile_Car_Offroad_Beige","Exile_Car_Offroad_White","Exile_Car_Offroad_Blue","Exile_Car_Offroad_DarkRed",
						"Exile_Car_Offroad_BlueCustom","Exile_Car_Offroad_Guerilla01","Exile_Car_Offroad_Guerilla02","Exile_Car_Offroad_Guerilla03",
						"Exile_Car_Offroad_Guerilla04","Exile_Car_Offroad_Guerilla05","Exile_Car_Offroad_Guerilla06","Exile_Car_Offroad_Guerilla07",
						"Exile_Car_Offroad_Guerilla08","Exile_Car_Offroad_Guerilla09","Exile_Car_Offroad_Guerilla10","Exile_Car_Offroad_Guerilla11",
						"Exile_Car_Offroad_Guerilla12","Exile_Car_Offroad_Rusty1","Exile_Car_Offroad_Rusty2","Exile_Car_Offroad_Rusty3",

						"Exile_Car_Offroad_Armed_Guerilla01","Exile_Car_Offroad_Armed_Guerilla02","Exile_Car_Offroad_Armed_Guerilla03","Exile_Car_Offroad_Armed_Guerilla04",
						"Exile_Car_Offroad_Armed_Guerilla05","Exile_Car_Offroad_Armed_Guerilla06","Exile_Car_Offroad_Armed_Guerilla07","Exile_Car_Offroad_Armed_Guerilla08",
						"Exile_Car_Offroad_Armed_Guerilla09","Exile_Car_Offroad_Armed_Guerilla10","Exile_Car_Offroad_Armed_Guerilla11","Exile_Car_Offroad_Armed_Guerilla12",

						"Exile_Car_Offroad_Repair_Civillian","Exile_Car_Offroad_Repair_Red","Exile_Car_Offroad_Repair_Beige","Exile_Car_Offroad_Repair_White",
						"Exile_Car_Offroad_Repair_Blue","Exile_Car_Offroad_Repair_DarkRed","Exile_Car_Offroad_Repair_BlueCustom","Exile_Car_Offroad_Repair_Guerilla01",
						"Exile_Car_Offroad_Repair_Guerilla02","Exile_Car_Offroad_Repair_Guerilla03","Exile_Car_Offroad_Repair_Guerilla04","Exile_Car_Offroad_Repair_Guerilla05",
						"Exile_Car_Offroad_Repair_Guerilla06","Exile_Car_Offroad_Repair_Guerilla07","Exile_Car_Offroad_Repair_Guerilla08","Exile_Car_Offroad_Repair_Guerilla09",
						"Exile_Car_Offroad_Repair_Guerilla10","Exile_Car_Offroad_Repair_Guerilla11","Exile_Car_Offroad_Repair_Guerilla12",

						"Exile_Car_OldTractor_Red",
						"Exile_Car_Strider",

						"Exile_Car_SUV_Red","Exile_Car_SUV_Black","Exile_Car_SUV_Grey","Exile_Car_SUV_Orange","Exile_Car_SUV_Rusty1","Exile_Car_SUV_Rusty2",
						"Exile_Car_SUV_Rusty3","SUV_Base",

						"Exile_Car_SUVXL_Black","Exile_Car_SUV_Armed_Black",

						"Exile_Car_Tempest",

						"Exile_Car_TowTractor_White",

						"Exile_Car_Tractor_Red",
						"Exile_Car_UAZ_Green","Exile_Car_UAZ_Open_Green",

						"Exile_Car_Ural_Covered_Blue","Exile_Car_Ural_Covered_Yellow","Exile_Car_Ural_Covered_Worker","Exile_Car_Ural_Covered_Military","Exile_Car_Ural_Open_Blue",
						"Exile_Car_Ural_Open_Yellow","Exile_Car_Ural_Open_Worker","Exile_Car_Ural_Open_Military",

						"Exile_Car_V3S_Covered","Exile_Car_V3S_Open",

						"Exile_Car_Van_Black","Exile_Car_Van_White","Exile_Car_Van_Red","Exile_Car_Van_Guerilla01","Exile_Car_Van_Guerilla02",
						"Exile_Car_Van_Guerilla03","Exile_Car_Van_Guerilla04","Exile_Car_Van_Guerilla05","Exile_Car_Van_Guerilla06","Exile_Car_Van_Guerilla07",
						"Exile_Car_Van_Guerilla08",

						"Exile_Car_Van_Box_Black","Exile_Car_Van_Box_White","Exile_Car_Van_Box_Red","Exile_Car_Van_Box_Guerilla01","Exile_Car_Van_Box_Guerilla02",
						"Exile_Car_Van_Box_Guerilla03","Exile_Car_Van_Box_Guerilla04","Exile_Car_Van_Box_Guerilla05","Exile_Car_Van_Box_Guerilla06","Exile_Car_Van_Box_Guerilla07",
						"Exile_Car_Van_Box_Guerilla08",

						"Exile_Car_Van_Fuel_Black","Exile_Car_Van_Fuel_White","Exile_Car_Van_Fuel_Red","Exile_Car_Van_Fuel_Guerilla01","Exile_Car_Van_Fuel_Guerilla02","Exile_Car_Van_Fuel_Guerilla03",

						"Exile_Car_Volha_Blue","Exile_Car_Volha_White","Exile_Car_Volha_Black",

						"Exile_Car_Zamak",

						"Exile_Bike_QuadBike_Black","Exile_Bike_QuadBike_Blue","Exile_Bike_QuadBike_Red","Exile_Bike_QuadBike_White","Exile_Bike_QuadBike_Nato","Exile_Bike_QuadBike_Csat","Exile_Bike_QuadBike_Fia",
						"Exile_Bike_QuadBike_Guerilla01","Exile_Bike_QuadBike_Guerilla02",

						"Exile_Chopper_Hellcat_Green","Exile_Chopper_Hellcat_FIA",

						"Exile_Chopper_Huey_Green","Exile_Chopper_Huey_Desert","Exile_Chopper_Huey_Armed_Green","Exile_Chopper_Huey_Armed_Desert",

						"Exile_Chopper_Hummingbird_Green","Exile_Chopper_Hummingbird_Civillian_Blue","Exile_Chopper_Hummingbird_Civillian_Red","Exile_Chopper_Hummingbird_Civillian_ION",
						"Exile_Chopper_Hummingbird_Civillian_BlueLine","Exile_Chopper_Hummingbird_Civillian_Digital","Exile_Chopper_Hummingbird_Civillian_Elliptical",
						"Exile_Chopper_Hummingbird_Civillian_Furious","Exile_Chopper_Hummingbird_Civillian_GrayWatcher","Exile_Chopper_Hummingbird_Civillian_Jeans",
						"Exile_Chopper_Hummingbird_Civillian_Light","Exile_Chopper_Hummingbird_Civillian_Shadow","Exile_Chopper_Hummingbird_Civillian_Sheriff",
						"Exile_Chopper_Hummingbird_Civillian_Speedy","Exile_Chopper_Hummingbird_Civillian_Sunset","Exile_Chopper_Hummingbird_Civillian_Vrana",
						"Exile_Chopper_Hummingbird_Civillian_Wasp","Exile_Chopper_Hummingbird_Civillian_Wave",

						"Exile_Chopper_Huron_Black","Exile_Chopper_Huron_Green",

						"Exile_Chopper_Mohawk_FIA",

						"Exile_Chopper_Orca_CSAT","Exile_Chopper_Orca_Black","Exile_Chopper_Orca_BlackCustom",

						"Exile_Chopper_Taru_CSAT","Exile_Chopper_Taru_Black","Exile_Chopper_Taru_Covered_CSAT","Exile_Chopper_Taru_Covered_Black","Exile_Chopper_Taru_Transport_CSAT","Exile_Chopper_Taru_Transport_Black",
						
						"Exile_Plane_Ceasar","Exile_Plane_BlackfishInfantry","Exile_Plane_BlackfishVehicle",
						"Exile_Car_ProwlerLight","Exile_Car_ProwlerUnarmed",
						"Exile_Car_QilinUnarmed",
						"Exile_Car_MB4WD",
						"Exile_Car_MB4WDOpen",
						
						"C_Offroad_02_unarmed_F",
						"B_T_LSV_01_armed_F", "B_T_LSV_01_unarmed_F", "O_T_LSV_02_armed_F","O_T_LSV_02_unarmed_F","B_T_UAV_03_F","C_Plane_Civil_01_F","O_T_UAV_04_CAS_F","B_T_VTOL_01_armed_F",
						"B_T_VTOL_01_infantry_F","B_T_VTOL_01_vehicle_F","O_T_VTOL_02_infantry_F","O_T_VTOL_02_vehicle_F","I_C_Boat_Transport_02_F","C_Scoooter_Transport_01_F",
						
						"CUP_C_Datsun","CUP_C_Datsun_4seat","CUP_C_Datsun_Plain","CUP_C_Datsun_Covered","CUP_C_Datsun_Tubeframe",
						"CUP_C_Ural_Civ_01","CUP_C_Ural_Civ_02","CUP_C_Ural_Civ_03","CUP_C_Ural_Open_Civ_01","CUP_C_Ural_Open_Civ_02","CUP_C_Ural_Open_Civ_03","CUP_O_Ural_TKA","CUP_O_Ural_RU","CUP_I_Ural_UN",
						"CUP_B_Ural_CDF","CUP_O_Ural_CHDKZ","CUP_O_Ural_SLA","CUP_O_Ural_Open_TKA","CUP_B_Ural_Open_CDF","CUP_O_Ural_Open_RU","CUP_O_Ural_Open_CHDKZ","CUP_O_Ural_Open_SLA","CUP_O_Ural_Empty_SLA",
						"CUP_B_Ural_Empty_CDF","CUP_I_Ural_Empty_UN","CUP_O_Ural_Empty_RU","CUP_O_Ural_Empty_CHDKZ","CUP_O_Ural_Empty_TKA","CUP_O_Ural_Repair_SLA","CUP_O_Ural_Repair_TKA","CUP_O_Ural_Repair_CHDKZ","CUP_O_Ural_Repair_RU",
						"CUP_I_Ural_Repair_UN","CUP_B_Ural_Repair_CDF","CUP_B_Ural_Refuel_CDF","CUP_O_Ural_Refuel_RU","CUP_O_Ural_Refuel_CHDKZ","CUP_O_Ural_Refuel_TKA","CUP_O_Ural_Refuel_SLA","CUP_C_LR_Transport_CTK",
						"CUP_O_LR_Transport_TKA","CUP_O_LR_Transport_TKM","CUP_B_LR_Transport_CZ_W","CUP_B_LR_Transport_CZ_D","CUP_B_LR_Transport_GB_W","CUP_B_LR_Transport_GB_D","CUP_B_LR_Ambulance_CZ_W",
						"CUP_B_LR_Ambulance_CZ_D","CUP_B_LR_Ambulance_GB_W","CUP_B_LR_Ambulance_GB_D","CUP_O_LR_Ambulance_TKA","CUP_C_UAZ_Unarmed_TK_CIV","CUP_O_UAZ_Unarmed_RU","CUP_I_UAZ_Unarmed_UN","CUP_O_UAZ_Unarmed_TKA",
						"CUP_O_UAZ_Unarmed_CHDKZ","CUP_B_UAZ_Unarmed_ACR","CUP_B_UAZ_Unarmed_CDF","CUP_C_UAZ_Open_TK_CIV","CUP_O_UAZ_Open_CHDKZ","CUP_O_UAZ_Open_RU","CUP_O_UAZ_Open_TKA","CUP_I_UAZ_Open_UN","CUP_B_UAZ_Open_ACR",
						"CUP_B_UAZ_Open_CDF","CUP_B_HMMWV_Unarmed_USA","CUP_B_HMMWV_Unarmed_USMC","CUP_B_HMMWV_Ambulance_USMC","CUP_B_HMMWV_Ambulance_USA","CUP_B_HMMWV_Ambulance_ACR","CUP_B_HMMWV_Transport_USA","CUP_I_M113_Med_RACS","CUP_I_M113_Med_UN",
						"CUP_O_LR_MG_TKM","CUP_O_LR_MG_TKA","CUP_I_Datsun_PK","CUP_I_Datsun_PK_Random","CUP_I_Datsun_PK_TK","CUP_I_Datsun_PK_TK_Random","CUP_O_Datsun_PK","CUP_O_Datsun_PK_Random","CUP_O_UAZ_MG_CHDKZ",
						"CUP_O_UAZ_MG_RU","CUP_O_UAZ_MG_TKA","CUP_I_UAZ_MG_UN","CUP_B_UAZ_MG_ACR","CUP_B_UAZ_MG_CDF","CUP_B_UAZ_AGS30_CDF","CUP_O_UAZ_AGS30_CHDKZ","CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_AGS30_TKA","CUP_I_UAZ_AGS30_UN",
						"CUP_I_M113_RACS","CUP_I_M113_UN","CUP_BAF_Jackal2_L2A1_W","CUP_BAF_Jackal2_L2A1_D","CUP_BAF_Jackal2_GMG_D","CUP_BAF_Jackal2_GMG_W","CUP_B_LR_Special_CZ_W","CUP_B_LR_Special_Des_CZ_D","CUP_B_LR_MG_CZ_W",
						"CUP_B_LR_MG_GB_W","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_M2_USMC","CUP_B_HMMWV_Crows_M2_USA","CUP_B_HMMWV_M2_GPK_USA","CUP_B_HMMWV_M2_USA","CUP_B_HMMWV_DSHKM_GPK_ACR","CUP_B_HMMWV_AGS_GPK_ACR",
						"CUP_B_HMMWV_MK19_USMC","CUP_B_HMMWV_MK19_USA","CUP_B_HMMWV_Crows_MK19_USA","CUP_B_HMMWV_SOV_USA","CUP_B_BRDM2_HQ_CDF","CUP_O_BRDM2_HQ_SLA","CUP_I_BRDM2_HQ_UN","CUP_I_BRDM2_HQ_NAPA","CUP_I_BRDM2_HQ_TK_Gue",
						"CUP_O_BRDM2_HQ_TKA","CUP_O_BRDM2_HQ_CHDKZ","CUP_O_BRDM2_CHDKZ","CUP_O_BRDM2_SLA","CUP_O_BRDM2_TKA","CUP_I_BRDM2_NAPA","CUP_I_BRDM2_TK_Gue","CUP_I_BRDM2_UN","CUP_B_BRDM2_CDF","CUP_B_CH53E_USMC",
						"CUP_B_UH1Y_UNA_F","CUP_B_UH1Y_MEV_F","CUP_C_Mi17_Civilian_RU","CUP_B_Mi17_CDF","CUP_O_Mi17_TK","CUP_B_Mi17_medevac_CDF","CUP_B_Mi171Sh_Unarmed_ACR","CUP_O_Mi8_medevac_CHDKZ","CUP_O_Mi8_medevac_RU",
						"CUP_Merlin_HC3_FFV","CUP_Merlin_HC3","CUP_Merlin_HC3_MED","CUP_B_MH60S_USMC","CUP_B_MH60S_FFV_USMC","CUP_B_AW159_Unarmed_BAF","CUP_B_CH47F_USA","CUP_B_CH47F_GB","CUP_B_UH60M_US","CUP_B_UH60L_US",
						"CUP_B_UH60M_FFV_US","CUP_B_UH60L_FFV_US","CUP_B_UH60M_Unarmed_US","CUP_B_UH60L_Unarmed_US","CUP_B_UH60M_Unarmed_FFV_US","CUP_B_UH60L_Unarmed_FFV_US","CUP_B_UH60M_Unarmed_FFV_MEV_US","CUP_B_UH60L_Unarmed_FFV_MEV_US",
						"CUP_I_UH60L_RACS","CUP_I_UH60L_FFV_RACS","CUP_I_UH60L_Unarmed_RACS","CUP_I_UH60L_Unarmed_FFV_Racs","CUP_I_UH60L_Unarmed_FFV_MEV_Racs",
						
						"I_mas_cars_UAZ_Unarmed","I_mas_cars_UAZ_Med","O_mas_cars_UAZ_Unarmed","O_mas_cars_UAZ_Med","B_mas_cars_Hilux_Unarmed","B_mas_cars_Hilux_Med","B_mas_cars_LR_Unarmed",
						"B_mas_cars_LR_Med","I_mas_cars_LR_soft_Unarmed","I_mas_cars_LR_soft_Med","B_mas_HMMWV_UNA","B_mas_HMMWV_MEV","B_mas_HMMWV_UNA_des","B_mas_HMMWV_MEV_des",
						"I_mas_cars_Ural","I_mas_cars_Ural_open","I_mas_cars_Ural_ammo","I_mas_cars_Ural_repair","I_mas_cars_Ural_fuel","O_mas_cars_Ural","O_mas_cars_Ural_open","O_mas_cars_Ural_ammo",
						"O_mas_cars_Ural_repair","O_mas_cars_Ural_fuel","I_mas_cars_UAZ_MG","I_mas_cars_UAZ_M2","O_mas_cars_UAZ_MG","B_mas_cars_Hilux_MG","B_mas_cars_Hilux_M2","I_mas_cars_LR_soft_M2","B_mas_cars_LR_M2",
						"B_mas_HMMWV_M134","B_mas_HMMWV_SOV_M134","B_mas_HMMWV_M134_des","B_mas_HMMWV_M2","B_mas_HMMWV_SOV_M134_des","B_mas_HMMWV_M2_des","B_mas_UH60M_MEV","B_mas_UH1Y_UNA_F","B_mas_UH1Y_MEV_F",
						
						"B_Heli_Transport_01_F","B_Heli_Transport_01_camo_F","b_heli_transport_03_black_f","b_heli_transport_03_f",
						
						"CUP_O_GAZ_Vodnik_PK_RU", // Vodnik
						"CUP_B_RG31_M2_GC_USMC", // RG31 with periscope camera, check for thermal
						"CUP_B_RG31_M2_USMC", // RG31 sand camo
						"CUP_B_RG31_M2_OD_USMC", // RG31 green camo
						"CUP_B_RG31E_M2_USMC", // RG31 troop transport
						"CUP_B_HMMWV_M2_GPK_USA", // HMMWV, exposed turret with guard
						"CUP_O_BTR90_HQ_RU", // basically a BRDM2 with more wheels
						"CUP_B_M1133_MEV_Desert_Slat", // unarmed APC w/RPG guard
						"CUP_B_M1133_MEV_Woodland_Slat", // unarmed APC w/RPG guard
						"CUP_B_LAV25_HQ_USMC", // LAV w/more wheels
						"CUP_B_RHIB_USMC", // Armed RHIB
						"CUP_B_RHIB_RACS"
						
						], 15];

            _weaponHolder = objNull;
            if ((count _nearestTruck > 0)) then
            {
                _truck = _nearestTruck select 0;
                if (_truck canAdd "Exile_Item_JunkMetal") then
                    {
					_numberOfItems = (ceil (_shippingContainerVolume / random [15,25,30])) max 1;
					format ["Spawning %1 junk metal at %2", _numberOfItems, _truck] call ExileServer_util_log;//Server RPT logging
                    _truck addMagazineCargoGlobal ["Exile_Item_JunkMetal", _numberOfItems];
					_shippingContainer setDamage [999,false];
						
						[_sessionID, "toastRequest", ["SuccessTitleOnly", [format ["%1 Junk metal was put inside your Vehicle!", _numberOfItems]]]] call ExileServer_system_network_send_to;
	
                    }						
	
					else 
					{
						_positionPlr = getPosATL _player;
						_numberOfItems = (ceil (_shippingContainerVolume / random [15,25,30])) max 1;
						format ["Spawning %1 junk metal at %2", _numberOfItems, _player] call ExileServer_util_log;	//Server RPT logging					
						_weaponHolder = createVehicle ["GroundWeaponHolder", _positionPlr, [], 0, "CAN_COLLIDE"];
						_weaponHolder setPosATL _positionPlr;
						_weaponHolder addMagazineCargoGlobal ["Exile_Item_JunkMetal", _numberOfItems];
						_shippingContainer setDamage [999,false];
						
							[_sessionID, "toastRequest", ["SuccessTitleOnly", [_metalVehicleFullText]]] call ExileServer_system_network_send_to;
					};
			}
			else
			{	
	_shippingContainerPosition = getPosATL _shippingContainer;
	_positionPlr = getPosATL _player;
	_numberOfItems = (ceil (_shippingContainerVolume / random [15,25,30])) max 1;
	format ["Spawning %1 junk metal at %2", _numberOfItems, _player] call ExileServer_util_log;	//Server RPT logging	
	_weaponHolder = createVehicle ["GroundWeaponHolder", _positionPlr, [], 0, "CAN_COLLIDE"];
	_weaponHolder setPosATL _positionPlr;
	_weaponHolder addMagazineCargoGlobal ["Exile_Item_JunkMetal", _numberOfItems];
	_shippingContainer setDamage [999,false];
	

			[_sessionID, "toastRequest", ["SuccessTitleOnly", [_metalText]]] call ExileServer_system_network_send_to;
			};	
			
		

}
catch 
{
	_exception call ExileServer_util_log;
};
true