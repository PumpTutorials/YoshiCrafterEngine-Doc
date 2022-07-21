# Script Documentation
## __Song Scripts__

## How do i create one?

To create a new script for your song,
- Go to mods/Your Mod/data/Your Song/ and create a new file (must end up with `.hx` or `.lua`, NOT `.txt`)
- Open the song in the engine, open the Pause Menu, choose Developer Options and select "Open Charts Folder", then create the script here
- Create a script anywhere you want in your mod, and add it via the "Edit Song Scripts" button in the charter.

## Callbacks

Here's an entire "file" with every single callback, along with its use.

You can download it [here](SongScript.hx).

## Available Variables
- `PlayState:PlayState` - Current state
- `PlayState_:Class<PlayState>` - PlayState itself (not an instance of it)
- `currentSustains:Array<SustainHit>` - Current pressed sustains
- `vars:Map<String, Dynamic>` - Alternative to `global`
- `ratings:Array<Rating>` - All ratings
- `splashes:Map<String, Array<Splash>>` - Current Splashes (id is sprite asset name)
- `hits:Map<String, Int>` - Numbers of hits, where the key is the rating itself.
- `song:SwagSong` - Current Chart object
- `antimash:Bool` - Whenever antimash is enabled or not
- `antimashHealth:Float` - Health removed while user mashes
- `validScore:Bool` - Whenever the score will be saved or not (disabled when charting, or using botplay)
- `vocals:FlxSound` - Vocals themselves
- `inst:FlxSound` - Instrumental itself
- `section:SwagSection` - Current section (may be equal to `null`)
- `songPercentPos:Float` - Song progression in a range from 0 to 1
- `dads:Array<Character>` - All opponents that'll sing
- `boyfriends:Array<Character>` - All players that'll sing
- `gf:Character` - Girlfriend
- `dad:Character` - Opponent
- `boyfriend:Character` - Boyfriend
- `notes:FlxTypedGroup<Note>` - Group containing all of the spawned notes
- `events:Array<SongEvent>` - All events that haven't been fired yet
- `unspawnNotes:Array<Note>` - All notes that haven't been spawned yet
- `strumLine:Array<Note>` - Sprite reference
- `curSection:Int` - Current section
- `camFollow:FlxObject` - Current camera follow position
- `camFollowHud:FlxObject` - Current camera follow position on the hud (change the position to move the camHUD)
- `camFollowLerp:Float` - Lerp of the main camera on 60 fps.
- `strumLineNotes:FlxTypedGroup<FlxSprite>` - All strums
- `playerStrums:FlxTypedGroup<FlxSprite>` - Players strums
- `cpuStrums:FlxTypedGroup<FlxSprite>` - CPU strums
- `camZooming:Bool` - Whenever the cam is zooming or not on beat. Resets back to `true` when someone sings
- `autoCamZooming:Bool` - Whenever the camera is zooming or not on beat.
- `devStage:String` - Path to the current stage (for dev mode)
- `gfSpeed:Int` - Interval between Girlfriend dance beats.
- `health:Float` - Health. Ranges from 0 to `maxHealth` (2 by default)
- `maxHealth:Float` - Maximum Health. Set to 0 to make the song OHKO.
- `tapMissHealth:Float` - Health loss when pressing randomly while ghost tapping is turned off.
- `canDie:Bool` - Whenever you can die on this song or not
- `combo:Int` - Current combo
- `healthBarBG:FlxSprite` - Health Bar Background
- `healthBar:FlxBar` - Health Bar itself
- `popupArrows:Bool` - Whenever the strums should do the popup animation.
- `iconGroup:FlxTypedGroup<HealthIcon>` - Group containing all icons (to add one, do `add(new HealthIcon("char", isPlayer));`)
- `iconP1:HealthIcon` - Boyfriend's icon.
- `iconP2:HealthIcon` - Opponent's icon.
- `camHUD:FlxCamera` - Camera for the HUD/GUI
- `autoCamPos:Bool` - Whenever the camera should automatically be replaced to focus on the characters.
- `songScore:Int` - Current score
- `scoreTxt:FlxText` - Score Bar containing the Score, Accuracy, Misses
- `watermark:FlxText` - YoshiCrafter Engine watermark at the top right of the screen (may be equal to null)
- `scoreWarning:FlxText` - Little warning that flashes at the bottom right of the screen (may be equal to null).
- `scoreWarningAlphaRot:Float` - Alpha rotation of the score warning.
- `defaultCamZoom:Float` - Default camera zoom
- `defaultHudZoom:Float` - Default HUD/GUI zoom
- `inCutscene:Bool` - Whenever a cutscene is going on or not
- `paused:Bool` - Whenever the game is paused
- `startedCountdown:Bool` - Whenever the countdown started or not
- `canPause:Bool` - Whenever the game can be paused or not
- `accuracy_:Float` - Current accuracy on a range of 0 to 1
- `numberOfNotes:Int` - Number of pressed notes (for accuracy calculations)
- `numberOfArrowNotes:Int` - Number of non-sustain pressed notes (for accuracy calculations)
- `misses:Int` - Number of misses/combo breaks
- `isWidescreen:Bool` - Whenever the game runs on widescreen or not
- `hitCounter:FlxText` - The hit counter at the right of the screen (may be equal to null)
- `msScoreLabel:AlphabetOptimized` - The little text that shows your delay whenever you press a note
- `msScoreLabelTween:FlxTween` - The current tween of the score label
- `songAltName:String` - Songs alternative name
- `startTimer:FlxTimer` - Timer used for countdown
- `engineSettings:Dynamic` - Engine Settings
- `endCutscene:Bool` - Whenever the end cutscene is playing. `inCutscene` needs to be set to true as well
- `blockPlayerInput:Bool` - Whenever the players input is blocked or not.
- `forceCutscenes:Bool` - Whenever the cutscenes should be forced into Freeplay.
- `guiSize:FlxPoint` - Gui Size.
- `noteScripts:Array<Script>` - All scripts for notes
- `p2isGF:Bool` - All scripts for notes
- `actualModConfig:ModConfig` - Current mod's song configuration
- `guiElemsPopped:Bool` - Whenever the HUD/GUI elements appeared or not.
- `timerBG:FlxSprite` - Timer's background
- `timerBar:FlxBar` - Timer Bar
- `timerText:FlxText` - Timer Text where the name of the song or "/" is shown
- `timerNow:FlxText` - Current time on timer
- `timerFinal:FlxText` - Song length (also affects Discord RPC)



- `mod:String` - Current mod
- `global:Map<String, Dynamic>` - Global map shared between every scripts
- `EngineSettings:Dynamic` - All Engine Settings
- `gfVersion:String` - Current Girlfriend version. Needs to be set before `create` (outside of callbacks) for it to take effect
- `botplay:Bool` - Whenever botplay is enabled
- `super:Dynamic` - All original non overriden callbacks
- `save:FlxSave` - A save file for your mod