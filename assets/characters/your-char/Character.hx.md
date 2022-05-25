# Character.hx documentation

## What is Character.hx ?

Character.hx is the script for YoshiCrafter Engine character. Since it is a script, it inherits methods and functions from the [YoshiCrafter Engine script system](../../../scripting/Script.md).

## Global Variables

---
```haxe
// The Character sprite. Available everywhere.
var character:Character;
```
```haxe
// The Character's name.
var curCharacter:String;
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
// Fired whenever an animation is going to play.
function onAnim(animationName:String) {
    return true; // To block the animation
}
```
```haxe
// Fired whenever colors are needed. Needs to return an array of Integers that should represent colors.
function getColors(altAnim:Bool) {
    return [
        0xFF000000, // Health Bar color
        0xFF888888, // Left Arrow Color
        0xFFFFFFFF, // Down Arrow Color
        0xFFFFFFFF, // Up Arrow Color
        0xFF888888, // Right Arrow Color
    ]
}
```