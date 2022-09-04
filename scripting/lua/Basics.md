# Lua Scripting Documentation
## __Basics__

Methods location in source code: `Script.hx`

---
## **`getField`**
```haxe
function getField(path:String, varName:String)

function getField(classPath:String, path:String, varName:String)

function getField(reference:RefVar, path:String, varName:String)
```
##### Can also be called via `get`, `getProperty`, `getValue`, `getVariable`, and others.

Looks for a field, and returns its value.

In case the value cannot be converted to lua, it'll be set to the `varName` variable, and a reference will be returned that'll be able to be used that way:
```lua
getField(reference, "y")
```

### Example usage:

```lua
function createPost()
    local x = getField("boyfriend.x") -- gets boyfriend's X position.

    local boyfriend = getField("boyfriend", "bf") -- gets boyfriend and store the result in the variables map as "bf"
    local y = getField(boyfriend, "y") -- gets boyfriend's Y position
end
```

---
## **`setField`**
```haxe
function getField(path:String, value:Any)

function getField(classPath:String, path:String, value:Any)

function getField(reference:RefVar, path:String, value:Any)
```
##### Can also be called via `set`, `setField`, `setValue`, `setVariable`, and others.

Looks for a field, and sets its value.

Returns `true` if successful, otherwise returns `false`.

### Example usage:

```lua
function createPost()
    setField("maxHealth", 5)
    setField("boyfriend.x", getField("boyfriend.x") + 150)
    setField("lime.app.Application", "current.window.title", "New window title!")
end
```

---
## **`createInstance`**
```haxe
function createInstance(varName:String, classPath:String, parameters:Array<Any>)
function createInstance(varName:String, classPath:String)
```
Creates a new instance of Haxe class `classPath` and add it in the variables map as `varName`.

Returns a reference to the new variable if successful, returns `nil` otherwise.

### Example usage:
```lua
function createPost()
    -- im out of ideas so simple flxsprite sorry guys
    createInstance("sprite", "flixel.FlxSprite", {0, 0, getImagePath("wall")})
end
```

---
## **`clearVariable`**
```haxe
function clearVariable(name:String)
```
Removes a variable from the variables map.

Returns `true` if successful, otherwise returns `false`.

### Example usage:

```lua
function createPost()
    local boyfriend = getField("boyfriend", "bf") -- gets boyfriend and store the result in the variables map as "bf"
    local y = getField(boyfriend, "y") -- gets boyfriend's Y position
    clearVariable("bf") -- removes boyfriend from the variables map
end
```