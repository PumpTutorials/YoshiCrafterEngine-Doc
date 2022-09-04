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
## **`addSprite`**
```haxe
function addSprite(name:String)
```

Adds a sprite to the stage. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
createSprite("bg", 0, 0, "stages/my-stage/bg")
addSprite("bg")
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
## **`updateSpriteHitbox`**
```haxe
function updateSpriteHitbox(name:String)
```

Updates a sprite's hitbox. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
updateSpriteHitbox("mySprite")
```

---
## **`getSpriteAntialiasing`**
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
## **`setSpriteAntialiasing`**
```haxe
function setSpriteAntialiasing(name:String, aa:Bool)
```

Sets whenever a sprite uses antialiasing or not. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
setSpriteAntialiasing("mySprite", false) -- for pixel stages
```

---
## **`getSpriteFlipX`**
```haxe
function getSpriteFlipX(name:String)
```

Gets whenever the sprite is flipped horizontally or not.

If the sprite is not found, returns `nil`.

### Example usage:
```lua
if getSpriteFlipX("boyfriend") then
    -- boyfriend is flipped.
end
```

---
## **`setSpriteFlipX`**
```haxe
function setSpriteFlipX(name:String, flipX:Bool)
```

Sets the flipX value of a sprite which determines whenever it should be flipped horizontally or not. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
-- makes bf look the other way
setSpriteFlipX("boyfriend", not getSpriteFlipX("boyfriend"))
```

---
## **`getSpriteFlipY`**
```haxe
function getSpriteFlipY(name:String)
```

Gets whenever the sprite is flipped vertically or not.

If the sprite is not found, returns `nil`.

### Example usage:
```lua
if getSpriteFlipY("boyfriend") then
    -- boyfriend is upside down.
end
```

---
## **`setSpriteFlipY`**
```haxe
function setSpriteFlipY(name:String, flipY:Bool)
```

Sets the flipY value of a sprite which determines whenever it should be flipped vertically or not. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
-- puts bf upside down
setSpriteFlipY("boyfriend", true)
```

---
## **`setSpriteFlip`**
```haxe
function setSpriteFlip(name:String, flipX:Bool, flipY:Bool)
```

Sets the flip values of a sprite which determines whenever it should be flipped horizontally and vertically. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
-- basically rotates 180°
setSpriteFlipY("boyfriend", true, true)
```

---
## **`getSpriteVisible`**
```haxe
function getSpriteVisible(name:String)
```

Returns `true` if the sprite is visible, returns `false` otherwise.

If the sprite is not found, returns `nil`.

### Example usage:
```lua
if getSpriteVisible("boyfriend") then
    -- boyfriend is visible.
end
```

---
## **`setSpriteVisible`**
```haxe
function setSpriteVisible(name:String, visible:Bool)
```

Sets whenever a sprite is visible or not. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
-- boyfriend is now invisible
setSpriteVisible("boyfriend", false)
```

---
## **`setSpritePosition`**
```haxe
function setSpritePosition(name:String, x:Float, y:Float)
```

Sets a sprite's position. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
-- boyfriend is now underground
setSpritePosition("boyfriend", 0, 500)
```

---
## **`setSpriteCamera`**
```haxe
function setSpriteCamera(name:String, cam:String)
function setSpriteCamera(name:String, cam:Int)
```

Sets a sprite's camera. Returns `true` if successful, returns `false` otherwise.

The camera can be identified as a string (`game`, `hud`), or an ID (`0`, `1`)

### Example usage:
```lua
-- boyfriend is now on the hud
setSpriteCamera("boyfriend", "hud")
```

---
## **`setSpriteColor`**
```haxe
function setSpriteColor(name:String, color:Int)
function setSpriteColor(name:String, color:String)
```

Sets a sprite's camera. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
-- boyfriend is now red
setSpriteColor("boyfriend", "#FF0000")
```

---
## **`setSpriteScrollFactor`**
```haxe
function setSpriteScrollFactor(name:String, x:Float, y:Float)
```

Sets a sprite's scroll factor. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
-- boyfriend now is "closer" to the camera
setSpriteColor("boyfriend", 2, 2)
```

---
## **`getSpriteScrollFactorX`**
```haxe
function getSpriteScrollFactorX(name:String)
```

Gets a sprite's X scroll factor. Returns `nil` if the sprite isn't found.

### Example usage:
```lua
-- 1
getSpriteScrollFactorX("boyfriend")
```

---
## **`getSpriteScrollFactorY`**
```haxe
function getSpriteScrollFactorY(name:String)
```

Gets a sprite's Y scroll factor. Returns `nil` if the sprite isn't found.

### Example usage:
```lua
-- 0.95
getSpriteScrollFactorY("gf")
```

---
## **`setSpriteVelocity`**
```haxe
function setSpriteVelocity(name:String, x:Float, y:Float)
```

Sets a sprite's velocity. Returns `true` if successful, returns `false` otherwise.

### Example usage:
```lua
-- gf will move 80 pixels to the right per second.
setSpriteVelocity("gf", 80, 0)
```

---
## **`getSpriteVelocityX`**
```haxe
function getSpriteVelocityX(name:String)
```

Gets a sprite's X velocity. Returns `nil` if the sprite isn't found.

### Example usage:
```lua
local velocityX = getSpriteVelocityX("gf")
```

---
## **`getSpriteVelocityY`**
```haxe
function getSpriteVelocityY(name:String)
```

Gets a sprite's Y velocity. Returns `nil` if the sprite isn't found.

### Example usage:
```lua
local velocityY = getSpriteVelocityY("gf")
```