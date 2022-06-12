# Scripting Base

## How to add a script?

To add a script, it's pretty simple.

Currently, there's multiple languages supported.

These are:
- HScript (Which is basically haxe, highly recommended) (`hx`, `hsc`, `hscript`)
- Lua (`lua`)

There are multiple ways to add a script in your mod. Both presenting their own advantages and inconvenients

## __The easy way__

To make a script using the easy way, go to your mods folder (if you dont know where it is, open the Toolbox, select your mod, click Edit and click Open Folder) go to `data/your song/`.

Here, make sure "Show file extensions" is checked. If you don't see file extensions or it is unchecked, follow [these instructions](EnableFileExt.md).

Create a new text file, then name it however you want. **Make sure the extension is one shown in the language list above, and not txt**, or else it won't be read. The extension given will result in the language used.

**Inconvenients**: You can't use the same script on different songs unless you copy it, which can cause duplicate scripts, and take up space, especially if your mod's code is large.
## __The old way__

For YoshiCrafter Engine < 2.0.0 users, you probably heard of the __Song Configuration__. The song configuration contains every information about your songs, and which scripts it should use. You can set the cutscene, the end cutscene, the scripts, and many other things.

To create a script via the old way, go to your mods folder, then create a script anywhere you want using the method described in the easy way.

Then, go back to the engine, select your song, go to the charter, select the "Song" tab, and click "Edit Song Scripts".

On the following screen, click "Add Script", then browse to your script, double click it, then press Save. The script will now be loaded for your song.

## __Testing it out__

Once you finished, if you want to test it out, open the file in Visual Studio Code (or any editor of your choice), then type:

`haxe`
```haxe
trace("Hello, World!");
```

`lua`
```lua
print("Hello, World!")
```

Go back to the engine, go to your song, then press F6 to show the logs. The "Hello, World!" text should appear in there, along with the file name and the line number.