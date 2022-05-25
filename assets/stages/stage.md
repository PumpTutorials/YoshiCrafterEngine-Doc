# Stage JSON Documentation

## What is a Stage JSON?

The Stage JSON is the file created by the Stage Editor. It sets the sprites needed for the stage, their location, their behaviour, etc.
The Stage JSON is loaded in the game using the [script](../../scripting/Script.md) with the same name.

## How does it works?

```json
{
    // Array with all of the sprites present in the stage.
    "sprites": [
        {
            // Position of the sprite
            "pos": [500, 250],

            // Image source of the sprite
            "src": "bg",

            // Sprite shader (null for none),
            "shader": null,

            // Sprite on beat tween (null for none), useful for bg crowds
            "beatTween": {
                // X offset of the tween
                "x": 0,

                // Y offset of the tween
                "y": 0,

                // Tween ease
                "ease": "linear"
            },

            // Opacity of the sprite
            "alpha": 1,

            // Scroll factor of the sprite
            "scrollFactor": [0.5, 0.5],

            // Whenever the sprite should have antialiasing turned on
            "antialiasing" : true,

            // Name of the sprite, aka the Map index of the sprite in the "sprites" property of the stage element.
            "name": "Background",

            // Sparrow Atlas animation. null for none.
            "animation": {
                // Framerate of the animation
                "fps": 24,

                // Animation name (leave blank for all)
                "name": "",

                // Animation Loop Type ("Loop", "OnBeat", "OnBeatForce")
                "type": "Loop"
            },

            // Type of the sprite. Can be either "Bitmap", "SparrowAtlas", "BF", "GF" or "Dad".
            "type": "SparrowAtlas",

            // Scale of the sprite
            "scale": 1
        }
    ],

    // Girlfriend offset.
    "gfOffset": [0, 0],

    // Boyfriend offset.
    "bfOffset": [0, 0],
    
    // Dad (opponent) offset.
    "dadOffset": [0, 0],

    // Default camera zoom
    "defaultCamZoom": 1,

    // Follow lerp of the camera. The higher the value is, the faster the camera will be
    "followLerp": 0.04
}
```