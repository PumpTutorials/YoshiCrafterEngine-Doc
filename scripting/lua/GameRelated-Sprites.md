# Lua Scripting Documentation
## __Game Related Documentation - Sprites__

Methods location in source code: `LuaFuncs.hx`

---
## **`createSprite`**
```haxe
function createSprite(name:String, x:Float, y:Float, spritePath:String, isGridSprite:Bool, width:Int, height:Int)
```
##### Note: not all parameters are required

Creates a new sprite named `name` with a position of `x`,`y` which loads the bitmap (or sparrow atlas) at `spritePath`. If `isGridSprite` is true, the bitmap (if not sparrow), will be interpreted as a grid (like the icons) with cells that are `width` pixels wide and `height` pixels tall.

### Example usage:
```lua
function create()
    createSprite("bg", 0, 0, "stages/my-stage/bg")
    addSprite("bg")
end
```

---
## **`getSpriteInfo`**
```haxe
function getSpriteInfo(name:String)
```

Returns a table with sprite information, such as its position, scale, angle...

You can edit the properties, then call `applySpriteInfo(table)` to apply them back to the sprite.

If the sprite `name` does not exists, `nil` is returned.

### Example usage:
```lua
function createPost()
    local info = getSpriteInfo("boyfriend")
    info.x = info.x + 250
    info.y = info.y + 250
    info.scale = 2
    applySpriteInfo(info)
end
```

---
## **`applySpriteInfo`**
```haxe
function applySpriteInfo(info:Table)
function applySpriteInfo(info:Table, name:String)
```

Applies modified sprite information. If `name` is not `nil`, the sprite information will be applied to this sprite instead.

### Example usage:
```lua
function createPost()
    local info = getSpriteInfo("boyfriend")
    info.x = info.x + 250
    info.y = info.y + 250
    info.scale = 2
    applySpriteInfo(info)
end
```

---
## **`getSprite`**
```haxe
function getSprite(name:String, varName:String)
```

Finds a sprite named `name` (ex: from the stage) and stores it in the variables as `varName`.

### Example usage:
```lua
getSprite("stage_item", "bg")
setSpritePosition("stage_item", 150, 150)
```

---
## **`getSpriteX`**
```haxe
function getSpriteX(name:String)
```

Return sprite's X position if found, or 0 if not.

### Example usage:
```lua
local x = getSpriteX("boyfriend")
```

---
## **`getSpriteY`**
```haxe
function getSpriteY(name:String)
```

Return sprite's Y position if found, or 0 if not.

### Example usage:
```lua
local y = getSpriteY("boyfriend")
```

---
## **`getSpriteAngle`**
```haxe
function getSpriteAngle(name:String)
```

Return sprite's angle if found, or 0 if not.

### Example usage:
```lua
local angle = getSpriteAngle("boyfriend")
```

---
## **`getSpriteAngle`**
```haxe
function getSpriteAngle(name:String)
```

Return sprite's angle if found, or 0 if not.

### Example usage:
```lua
local angle = getSpriteAngle("boyfriend")
```

---
## **`setSpriteAngle`**
```haxe
function setSpriteAngle(name:String, angle:Float)
```

Sets a sprite's angle. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
setSpriteAngle("boyfriend", 45)
```

---
## **`getSpriteAlpha`**
```haxe
function getSpriteAlpha(name:String)
```

Gets a sprite alpha. If the sprite isn't found, returns -1.

### Example usage:
```lua
local alpha = getSpriteAlpha("boyfriend")
```

---
## **`setSpriteAlpha`**
```haxe
function setSpriteAlpha(name:String, alpha:Float)
```

Sets a sprite's alpha. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
setSpriteAlpha("boyfriend", 0.5)
```

---
## **`getSpriteScale`**
```haxe
function getSpriteScale(name:String)
```

Gets a sprites scale. If the sprite isn't found, returns -1.

### Example usage:
```lua
local scale = getSpriteScale("boyfriend")
```

---
## **`setSpriteScale`**
```haxe
function setSpriteScale(name:String, scale:Float)
```

Sets a sprite's scale. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
setSpriteScale("boyfriend", 0.5)
```

---
## **`getSpriteScaleX`**
```haxe
function getSpriteScaleX(name:String)
```

Gets a sprites X scale. If the sprite isn't found, returns -1.

### Example usage:
```lua
local scale = getSpriteScaleX("boyfriend")
```

---
## **`setSpriteScaleX`**
```haxe
function setSpriteScaleX(name:String, scale:Float)
```

Sets a sprite's X scale. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
setSpriteScaleX("boyfriend", 0.5)
```

---
## **`getSpriteScaleY`**
```haxe
function getSpriteScaleY(name:String)
```

Gets a sprites Y scale. If the sprite isn't found, returns -1.

### Example usage:
```lua
local scale = getSpriteScaleY("boyfriend")
```

---
## **`setSpriteScaleY`**
```haxe
function setSpriteScaleY(name:String, scale:Float)
```

Sets a sprite's Y scale. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
setSpriteScaleY("boyfriend", 150)
```

---
## **`getSpriteOffsetX`**
```haxe
function getSpriteOffsetX(name:String)
```

Gets a sprites X offset. If the sprite isn't found, returns -1.

### Example usage:
```lua
local offset = getSpriteOffsetX("boyfriend")
```

---
## **`setSpriteOffsetX`**
```haxe
function setSpriteOffsetX(name:String, offset:Float)
```

Sets a sprite's X offset. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
setSpriteOffsetX("mySprite", 150)
```

---
## **`getSpriteOffsetY`**
```haxe
function getSpriteOffsetY(name:String)
```

Gets a sprites Y offset. If the sprite isn't found, returns -1.

### Example usage:
```lua
local offset = getSpriteOffsetY("boyfriend")
```

---
## **`setSpriteOffsetY`**
```haxe
function setSpriteOffsetY(name:String, offset:Float)
```

Sets a sprite's Y offset. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
setSpriteOffsetY("mySprite", 150)
```

---
## **`setSpriteOffset`**
```haxe
function setSpriteOffset(name:String, offsetX:Float, offsetY:Float)
```

Sets a sprite's offset. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
setSpriteOffsetY("mySprite", 150, 150)
```

---
## **`setSpriteGraphicSize`**
```haxe
function setSpriteGraphicSize(name:String, width:Int, height:Int, updateHitbox:Bool = true)
```

Sets a sprite's graphic size. Returns `true` if successful, returns `false` otherwise.

If `updateHitbox` is true, the sprite's hitbox will be automatically updated.

### Example usage:
```lua
setSpriteGraphicSize("mySprite", 1280, 720)
```

---
## **``**
```haxe
function updateSpriteHitbox(name:String)
```

Updates a sprite's hitbox. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
updateSpriteHitbox("mySprite")
```

---
## **``**
```haxe
function getSpriteAntialiasing(name:String)
```

Gets a boolean (`true` / `false`) that says whenever the sprite uses antialiasing or not. If the sprite doesnt exists, it returns `nil`.

### Example usage:
```lua
if getSpriteAntialiasing("mySprite") then
    -- do stuff here
end
```

---
## **``**
```haxe
function setSpriteAntialiasing(name:String, aa:Bool)
```

Sets whenever a sprite uses antialiasing or not. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
setSpriteAntialiasing("mySprite", false) -- for pixel stages
```

---
## **``**
```haxe
function ()
```

Sets a sprite's offset. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua

```