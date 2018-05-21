/*

ExileZ Mod by [FPS]kuplion - Based on ExileZ 2.0 by Patrix87

*/

EZM_Trigger_1 = [				 //Cities
/* 0  Use this trigger */    True,               // Self - explanatory
/* 1  Trigger Positions */   EZM_Level_2_Locations,         // The name of the array used to list all trigger position in the TriggerPositions.sqf file
/* 2  Max Zombies */         35,                 // The maximum number of zombies for that trigger.
/* 3  Activation Delay */    7,                 // The delay before the activation of the trigger.
/* 4  Spawn Delay */         15,                 // The delay between each zombie spawn right after the activation until the Max group size is reached.
/* 5  Respawn Delay */       90,                 // The respawn delay after the max group size was reached
/* 6  Show Trigger On Map */ false,               // Put a marker at the location and radius of the trigger on the map
/* 7  Marker Color */        "ColorRed",         // Color of the trigger
/* 8  MarkerBrush */         "Solid",            // "Solid","SolidFull","Horizontal","Vertical","Grid","FDiagonal","BDiagonal","DiagGrid","Cross","Border","SolidBorder"
/* 9  Marker Alpha */        0.2,               // Alpha of the trigger *(0 is invisible 1 is opaque)
/* 10 Marker Text */         "",              // The text on the trigger
/* 11 Vest group */          EZM_Basic,          // The name of the Array used to list all the possible vest for that trigger. ZVest.sqf
/* 12 Loot group */          EZM_Level_2_Loot,  // The name of the Array used to list all the possible loot for that trigger. ZLoot.sqf
/* 13 Zombie group */        EZM_Level_2,       // The name of the Group used to list the zombies possible for that trigger.  ZClasses.sqf
/* 14 Mission Radius */      0,                  // Up to how far from the center of the trigger the mission LOOT can spawn.
/* 15 Mission SQF */         nil,                // The location of the Mission file related to that trigger *(use M3Editor to create the file.) THIS IS STATIC AND WILL NOT MOVE WITH THE TRIGGER
/* 16 Loot Box */            nil                 // The location of the Missionloot file related to that trigger *(See example file zmissionloot.sqf)
];

EZM_Trigger_2 = [				 //MainCities
/* 0  Use this trigger */    True,
/* 1  Trigger Positions */   EZM_MainCities,
/* 2  Max Zombies */         45,
/* 3  Activation Delay */    7,
/* 4  Spawn Delay */         12,
/* 5  Respawn Delay */       90,
/* 6  Show Trigger On Map */ false,
/* 7  Marker Color */        "ColorRed",
/* 8  MarkerBrush */         "Solid",
/* 9  Marker Alpha */        0.3,
/* 10 Marker Text */         "",
/* 11 Vest group */          EZM_Basic,
/* 12 Loot group */          EZM_Level_3_Loot,
/* 13 Zombie group */        EZM_Level_3,
/* 14 Mission Radius */      0,
/* 15 Mission SQF */         nil,
/* 16 Loot Box */            nil
];

EZM_Trigger_3 = [				 //Military
/* 0  Use this trigger */    True,
/* 1  Trigger Positions */   EZM_Military,
/* 2  Max Zombies */         45,
/* 3  Activation Delay */    10,
/* 4  Spawn Delay */         12,
/* 5  Respawn Delay */       90,
/* 6  Show Trigger On Map */ false,
/* 7  Marker Color */        "ColorRed",
/* 8  MarkerBrush */         "Solid",
/* 9  Marker Alpha */        0.5,
/* 10 Marker Text */         "",
/* 11 Vest group */          EZM_Basic,
/* 12 Loot group */          EZM_Level_4_Loot,
/* 13 Zombie group */        EZM_Level_5,
/* 14 Mission Radius */      0,
/* 15 Mission SQF */         nil,
/* 16 Loot Box */            nil
];

EZM_Trigger_4 = [				 //No Buildings
/* 0  Use this trigger */    True,
/* 1  Trigger Positions */   EZM_Level_1_Locations,
/* 2  Max Zombies */         25,
/* 3  Activation Delay */    7,
/* 4  Spawn Delay */         12,
/* 5  Respawn Delay */       90,
/* 6  Show Trigger On Map */ false,
/* 7  Marker Color */        "ColorRed",
/* 8  MarkerBrush */         "Solid",
/* 9  Marker Alpha */        0.1,
/* 10 Marker Text */         "",
/* 11 Vest group */          EZM_Basic,
/* 12 Loot group */          EZM_Level_1_Loot,
/* 13 Zombie group */        EZM_Level_1,
/* 14 Mission Radius */      0,
/* 15 Mission SQF */         nil,
/* 16 Loot Box */            nil
];

EZM_Trigger_5 = [				 //No Man Land
/* 0  Use this trigger */    True,
/* 1  Trigger Positions */   EZM_NoMansLand,
/* 2  Max Zombies */         35,
/* 3  Activation Delay */    7,
/* 4  Spawn Delay */         12,
/* 5  Respawn Delay */       40,
/* 6  Show Trigger On Map */ false,
/* 7  Marker Color */        "ColorRed",
/* 8  MarkerBrush */         "Solid",
/* 9  Marker Alpha */        0.4,
/* 10 Marker Text */         "",
/* 11 Vest group */          EZM_Basic,
/* 12 Loot group */          EZM_Level_4_Loot,
/* 13 Zombie group */        EZM_Level_4,
/* 14 Mission Radius */      0,
/* 15 Mission SQF */         nil,
/* 16 Loot Box */            nil
];

EZM_Trigger_6 = [				 //Mission Trigger
/* 0  Use this trigger */    True,
/* 1  Trigger Positions */   EZM_Mission,
/* 2  Max Zombies */         15,
/* 3  Activation Delay */    5,
/* 4  Spawn Delay */         7,
/* 5  Respawn Delay */       30,
/* 6  Show Trigger On Map */ true,
/* 7  Marker Color */        "ColorRed",
/* 8  MarkerBrush */         "Solid",
/* 9  Marker Alpha */        0.6,
/* 10 Marker Text */         "DEAD ZONE",
/* 11 Vest group */          EZM_Basic,
/* 12 Loot group */          EZM_Level_4_Loot,
/* 13 Zombie group */        EZM_Level_6,
/* 14 Mission Radius */      1100,
/* 15 Mission SQF */         EZM_triggerMission,
/* 16 Loot Box */            EZM_triggerLootCrate
];

// List all the trigger group to use here.
EZM_Triggers = [EZM_Trigger_1,EZM_Trigger_2,EZM_Trigger_3,EZM_Trigger_4,EZM_Trigger_5,EZM_Trigger_6];

// Check Config Compiled
EZM_SettingsCompiledOkay				= true;
