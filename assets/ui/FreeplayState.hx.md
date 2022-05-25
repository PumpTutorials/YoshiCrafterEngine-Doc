# FreeplayState.hx Documentation

## What is FreeplayState.hx ?

FreeplayState.hx is a script that allows you to edit the Freeplay Menu. Since it is a script, it inherits methods and functions from the [YoshiCrafter Engine script system](../../scripting/Script.md).

## Variables
---
```haxe
// Current state
var state:FreeplayState;
```
```haxe
// Song list
var songs:Array<SongMetadata>;
```

## Events
---
```haxe
// Fired when created
function create() {}
```
```haxe
// Fired when songs array is ready. Call "addSong" here.
function createSongs() {}
```
```haxe
// Fired when creation process is done.
function createPost() {}
```
```haxe
// Fired when the song is playing
function onSongPlay() {
    return false; // To cancel song playing
}
```
```haxe
// Fired at the very end after a song is played.
function onSongPlayPost() {}
```
```haxe
// Called every beat
function beatHit(curBeat:Int) {}
```
```haxe
// Called every step
function stepHit(curStep:Int) {}
```
```haxe
// Called every frame
function update(elapsed:Float) {}
```
```haxe
// Called at the end of every frame
function updatePost(elapsed:Float) {}
```
```haxe
// Called when the player tries to show advanced data.
function onShowAdvancedData() {
    return false; // To cancel the action
}
```
```haxe
// Called when the player selects a song.
function onSelect(song:SongMetadata) {
    return false; // To cancel the action and play the denied sfx.
}
```
```haxe
// Called when the player changes the selection
function onChangeSelection(curSelected:Int) {
    return false; // To cancel the action and play the denied sfx.
}
```
```haxe
// Called after the selection was changed.
function onChangeSelectionPost(curSelected:Int) {}
```

## Methods
---
```haxe
// Adds a song in the list.
function addSong(songName:String, modName:String, songCharacter:String, ?disabled:Bool = false);
```