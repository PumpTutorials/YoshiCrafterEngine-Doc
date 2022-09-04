# Lua Scripting Documentation

## __⚠ Warning ⚠__

The Lua system is still in a early state, which means it may miss some useful functions.

If you want a function to be added, put it in the `#⚙│lua-funcs-requests` channel on the [Discord Server](https://discord.gg/Ds48wGPx4W)

---
## __How does LUA scripts works?__

Lua scripts are scripts created using the LUA programming language.

Majority of interactions with the game are made via **callbacks** (such as `setField`)

For example, this script will set the player's maximum health to 5:

```lua
function createPost()
    setField("maxHealth", 5)
end
```

While being easier than HScript, it may show some limitations. Lua is mainly used for interacting with flixel, and doing more advanced stuff such as sending requests will require a more complex script.

## __Lua documentation__

### __Global documentation__
- [**Basics**](lua/Basics.md) - Functions that are the core of the YoshiCrafter Engine lua support, such as `setField`, `call` and `getField`.
- [**Game related**](lua/GameRelated.md) - Functions that are more specific to the game itself, such as `createSprite` and `addAnimationByPrefix`.
- [**Haxe Helper**](lua/HaxeHelper.md) - Functions that are related to the Haxe helper, which allows you to run HScript code directly in your lua scripts, with methods such as `executeHaxe` and `addHaxeCallback`.

### __Specific documentation__
- [**PlayState**](lua/PlayState.md) - Functions that are only available in PlayState scripts (aka modcharts), such as `addCameraZoom` and `getStrum`.