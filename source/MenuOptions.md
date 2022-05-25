# `MenuOptions`

## Variables
---
```haxe
// All menu options
var members:Array<MenuOption>;
```
```haxe
// Number of menu options
var length:Int;
```

## Methods
---
```haxe
/**
 * Adds a new option
 
 name       Name of the option
 onSelect   Callback when the option is selected
 frames     Frames for the option. Use "Paths.getSparrowAtlas" to get the frames.
 idle       Name of the animation when the menu option isnt selected.
 **/
function add(name:String, onSelect:Void->Void, frames:FlxAtlasFrames, idle:String, selected:String);
```
```haxe
/**
 * Removes an option
 
 name       Name of the option
 **/
function remove(name:String);
```
```haxe
/**
 * Adds a new option
 
 index      At which position the option should be added
 name       Name of the option
 onSelect   Callback when the option is selected
 frames     Frames for the option. Use "Paths.getSparrowAtlas" to get the frames.
 idle       Name of the animation when the menu option isnt selected.
 **/
function insert(index:Int, name:String, onSelect:Void->Void, frames:FlxAtlasFrames, idle:String, selected:String);
```