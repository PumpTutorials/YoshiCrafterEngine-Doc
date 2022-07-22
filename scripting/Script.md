# Script Documentation
## __How does scripts works?__

Scripts are text files containing code that will be run by the engine. The main language is Haxe (HScript).
While some engines may have simple HScript support, YoshiCrafter Engine uses a fork of hscript that allows further scripting possibilities.
You can either check the **Specific documentation** or **How does it works** categories.

## Specific documentation
- [Song Scripts](SongScripts.md)
- [Characters Scripts](CharacterScript.md)
- [Shaders](Shaders.md)

## How does it works?
In scripts, you can add callbacks to functions this way:
```haxe
function create() {
    // function code
}
```

Some callbacks also have additional parameters, as shown below for the `update` callback.
```haxe
function update(elapsed:Float) {

}
```
There's various parameters types, for example, the most common ones in the Haxe programming language are:
- `Int`: Whole Number (no decimals)
- `Float`: Decimal Numbers
- `String`: Chain of characters (ex: `"Hello, World!"`)

On YoshiCrafter Engine, the following types can also be found:
- `FlxSprite`: Flixel sprite
- `Note`: Note sprite (check specific doc)
- `StrumNote`: Strum note (gray notes at the top of the screen)

You can also import classes in case the class you're looking for doesn't exist.
For example, if you want to use FlxBasic but it throws an "Unknown Variable" error, add this to the top of your file:

```haxe
import flixel.FlxBasic;
```

Import will allow you to import any classes of your choice. Enums can also be imported, which values will be available under `EnumName.VALUE`.

In case you've overriden a callback but still want to get the default behaviour, you can call the same callback name you've used in the `super` variable.

For example, if you're making a note type:
```haxe
function create() {
    super.create();
    note.scale.set(1, 1);    
}
```

Please note that the super function will require the same variables that are passed in your callback.

For example:

```haxe
function update(elapsed:Float) {
    super.update(elapsed);
    note.angle += 90 * elapsed;
}
```

## How do i check if it works?

To check if it works, copy and paste this in the file:

```haxe
function create() {
    trace("Hello, World!");
}
```

Then reload the song on which you've put the script. Press F6, and "Hello, World!" should be traced.

## How do i check if an error occured?

To check if an error occured, on the top left below the FPS and Memory counter, there should be an "Errors" counter. If its here, then something happened in your script.
You can now press F6 to see what happened.