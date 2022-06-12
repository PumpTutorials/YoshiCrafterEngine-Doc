# Scripting Base

## Script Events

The YoshiCrafter Engine Scripting system comes with a lot of events for you to toy around. These events can be intercepted by adding a function with the exact name. Some events also send arguments, such as `elapsed` for `update()`, which gives you the elapsed time between the last frame and the current frame.

All of the functions are triggered per scripts in this order:
- Song Configuration Scripts.
    - Same order as in `song_conf.json`
- Scripts in the `data/your song/` folder.

Below is a list of all events that can be triggered in song scripts.

---
```haxe
// Triggered on creation. Useful for creating stage elements
function create() {

}
```
---
```haxe
// Triggered on creation after Boyfriend, Girlfriend and the Opponent has been added. Useful for adding sprites in front of the characters.
function createInFront() {

}
```
---
```haxe
// Triggered at the very end of the state creation process.
function createPost() {

}
```
---
```haxe
// Called at the very beginning of the frame update. Elapsed is the time between the last frame and the current one, in seconds.
function preUpdate(elapsed:Float) {

}
```
---
```haxe
// Called during the frame update. Elapsed is the time between the last frame and the current one, in seconds.
function update(elapsed:Float) {

}
```
---
```haxe
// At the end of the frame update. Elapsed is the time between the last frame and the current one, in seconds.
function updatePost(elapsed:Float) {

}
```
---
```haxe
// Called every step, curStep being the current step. Does not fire at step 0.
function stepHit(curStep:Int) {

}
```
---
```haxe
// Called every beat, curBeat being the current step. Does not fire at beat 0.
function beatHit(curBeat:Int) {

}
```
---
```haxe
// Whenever Discord Presence is about to be updated.
function onPreUpdatePresence() {

}
```
---
```haxe
// Called right after Discord Presence has been updated. 
function onUpdatePresence() {

}
```
---
```haxe
// Called on every health icons update. Elapsed being the time between the last frame and the current one, in seconds.
function onHealthUpdate(elapsed:Float) {
    return false; // Icons will stop moving and bumping.
}
```
---
```haxe
// Called right before the timer bar will be updated. Elapsed being the time between the last frame and the current one, in seconds.
function onPreTimerUpdate(elapsed:Float) {

}
```
---
```haxe
// Called after the timer bar has been updated. Elapsed being the time between the last frame and the current one, in seconds.
function onTimerUpdate(elapsed:Float) {

}
```
---
```haxe
// Called for each note that is getting updated.
function onNoteUpdate(n:Note) {

}
```
---
```haxe
// Called for each note at the end of their update.
function onNoteUpdatePost(n:Note) {

}
```
---
```haxe
// Called everytime an event is fired.
function onEvent(funcName:String, arguments:Array<String>) {

}
```
---
```haxe
// Called everytime a Psych Engine event is fired.
function onPsychEvent(event:String, param1:String, param2:String) {

}
```
---
```haxe
// Called right before the song ends.
function onPreEndSong() {

}
```
---
```haxe
// Called whenever the combo is going to be shown.
// coolText is only here for repositionning.
function onShowCombo(combo:Int, coolText:FlxText) {
    return false; // To prevent default combo from showing up, and allowing you to make your own combo show system.
}
```
---
```haxe
// Called on every input frame.
// pressedArray is whenever the keybind is being held down
// justPressedArray is whenever the keybind is being just pressed at this frame.
// justReleasedArray is whenever the keybind is being released at this frame.
// Altering with these arrays is allowed, and can create cool stuff.
function onKeyShit(pressedArray:Array<Bool>, justPressedArray:Array<Bool>, justReleasedArray:Array<Bool>) {

}
```
---
```haxe
// Called at the end of the input frame.
function onKeyShitPost() {
    
}
```
---
```haxe
// Called right after the song ends.
function onPostEndSong() {

}
```
---
```haxe
// Called when the player misses a note.
function onMiss(n:Note) {
    
}
```
---
```haxe
// Called when the opponent presses a note.
function onDadHit(n:Note) {
    
}
```
---
```haxe
// Called when the player hits a note.
function onPlayerHit(n:Note) {

}
```
---
```haxe
// Triggered whenever the player has pressed the Reset Button.
function onResetButton() {

}
```
---
```haxe
// Triggered whenever the player has mysteriously found a way to press the hidden Cheat button.
function onCheatButton() {
    
}
```
---
```haxe
// Triggered after the player has mysteriously found a way to press the hidden Cheat button.
function onCheatButtonPost() {
    
}
```
---
```haxe
// Triggered before the player will get blueballed. If you want to prevent the player from dying, set PlayState.canDie to false.
function onPreDeath() {
    
}
```
---
```haxe
// While the player is getting blueballed, before the GameOverSubstate opens.
function onDeath() {
    
}
```
---
```haxe
// Called after the player has been blueballed.
function onPostDeath() {
    
}
```
---
```haxe
// Triggered whenever the GUI pops up when the song is about to start
function onGuiPopup() {

}
```
---
```haxe
// Triggered whenever the countdown is starting.
function onStartCountdown() {
    
}
```
---
```haxe
// Triggered after the creation of the strums. Aliases are "onGenerateStaticArrows"
function onStrums() {

}
```
---
```haxe
// Called on every countdown beat. The num parameter represent the state of the countdown. It goes from 3 -> 2 -> 1 -> 0, where 0 is equal to "Go!"
function onCountdown(num:Int) {
    if (num == 3) Conductor.songPosition = 0; // Do this to completly skip the countdown.
    return false; // Return false to cancel the default behavior.
}
```
---
```haxe
// Called right before the song starts to play.
function onPreSongStart() {

}
```
---
```haxe
// Called after the song started to play (after the countdown)
function onSongStart() {

}
```
---
```haxe
// Called whenever a static arrow is generated.
// babyArrow: Strum sprite.
// i: ID of the sprite (ranges from 0 to song.keyNumber (exclusive))
// player: The ID of the player. 0 = Opponent, 1 = Player
function onGenerateStaticArrow(babyArrow:StrumNote, i:Int, player:Int) {

}
```
---
```haxe
// Whenever a substate is about to be opened.
function onOpenSubstate(subState:FlxSubState) {
    return false; // Prevent substate from opening.
}
```
---
```haxe
// Whenever the game gains focus again, after the user switched to another window.
function onFocus() {

}
```
---
```haxe
// At the end of whenever the game gains focus again, after the user switched to another window.
function onFocusPost() {

}
```
---
```haxe
// Whenever the game loses focus, when the user switches to another window.
function onFocusLost() {

}
```
---
```haxe
// At the end of whenever the game loses focus, when the user switches to another window.
function onFocusLostPost() {
    
}
```
---
```haxe
// Triggered whenever the state is being destroyed (like switching back to main menu, or to another song in the week). Used to clean up stuff.
function destroy() {

}
```
---
```haxe
// Triggered whenever vocals are about to be resynced.
function onResyncVocals() {

}
```
---
```haxe
// Triggered after the vocals has been resynced.
function onResyncVocalsPost() {

}
```
---
```haxe
// Triggered whenever PlayState.showKeys() is called.
function onShowKeys(labels:Array<FlxText>) {

}
```
---
```haxe
// Triggered whenever widescreen is turned on/off.
function onWidescreen(enabled:Bool) {

}
```
---
```haxe
// Optional function used to do the same effect as when the script was created in very early versions of YoshiCrafter Engine.
function oldNew() {

}
```