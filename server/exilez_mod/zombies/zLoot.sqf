/*

ExileZ Mod by [FPS]kuplion - Based on ExileZ 2.0 by Patrix87

*/

EZM_Useful =
{
	_return = selectRandom [

	"Exile_Item_InstaDoc",
	"Exile_Item_Catfood",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_Matches",
	"Exile_Item_DuctTape",
	"Exile_Item_CookingPot",
	"16Rnd_9x21_Mag"

	];
	_return;
};

EZM_DocAnd9mm =
{
	_return = selectRandom [

	"Exile_Item_InstaDoc",
	"16Rnd_9x21_Mag"

	];
	_return;
};

EZM_DocAndAmmo =
{
	_return = selectRandom [
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"10Rnd_338_Mag",
	"130Rnd_338_Mag",
	"7Rnd_408_Mag",
	"6Rnd_45ACP_Cylinder",
	"9Rnd_45ACP_Mag",
	"11Rnd_45ACP_Mag",
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_45ACP_Mag_SMG_01_Tracer_Green",
	"30Rnd_45ACP_Mag_SMG_01_Tracer_Red",
	"30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow",
	"20Rnd_556x45_UW_mag",
	"30Rnd_556x45_Stanag",
	"30Rnd_556x45_Stanag_green",
	"30Rnd_556x45_Stanag_red",
	"30Rnd_556x45_Stanag_Tracer_Green",
	"30Rnd_556x45_Stanag_Tracer_Red",
	"30Rnd_556x45_Stanag_Tracer_Yellow",
	"30Rnd_65x39_caseless_green",
	"30Rnd_65x39_caseless_green_mag_Tracer",
	"30Rnd_65x39_caseless_mag",
	"30Rnd_65x39_caseless_mag_Tracer",
	"100Rnd_65x39_caseless_mag",
	"100Rnd_65x39_caseless_mag_Tracer",
	"200Rnd_65x39_cased_Box",
	"200Rnd_65x39_cased_Box_Tracer",
	"20Rnd_762x51_Mag",
	"10Rnd_762x54_Mag",
	"150Rnd_762x54_Box",
	"150Rnd_762x54_Box_Tracer",
	"16Rnd_9x21_Mag",
	"30Rnd_9x21_Mag",
	"10Rnd_93x64_DMR_05_Mag",
	"150Rnd_93x64_Mag",
	"5Rnd_127x108_Mag",
	"5Rnd_127x108_APDS_Mag",
	"10Rnd_127x54_Mag",
	"6Rnd_GreenSignal_F",
	"6Rnd_RedSignal_F"

	];
	_return;
};

EZM_Nothing =
{
	_return = "";
	_return;
};

/* Custom loot property */

/* Base template for custom property */
/*

EZM_Name =
{
	_return = selectRandom [

	];
	_return;
};

*/
//No Buildings
EZM_Level_1_Loot =
{
	_return = selectRandom [

	//Trash : 40
	"Exile_Item_Magazine01",
	"Exile_Item_Magazine01",
	"Exile_Item_Magazine02",
	"Exile_Item_Magazine02",
	"Exile_Item_Magazine03",
	"Exile_Item_Magazine03",
	"Exile_Item_Magazine04",
	"Exile_Item_Magazine04",
	"Exile_Item_Magazine04",
	"Exile_Item_Magazine04",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	//Useless : 10
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"ItemWatch",
	"ItemWatch",
	"ItemWatch",
	"ItemMap",
	"ItemMap",
	"ItemMap",
	//RoadFlares : 5
	"FlareGreen_F",
	"FlareRed_F",
	"FlareWhite_F",
	"FlareWhite_F",
	"FlareYellow_F",
	//Chemlights : 7
	"Chemlight_blue",
	"Chemlight_blue",
	"Chemlight_blue",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	//Useful : 2
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	//Medical : 6
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Heatpack",
	"Exile_Item_Heatpack",
	//Valuable : 1
	"Exile_Item_MobilePhone",
	//RifleAttachments : 5
	"optic_Arco",
	"acc_flashlight",
	"acc_flashlight",
	"acc_flashlight",
	"acc_flashlight",
	//SMGammo : 4
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02",
	//ShotgunAmmo : 2
	"Exile_Magazine_8Rnd_74Slug",
	"Exile_Magazine_8Rnd_74Slug",
	//PistolAmmo : 8
	"6Rnd_GreenSignal_F",
	"16Rnd_9x21_Mag",
	"16Rnd_9x21_Mag",
	"6Rnd_45ACP_Cylinder",
	"6Rnd_45ACP_Cylinder",
	"10Rnd_9x21_Mag",
	"30Rnd_9x21_Mag",
	"11Rnd_45ACP_Mag",
	//Foods : 4
	"Exile_Item_Noodles",
	"Exile_Item_Noodles",
	"Exile_Item_Raisins",
	"Exile_Item_Raisins",
	//Drinks : 6
	"Exile_Item_Beer",
	"Exile_Item_EnergyDrink",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater"

	];
	_return;
};

//Cities
EZM_Level_2_Loot =
{
	_return = selectRandom [

	//Trash : 28
	"Exile_Item_Magazine01",
	"Exile_Item_Magazine01",
	"Exile_Item_Magazine02",
	"Exile_Item_Magazine02",
	"Exile_Item_Magazine03",
	"Exile_Item_Magazine03",
	"Exile_Item_Magazine04",
	"Exile_Item_Magazine04",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	//Useless : 10
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"ItemWatch",
	"ItemWatch",
	"ItemWatch",
	"ItemMap",
	"ItemMap",
	"ItemMap",
	//RoadFlares : 5
	"FlareGreen_F",
	"FlareRed_F",
	"FlareWhite_F",
	"FlareWhite_F",
	"FlareYellow_F",
	//Chemlights : 5
	"Chemlight_blue",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	//Useful : 3
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	//Medical : 6
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Heatpack",
	"Exile_Item_Heatpack",
	//Valuable : 2
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	//RifleAttachments : 6
	"optic_Arco",
	"optic_Arco",
	"acc_flashlight",
	"acc_flashlight",
	"acc_flashlight",
	"acc_flashlight",
	//RifleAmmo : 1
	"30Rnd_556x45_Stanag",
	//SMGammo : 5
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02",
	//ShotgunAmmo : 2
	"Exile_Magazine_8Rnd_74Slug",
	"Exile_Magazine_8Rnd_74Slug",
	//PistolAmmo : 12
	"6Rnd_GreenSignal_F",
	"6Rnd_GreenSignal_F",
	"16Rnd_9x21_Mag",
	"16Rnd_9x21_Mag",
	"6Rnd_45ACP_Cylinder",
	"6Rnd_45ACP_Cylinder",
	"10Rnd_9x21_Mag",
	"10Rnd_9x21_Mag",
	"30Rnd_9x21_Mag",
	"30Rnd_9x21_Mag",
	"11Rnd_45ACP_Mag",
	"11Rnd_45ACP_Mag",
	//Foods : 6
	"Exile_Item_CatFood",
	"Exile_Item_Dogfood",
	"Exile_Item_Noodles",
	"Exile_Item_Noodles",
	"Exile_Item_Raisins",
	"Exile_Item_Raisins",
	//Drinks : 9
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_EnergyDrink",
	"Exile_Item_EnergyDrink",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater"

	];
	_return;
};

//MainCities
EZM_Level_3_Loot =
{
	_return = selectRandom [

	//TRASH & USELESS & FLARES 22% - 44 objects
	//Trash : 24
	"Exile_Item_Magazine01",
	"Exile_Item_Magazine01",
	"Exile_Item_Magazine02",
	"Exile_Item_Magazine02",
	"Exile_Item_Magazine03",
	"Exile_Item_Magazine03",
	"Exile_Item_Magazine04",
	"Exile_Item_Magazine04",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	//Useless : 10
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"ItemWatch",
	"ItemWatch",
	"ItemWatch",
	"ItemMap",
	"ItemMap",
	"ItemMap",
	//RoadFlares : 5
	"FlareGreen_F",
	"FlareRed_F",
	"FlareWhite_F",
	"FlareWhite_F",
	"FlareYellow_F",
	//Chemlights : 5
	"Chemlight_blue",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	//INDUSTIRAL & USEFUL 8% - 16 objects
	//IndustrialItems : 10
	"Exile_Item_CamoTentKit",
	"Exile_Item_Cement",
	"Exile_Item_LightBulb",
	"Exile_Item_LightBulb",
	"Exile_Item_JunkMetal",
	"Exile_Item_JunkMetal",
	"Exile_Item_ScrewDriver",
	"Exile_Item_ScrewDriver",
	"Exile_Item_ScrewDriver",
	"Exile_Item_Knife",
	//Useful : 6
	"Exile_Item_FuelCanisterFull",
	"Exile_Item_FuelCanisterFull",
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	//HEALING 16% - 32 objects
	//Medical : 20
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Heatpack",
	"Exile_Item_Heatpack",
	"Exile_Item_Heatpack",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	//VALUABLE 2% - 4 objects
	//Valuable : 4
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	//ATTACHMENTS & DIVERS 12% - 24 objects
	//SMGAttachments : 2
	"optic_Holosight_smg",
	"optic_Aco_smg",
	//RifleAttachments : 7
	"optic_Arco",
	"optic_MRCO",
	"acc_flashlight",
	"acc_pointer_IR",
	"optic_Holosight",
	"muzzle_snds_65_TI_blk_F",
	"muzzle_snds_M",
	//SniperAttachments : 2
	"optic_DMS",
	"muzzle_snds_B",
	//PistolAttachments : 4
	"optic_MRD",
	"optic_Yorris",
	"muzzle_snds_acp",
	"muzzle_snds_L",
	//Bipods : 2
	"bipod_02_F_blk",
	"bipod_01_F_blk",
	//GuerillaItems : 1
	"Rangefinder",
	//CivilianItems : 2
	"Binocular",
	"Binocular",
	"ItemGPS",
	"ItemGPS",
	//HandGrenade : 1
	"MiniGrenade",
	//AMMOS : 20 % - 40 objects
	//RifleAmmo : 15
	"30Rnd_556x45_Stanag",
	"Exile_Magazine_10Rnd_303",
	"30Rnd_762x39_Mag_F",
	"150Rnd_556x45_Drum_Mag_F",
	"20Rnd_556x45_UW_mag",
	"30Rnd_65x39_caseless_mag",
	"Exile_Magazine_30Rnd_762x39_AK",
	"Exile_Magazine_20Rnd_762x51_DMR",
	"Exile_Magazine_5Rnd_22LR",
	"Exile_Magazine_10Rnd_762x54",
	"Exile_Magazine_10Rnd_9x39",
	"30Rnd_762x39_AK47_M",
	"30Rnd_545x39_Mag_F",
	"30Rnd_580x42_Mag_F",
	"100Rnd_580x42_Mag_F",
	//SMGammo : 5
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02",
	//ShotgunAmmo : 2
	"Exile_Magazine_8Rnd_74Slug",
	"Exile_Magazine_8Rnd_74Slug",
	//PistolAmmo : 12
	"6Rnd_GreenSignal_F",
	"16Rnd_9x21_Mag",
	"6Rnd_45ACP_Cylinder",
	"10Rnd_9x21_Mag",
	"30Rnd_9x21_Mag",
	"11Rnd_45ACP_Mag",
	"9Rnd_45ACP_Mag",
	"Exile_Magazine_6Rnd_45ACP",
	"Exile_Magazine_7Rnd_45ACP",
	"Exile_Magazine_8Rnd_9x18",
	"Exile_Magazine_10Rnd_765x17_SA61",
	"Exile_Magazine_20Rnd_765x17_SA61",
	//SniperAmmo : 3
	"20Rnd_762x51_Mag",
	"10Rnd_762x54_Mag",
	"20Rnd_650x39_Cased_Mag_F",
	//LMGAmmo : 3
	"130Rnd_338_Mag",
	"150Rnd_93x64_Mag",
	"100Rnd_65x39_caseless_mag",
	//FOOD : 20 % - 40 objects
	//Foods : 16
	"Exile_Item_CatFood",
	"Exile_Item_Dogfood",
	"Exile_Item_Noodles",
	"Exile_Item_Noodles",
	"Exile_Item_Raisins",
	"Exile_Item_Raisins",
	"Exile_Item_GloriousKnakworst",
	"Exile_Item_Surstromming",
	"Exile_Item_InstantCoffee",
	"Exile_Item_InstantCoffee",
	"Exile_Item_Moobar",
	"Exile_Item_Moobar",
	"Exile_Item_SeedAstics",
	"Exile_Item_Cheathas",
	"Exile_Item_Cheathas",
	"Exile_Item_BeefParts",
	//Drinks : 24
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_EnergyDrink",
	"Exile_Item_EnergyDrink",
	"Exile_Item_PowerDrink",
	"Exile_Item_PowerDrink",
	"Exile_Item_MountainDupe",
	"Exile_Item_MountainDupe",
	"Exile_Item_MountainDupe",
	"Exile_Item_ChocolateMilk",
	"Exile_Item_ChocolateMilk",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater"

	];
	_return;
};

//Military
EZM_Level_4_Loot =
{
	_return = selectRandom [

	//TRASH & USELESS & FLARES 22% - 88 objects
	//Trash : 48
	"Exile_Item_Magazine01",
	"Exile_Item_Magazine01",
	"Exile_Item_Magazine02",
	"Exile_Item_Magazine02",
	"Exile_Item_Magazine03",
	"Exile_Item_Magazine03",
	"Exile_Item_Magazine04",
	"Exile_Item_Magazine04",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_Magazine01",
	"Exile_Item_Magazine01",
	"Exile_Item_Magazine02",
	"Exile_Item_Magazine02",
	"Exile_Item_Magazine03",
	"Exile_Item_Magazine03",
	"Exile_Item_Magazine04",
	"Exile_Item_Magazine04",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	//Useless : 20
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"ItemWatch",
	"ItemWatch",
	"ItemWatch",
	"ItemMap",
	"ItemMap",
	"ItemMap",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_FuelCanisterEmpty",
	"ItemWatch",
	"ItemWatch",
	"ItemWatch",
	"ItemMap",
	"ItemMap",
	"ItemMap",
	//RoadFlares : 10
	"FlareGreen_F",
	"FlareRed_F",
	"FlareWhite_F",
	"FlareWhite_F",
	"FlareYellow_F",
	"FlareGreen_F",
	"FlareRed_F",
	"FlareWhite_F",
	"FlareWhite_F",
	"FlareYellow_F",
	//Chemlights : 10
	"Chemlight_blue",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	"Chemlight_blue",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	//INDUSTIRAL & USEFUL 8% - 32 objects
	//IndustrialItems : 20
	"Exile_Item_CamoTentKit",
	"Exile_Item_Cement",
	"Exile_Item_LightBulb",
	"Exile_Item_LightBulb",
	"Exile_Item_JunkMetal",
	"Exile_Item_JunkMetal",
	"Exile_Item_ScrewDriver",
	"Exile_Item_ScrewDriver",
	"Exile_Item_ScrewDriver",
	"Exile_Item_Knife",
	"Exile_Item_CamoTentKit",
	"Exile_Item_Cement",
	"Exile_Item_LightBulb",
	"Exile_Item_LightBulb",
	"Exile_Item_JunkMetal",
	"Exile_Item_JunkMetal",
	"Exile_Item_ScrewDriver",
	"Exile_Item_ScrewDriver",
	"Exile_Item_ScrewDriver",
	"Exile_Item_Knife",
	//Useful : 12
	"Exile_Item_FuelCanisterFull",
	"Exile_Item_FuelCanisterFull",
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	"Exile_Item_FuelCanisterFull",
	"Exile_Item_FuelCanisterFull",
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	"Exile_Item_DuctTape",
	//HEALING 16% - 64 objects
	//Medical : 40
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Heatpack",
	"Exile_Item_Heatpack",
	"Exile_Item_Heatpack",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_Heatpack",
	"Exile_Item_Heatpack",
	"Exile_Item_Heatpack",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_InstaDoc",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	"Exile_Item_Vishpirin",
	//VALUABLE 2% - 8 objects
	//Valuable : 8
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	"Exile_Item_MobilePhone",
	//ATTACHMENTS & DIVERS 12% - 48 objects
	//SMGAttachments : 4
	"optic_Holosight_smg",
	"optic_Aco_smg",
	"optic_Holosight_smg",
	"optic_Aco_smg",
	//RifleAttachments : 14
	"optic_Arco",
	"optic_MRCO",
	"acc_flashlight",
	"acc_pointer_IR",
	"optic_Holosight",
	"muzzle_snds_65_TI_blk_F",
	"muzzle_snds_M",
	"optic_Arco",
	"optic_MRCO",
	"acc_flashlight",
	"acc_pointer_IR",
	"optic_Holosight",
	"muzzle_snds_65_TI_blk_F",
	"muzzle_snds_M",
	//SniperAttachments : 4
	"optic_DMS",
	"muzzle_snds_B",
	"optic_DMS",
	"muzzle_snds_B",
	//PistolAttachments : 8
	"optic_MRD",
	"optic_Yorris",
	"muzzle_snds_acp",
	"muzzle_snds_L",
	"optic_MRD",
	"optic_Yorris",
	"muzzle_snds_acp",
	"muzzle_snds_L",
	//Bipods : 4
	"bipod_02_F_blk",
	"bipod_01_F_blk",
	"bipod_02_F_blk",
	"bipod_01_F_blk",
	//GuerillaItems : 2
	"Rangefinder",
	"Rangefinder",
	//CivilianItems : 4
	"Binocular",
	"Binocular",
	"ItemGPS",
	"ItemGPS",
	//HandGrenade : 2
	"MiniGrenade",
	"MiniGrenade",
	//AMMOS : 20 % - 80 objects
	//RifleAmmo : 30
	"30Rnd_556x45_Stanag",
	"Exile_Magazine_10Rnd_303",
	"30Rnd_762x39_Mag_F",
	"150Rnd_556x45_Drum_Mag_F",
	"20Rnd_556x45_UW_mag",
	"30Rnd_65x39_caseless_mag",
	"Exile_Magazine_30Rnd_762x39_AK",
	"Exile_Magazine_20Rnd_762x51_DMR",
	"Exile_Magazine_5Rnd_22LR",
	"Exile_Magazine_10Rnd_762x54",
	"Exile_Magazine_10Rnd_9x39",
	"30Rnd_762x39_AK47_M",
	"30Rnd_545x39_Mag_F",
	"30Rnd_580x42_Mag_F",
	"100Rnd_580x42_Mag_F",
	"30Rnd_556x45_Stanag",
	"Exile_Magazine_10Rnd_303",
	"30Rnd_762x39_Mag_F",
	"150Rnd_556x45_Drum_Mag_F",
	"20Rnd_556x45_UW_mag",
	"30Rnd_65x39_caseless_mag",
	"Exile_Magazine_30Rnd_762x39_AK",
	"Exile_Magazine_20Rnd_762x51_DMR",
	"Exile_Magazine_5Rnd_22LR",
	"Exile_Magazine_10Rnd_762x54",
	"Exile_Magazine_10Rnd_9x39",
	"30Rnd_762x39_AK47_M",
	"30Rnd_545x39_Mag_F",
	"30Rnd_580x42_Mag_F",
	"100Rnd_580x42_Mag_F",
	//SMGammo : 10
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02",
	//ShotgunAmmo : 4
	"Exile_Magazine_8Rnd_74Slug",
	"Exile_Magazine_8Rnd_74Slug",
	"Exile_Magazine_8Rnd_74Slug",
	"Exile_Magazine_8Rnd_74Slug",
	//PistolAmmo : 24
	"6Rnd_GreenSignal_F",
	"16Rnd_9x21_Mag",
	"6Rnd_45ACP_Cylinder",
	"10Rnd_9x21_Mag",
	"30Rnd_9x21_Mag",
	"11Rnd_45ACP_Mag",
	"9Rnd_45ACP_Mag",
	"Exile_Magazine_6Rnd_45ACP",
	"Exile_Magazine_7Rnd_45ACP",
	"Exile_Magazine_8Rnd_9x18",
	"Exile_Magazine_10Rnd_765x17_SA61",
	"Exile_Magazine_20Rnd_765x17_SA61",
	"6Rnd_GreenSignal_F",
	"16Rnd_9x21_Mag",
	"6Rnd_45ACP_Cylinder",
	"10Rnd_9x21_Mag",
	"30Rnd_9x21_Mag",
	"11Rnd_45ACP_Mag",
	"9Rnd_45ACP_Mag",
	"Exile_Magazine_6Rnd_45ACP",
	"Exile_Magazine_7Rnd_45ACP",
	"Exile_Magazine_8Rnd_9x18",
	"Exile_Magazine_10Rnd_765x17_SA61",
	"Exile_Magazine_20Rnd_765x17_SA61",
	//SniperAmmo : 6
	"20Rnd_762x51_Mag",
	"10Rnd_762x54_Mag",
	"20Rnd_650x39_Cased_Mag_F",
	"20Rnd_762x51_Mag",
	"10Rnd_762x54_Mag",
	"20Rnd_650x39_Cased_Mag_F",
	//LMGAmmo : 6
	"130Rnd_338_Mag",
	"150Rnd_93x64_Mag",
	"100Rnd_65x39_caseless_mag",
	"130Rnd_338_Mag",
	"150Rnd_93x64_Mag",
	"100Rnd_65x39_caseless_mag",
	//FOOD : 20 % - 80 objects
	//Foods : 32
	"Exile_Item_CatFood",
	"Exile_Item_Dogfood",
	"Exile_Item_Noodles",
	"Exile_Item_Noodles",
	"Exile_Item_Raisins",
	"Exile_Item_Raisins",
	"Exile_Item_GloriousKnakworst",
	"Exile_Item_Surstromming",
	"Exile_Item_InstantCoffee",
	"Exile_Item_InstantCoffee",
	"Exile_Item_Moobar",
	"Exile_Item_Moobar",
	"Exile_Item_SeedAstics",
	"Exile_Item_Cheathas",
	"Exile_Item_Cheathas",
	"Exile_Item_BeefParts",
	"Exile_Item_CatFood",
	"Exile_Item_Dogfood",
	"Exile_Item_Noodles",
	"Exile_Item_Noodles",
	"Exile_Item_Raisins",
	"Exile_Item_Raisins",
	"Exile_Item_GloriousKnakworst",
	"Exile_Item_Surstromming",
	"Exile_Item_InstantCoffee",
	"Exile_Item_InstantCoffee",
	"Exile_Item_Moobar",
	"Exile_Item_Moobar",
	"Exile_Item_SeedAstics",
	"Exile_Item_Cheathas",
	"Exile_Item_Cheathas",
	"Exile_Item_BeefParts",
	//Drinks : 48
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_EnergyDrink",
	"Exile_Item_EnergyDrink",
	"Exile_Item_PowerDrink",
	"Exile_Item_PowerDrink",
	"Exile_Item_MountainDupe",
	"Exile_Item_MountainDupe",
	"Exile_Item_MountainDupe",
	"Exile_Item_ChocolateMilk",
	"Exile_Item_ChocolateMilk",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_EnergyDrink",
	"Exile_Item_EnergyDrink",
	"Exile_Item_PowerDrink",
	"Exile_Item_PowerDrink",
	"Exile_Item_MountainDupe",
	"Exile_Item_MountainDupe",
	"Exile_Item_MountainDupe",
	"Exile_Item_ChocolateMilk",
	"Exile_Item_ChocolateMilk",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleFreshWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater",
	"Exile_Item_PlasticBottleDirtyWater"

	];
	_return;
};

EZM_UsefulMilitary =
{
	_return = selectRandom [

	"acc_flashlight",
	"acc_pointer_IR",
	"bipod_01_F_blk"

	];
	_return;
};

EZM_CityLoot =
{
	_return = selectRandom [

	//Muzzle
	"muzzle_snds_acp",
	//Optics
	"optic_Aco",
	//Hardware
	"Exile_Item_DuctTape",
	"Exile_Item_FuelCanisterEmpty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_Can_Empty",
	"Exile_Item_LightBulb",
	"Exile_Item_LightBulb",
	//Food
	"Exile_Item_MetalScrews",
	"Exile_Item_SausageGravy",
	"Exile_Item_Catfood",
	"Exile_Item_Moobar",
	//Drinks
	"Exile_Item_Beer",
	"Exile_Item_Beer",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_PlasticBottleFreshWater",
	//Tools
	"Exile_Item_CookingPot",
	"Exile_Item_CanOpener",
	"Exile_Item_ToiletPaper",
	"Exile_Item_ToiletPaper",
	"Exile_Item_Screwdriver",
	"ItemWatch",
	"ItemWatch",
	"ItemMap",
	"ItemMap",
	"ItemCompass",
	"ItemCompass",
	//Healings
	"Exile_Item_Bandage",
	"Exile_Item_Bandage",
	"Exile_Item_InstaDoc",
	//Ammos
	"11Rnd_45ACP_Mag",
	"30Rnd_9x21_Mag",
	"9Rnd_45ACP_Mag",
	"10Rnd_9x21_Mag",
	"10Rnd_9x21_Mag",
	//Flares
	"FlareGreen_F",
	"Chemlight_blue"

	];
	_return;
};

EZM_LootTest =
{
	_return = selectRandom [

	"Exile_Item_InstaDoc",
	"Exile_Item_DuctTape",
	"16Rnd_9x21_Mag",
	"Exile_Item_PlasticBottleEmpty",
	"Exile_Item_LightBulb"

	];
	_return;
};

// Check Config Compiled
EZM_zLootCompiledOkay	= true;
