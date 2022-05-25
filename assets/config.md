# Config.json Documentation

## What is Config.json ?

Config.json allows you to set your mod's info such as the Name, Description, Titlebar name, and many other stuff.

## How does it works?

```json
{
    // Text that will be shown in the title bar when the mod is being played
	"titleBarName": "Friday Night Funkin' - Mod Name",

    // Mod Introduction text replacement.
	"intro": {

        // Authors names
		"authors": [
			"ninjamuffin99",
			"phantomArcade",
			"kawaisprite",
			"evilsk8er"
		],

        // Name of the game. Can be changed to whatever you want.
		"gameName": [
			"Friday Night Funkin'",
			"YoshiCrafter",
			"Engine"
		],

        // Newgrounds text
		"newgrounds": "newgrounds",

        // Intro BPM
		"bpm": 102,

        // In association with text
		"assoc": [
			"In association",
			"with"
		],

        // "Present" text, shown after the authors
		"present": "present"
	},

    // Unused for now
	"skinnableBFs": [],

    // Unused for now
	"skinnableGFs": [],

    // Skinnable GFs list. 
	"GFskins": ["custom-gf"],

    // Key Numbers. If you add key numbers here, it'll show in the "Keybinds" menu.
	"keyNumbers": [
		4
	],
    
    // Skinnable BFs list. 
	"BFskins": [],
    
    // Mod name. 
	"name": "New Mod",
    
    // Whenever the mod is locked or not. If its locked, Developer Features will be disabled when this mod is selected.
	"locked": false,
    
    // Mod description
	"description": "Your Mod"
}```