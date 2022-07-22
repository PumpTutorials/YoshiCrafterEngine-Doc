# Script Documentation
## __Character Scripts__

## How do i create one?

To create a new character (without character editor)
- Go to the Toolbox and click "Open Folder"
- Navigate to "mods/Your Mod"

Then, open the "characters" folder and create a new folder for your character.

Inside that folder, create a new file: `Character.hx`.

## How do i code on a Character Editor character?

To softcode things into your freshly created character, go to "mods/Your Mod/characters/your-char/", and the `Character.hx` should be there.
It loads the JSON by default, but you can of course alter it.

## Callbacks

Self-explanatory. Called on character creation.
```haxe
function create() {}
```
---
Called whenever the healthIcon value is set. It is automatically set by PlayState after character creation.
- `icon`: Health Icon
```haxe
function healthIcon(icon:HealthIcon) {}
```
---
Called whenever the character colors are needed. It needs to return a list of colors.
- `altAnim`: Whenever its using alt animation or not
```haxe
function getColors(altAnim:Bool) {
    return [
        0xFFFF0000, // health icon color
        0xFFFF0000, // left note color
        0xFF00FF00, // down note color
        0xFF0044FF, // up note color
        0xFFFFFF00  // right note color
    ]
}
```
---
Called every frame during character update.
- `elapsed`: Time elapsed between last frame and current one
```haxe
function update(elapsed:Float) {}
```
---
Called whenever the character is going to do their dance animation. Override it with this function.

Note: danceLeft and danceRight are automatically supported
```haxe
function dance() {}
```
---
Called whenever an animation is going to be played.
- `animName`: Name of the animation (`idle`, `singUP`, etc... NOT the xml animation name)
```haxe
function onAnim(animName:String) {}
```

## Available Variables
- `curCharacter:String` - Name of the character
- `character:Character` - Character Sprite
- `mod:String` - Current mod
- `global:Map<String, Dynamic>` - Global map shared between every scripts
- `EngineSettings:Dynamic` - All Engine Settings
- `super:Dynamic` - All original non overriden callbacks
- `save:FlxSave` - A save file for your mod

- `animOffsets:Map<String, Array<Float>>` - Animation offsets ([x, y], use addOffset to add one)
- `cameraOffsets:Map<String, Array<Float>>` - Camera offsets ([x, y], use addCameraOffset to add one)
- `charGlobalOffset:FlxPoint` - Character offset (must be set during create)
- `camOffset:FlxPoint` - Character Camera offset
- `isPlayer:Bool` - Whenever its a player or not
- `json:CharacterJSON` - Character JSON data (may be equal to null if no json is used)
- `psychJson:PsychCharacter` - Psych Engine Character data (use loadPsychJSON to load it)
- `healthIcon:HealthIcon` - Characters health icon (may be equal to null)
- `characterScript:Script` - This current script
- `dadVar:Float` - Length of singing animation in steps
- `lastNoteHitTime:Float` - Last note hit time
- `unknownAnimsAlerted:Array<String>` - Last note hit time

## Available Methods
---
Adds an offset
- `AnimName`: Name of the animation (not the one on the XML)
- `x`: Offset's X position
- `y`: Offset's Y position
```haxe
function addOffset(AnimName:String, x:Float, y:Float)
```
---
Adds a camera offset
- `AnimName`: Name of the animation (not the one on the XML)
- `x`: Offset's X position
- `y`: Offset's Y position
```haxe
function addCameraOffset(AnimName:String, x:Float, y:Float)
```
---
Plays an animation
- `AnimName`: Name of the animation (not the one on the XML)
- `Force`: Whenever the animation should be forced
- `Reversed`: Whenever the animation should be reversed
- `Frame`: At which frame should the animation start
```haxe
function playAnim(AnimName:String, Force:Bool = false, Reversed:Bool = false, Frame:Int = 0)
```
---
Gets animation name
```haxe
function getAnimName()
```
---
Loads a Character JSON
- `overrideFuncs`: Whenever it should override declared callbacks such as `dance`
```haxe
function loadJSON(overrideFuncs:Bool)
```
---
Loads a Psych Engine JSON
- `overrideFuncs`: Whenever it should override declared callbacks such as `dance`
```haxe
function loadPsychJSON(overrideFuncs:Bool)
```