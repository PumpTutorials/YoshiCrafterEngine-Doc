# Character.json documentation

## What is the use of the Character.json file?

The `Character.json` file is used by the Toolbox to save the character settings without overriding the default `Character.hx`, allowing easy editing and preventing the `Character.hx` file to be overriden, allowing custom code to be written without any interference with the Toolbox.

```jsonc
{
    // Array with all of the character's animations
    "anims": [
        {
            // Animation name, such as "idle", "singLEFT", "singDOWN", "singUP", "singRIGHT", etc...
            "name": "idle",

            // Sparrow XML name
            "anim": "shrek milf idle",

            // Framerate (Integer) of the animation
            "fps": 24,

            // X Offset of the animation
            "x": 10,

            // Y Offset of the animation
            "y": 10,

            // Whenever the animation should loop or not
            "loop": false,

            // Character indices. Should be an array of integer. If not equal to "null", will call addByIndices instead of addByPrefix with the indices.
            "indices": null
        }
    ],

    // Character global offset
    "globalOffset": {
        "x": 0,
        "y": 0
    },

    // Global camera offset
    "camOffset": {
        "x": 0,
        "y": 0
    },

    // Whenever the character should be using antialiasing or not
    "antialiasing": true,

    // Character scale.
    "scale": 1,

    // What animations should the character do while dancing. Values can be:
    // ["idle"]
    // ["danceLeft", "danceRight"]
    "danceSteps": ["idle"],

    // Whenever the character should be flipped on the X axis.
    "flipX": false,

    // Character's health bar color.
    "healthbarColor": "#FF0000",

    // Character's note colors. If equals to null, will use the player's custom colors.
    "arrowColors": [
        "#FF0000",
        "#00FF00",
        "#0000FF",
        "#FFFF00"
    ]
}
```