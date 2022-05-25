## `MainMenuState`
##### extends `MusicBeatState`

## Variables
```haxe
// Current Script
var mainMenuScript:Script;
```
```haxe
// Currently Selected Menu Option
var curSelected:Int = 0;
```
```haxe
// Menu Items
var menuItems:FlxTypedGroup<FlxSprite>;
```
```haxe
/**
 *   Menu Items
 *   Use "state.option.add("My Option", function() {}, Paths.getSparrowAtlas('image'), 'my option basic', 'my option white')"
 **/
var option:MenuOptions = new MenuOptions();
```