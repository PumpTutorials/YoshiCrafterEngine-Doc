# MainMenuState.hx documentation

## What is MainMenuState.hx ?

MainMenuState.hx is a script that allows you to edit the main menu. Since it is a script, it inherits methods and functions from the [YoshiCrafter Engine script system](../../scripting/Script.md).

## Global Variables

---
```haxe
// The current state
var state:MainMenuState;
```

## Events

---
```haxe
// Called at the creation of the state.
function create() {}
```
```haxe
// Called at the end of creation of the state.
function createPost() {}
```
```haxe
// Called on every frame.
function update(elapsed:Float) {}
```
```haxe
// Called at the end of every frame.
function updatePost(elapsed:Float) {}
```
```haxe
// Called when a menu option is selected.
function onSelect(option:MenuOption) {}
```
```haxe
// Called when the menu select transition ended.
function onSelectEnd(option:MenuOption) {}
```
```haxe
// Called every beat.
function beatHit(curBeat:Int) {}
```
```haxe
// Called every step.
function stepHit(curStep:Int) {}
```