/*
 * Self-explanatory. Is called during the creation process of PlayState.
 */
function create() {}

/*
 * Called every frame
 * elapsed: The time between last frame and this frame (in seconds)
 */
function update(elapsed:Float) {}
/*
 * Used to create sprites that appears in front of Boyfriend, Girlfriend and the Opponent.
 */
function createInFront() {}

/*
 * Called on each step.
 */
function stepHit(curStep:Int) {}

/*
 * Called on each beat.
 */
function beatHit(curBeat:Int) {}

/*
 * Called at the end of the create function.
 */
function createPost() {}
function postCreate() {}

/*
 * Called during countdown.
 * id: The number of the countdown (3, 2, 1, 0 (= GO));
 */
function onCountdown() {
    //Conductor.songPosition = 0; // skip countdown
    //return false; // cancel default behaviour
}

/*
 * Called before the countdown begins.
 */
function onStartCountdown() {}

/*
 * Called after the players and opponent strums has been created.
 */
function onStrums() {}
function onGenerateStaticArrows() {}


/*
 * Called whenever the UI elements appears (health bar, timer, etc...)
 */
function onGuiPopup() {}


/*
 * Called before the song starts.
 */
function onPreSongStart() {}

/*
 * Called whenever an event is hit
 * eventName: The name of the function that has been called
 * eventParameters: The parameters of the function that has been called
 */
function onEvent(eventName:String, eventParameters:Array<String>) {}

/*
 * Called after the song starts.
 */
 function musicStart() {}
 function onSongStart() {}

/*
 * Whenever a substate is going to be opened (ex: Pause Menu)
 */
function onOpenSubstate(subState:FlxSubState) {
    // return false; // prevent the substate from being opened
}

/*
 * Whenever the game gains focus
 */
function onFocus() {}

/*
 * After the game gains focus
 */
function onFocusPost() {}

/*
 * Whenever the game loses focus
 */
function onFocusLost() {}

/*
 * After the game loses focus
 */
function onFocusLostPost() {}

/*
 * Whenever the vocals resyncs
 */
function onResyncVocals() {}

/*
 * After the vocals resyncs
 */
function onResyncVocalsPost() {}

/*
 * Called whenever a new strum arrow is created
 * (to fully customise those, check the note types documentation)
 * babyArrow : The strum sprite
 * i : The id of the strum (from 0 to the number of keys)
 * player : The id of the player (0 = Opponent, 1 = Player)
 */ 
function onGenerateStaticArrow(babyArrow:StrumNote, i:Int, player:Int) {}

/*
 * Whenever Widescreen is triggered on or off.
 * enable: Whenever the widescreen mode is on or off.
 */
function onWidescreen(enable:Bool) {}

/*
 * Whenever showKeys is pressed
 * labels: Contains every single label that appeared above the strums.
 */
function onShowKeys(labels:Array<FlxText>) {}

/*
 * Called before the game updates
 * elapsed: Time elapsed between this frame and last frame (in seconds)
 */
function preUpdate(elapsed:Float) {}

/*
 * Called after the game updates
 * elapsed: Time elapsed between this frame and last frame (in seconds)
 */
function updatePost(elapsed:Float) {}

/*
 * Called before the song ends
 */
function onPreEndSong() {}

/*
 * Called after the song ends and a cutscene starts
 */
function onPostEndSong() {}

/*
 * Called before the Discord Presence updates
 */
function onPreUpdatePresence() {}

/*
 * Called after the Discord Presence updates
 */
function onUpdatePresence() {}

/*
 * Called before the health icons updates
 */
function onHealthUpdate() {
    //return false; // prevent default health icon update
}

/*
 * Called before the timer updates
 */
function onPreTimerUpdate() {}

/*
 * Called after the timer updates
 */
function onTimerUpdate() {}

/*
 * Called whenever the reset button is pressed
 */
function onResetButton() {}

/*
 * Called whenever the cheat button is pressed (which is impossible but)
 */
function onCheatButton() {}

/*
 * Called before BF dies
 */
function onPreDeath() {}

/*
 * Called while BF dies
 */
function onDeath() {}

/*
 * Called after BF dies
 */
function onPostDeath() {}

/*
 * Called during note update
 * note: the note being updated
 */
function onNoteUpdate(note:Note) {}

/*
 * Called after note update
 * note: the note being updated
 */
function onNoteUpdatePost(note:Note) {}

/*
 * Called whenever the player hits a note
 */
function onPlayerHit(note:Note) {}

/*
 * Called whenever the opponent hits a note
 * note: the note that the opponent hit
 */
function onDadHit(note:Note) {}

/*
 * Called whenever the player misses
 */
function onMiss(note:Note) {}

/*
 * On each input system update
 * You can alter the arrays to alter the input system.
 * 
 * pressedArray: Keybinds that are being pressed
 * justPressedArray: Keybinds that got pressed
 * justReleasedArray: Keybinds that got released
 */
function onKeyShit(pressedArray:Array<Bool>, justPressedArray:Array<Bool>, justReleasedArray:Array<Bool>) {}

/*
 * Called after input system update
 */
function onPostKeyShit() {}
function onKeyShitPost() {}

/*
 * Called whenever the opponent misses
 */
function onDadMiss(note:Note) {}

/*
 * Called whenever the opponent misses
 * combo: The current combo
 * coolText: Used for offsetting
 */
function onShowCombo(combo:Int, coolText:FlxText) {}

/*
 * Whenever the state is closing/is getting destroyed.
 * Mainly used to cleanup.
 */
function onDestroy() {}
function destroy() {}