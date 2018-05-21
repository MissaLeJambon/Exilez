/*

ExileZ Crashes by [FPS]kuplion - Based on Heli Crashes by Darth Rogue

*/

// Logging Settings
EZC_Debug						= false;			// Debug messages
EZC_ExtendedLogging				= false;			// Slightly more information in logs
EZC_showOnMap					= false;			// Show crashes on the map

// Global Settings
EZC_crashNum					= 5;				// How many crashes?
EZC_centerPOS					= [7680,7680,0];	// Unless you know exact sizes, leave this as is..
EZC_minDistCenter				= 0;				// Minimum distance from the center position (Number) in meters
EZC_maxDist						= 7680;				// Maximum distance from the center position (Number) in meters
EZC_minDist						= 20;				// Minimum distance from the nearest object (Number) in meters, ie. spawn at least this distance away from anything within x meters. Low EZC_minDist means helicrashes could spawn near towns or in forests.. higher the number it would be spawning in an open field etc
EZC_waterMode					= 0;				// Water mode 0: cannot be in water , 1: Can either be in water or not , 2: Must be in water
EZC_landMode					= 0;				// 0: Does not have to be at a shore , 1: Must be at a shore

// Crash settings
EZC_crashEffects				= true;				// Effects on the wreck?
EZC_crashOnFire					= false;			// Fire or just smoke?

// Override MaxSpawnDistance in ExileZ Mod (otherwise Zombies can spawn too far away to aggro)
EZC_MaxSpawnDistance			= 80;				// Set no higher than 100

// Crash Zombies Config
EZC_groupSize					= 10;				// How many Zombies per spawn?
EZC_vestGroup					= EZM_Basic;			// Which vest group?
EZC_lootGroup					= EZM_Level_4_Loot;		// What loot do the Zombies have?
EZC_zombieGroup					= EZM_Level_6;		// What Zombie group to use?
EZC_spawnDelay					= 1;				// Spawn delay before spawning first wave
EZC_respawnDelay				= 20;				// Respawn delay between waves

// Wrecks
EZC_wrecks						=	[
									// Trucks
									"Land_Wreck_BMP2_F",
									"Land_Wreck_HMMWV_F",
									"Land_Wreck_BRDM2_F",
									"Land_Wreck_Ural_F",
									// Tanks
									"Land_Wreck_Slammer_F",
									// Helis
									"Land_Wreck_Heli_Attack_02_F",
									"Land_UWreck_Heli_Attack_02_F"
									];


// Trigger settings
EZC_triggerRadius				= 30;				// Radius in meters
EZC_activationDelay				= 2;				// Activation delay in seconds

// Check Config Compiled
EZC_CompiledOkay				= true;
