# Titlescreen.hx documentation

## What is titlescreen.hx ?

titlescreen.hx is a script that allows you to add a custom title screen for your mod. Its loaded on the TitleState when your mod is selected. Since it is a script, it inherits methods and functions from the [YoshiCrafter Engine script system](../../scripting/Script.md).

## Global Variables

---
```haxe
// The Character sprite. Available everywhere.
var state:TitleState;
```

## Events

---
```haxe
// Fired whenever the character is created.
function create() {}
```
```haxe
// Fired whenever the character is doing its dance animation.
function dance() {}
```
```haxe
// Fired on each frame.
function update(elapsed:Float) {}
```
```haxe
// Fired on each beat.
function beatHit(curBeat:Int) {}
```
```haxe
// Fired on each step.
function stepHit(curStep:Int) {}
```

## Methods
---
```haxe
// Adds a sprite to the titlescreen.
function add(sprite:FlxBasic)
```