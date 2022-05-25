# Medals.json documenation

## What is Medals.json?
Medals.json is a JSON file containing data about mod medals. These can be modified via the Toolbox, or by editing them directly through the JSON.

## How to use them in game ?

To use them in game, you'll need a [script](../scripting/Script.md).

Multiple methods are available for Medals.

/!\ Warning! Medal names are CaSe SeNsItIvE!

---
```haxe
// Unlocks a medal and show the "Medal Unlocked" popup.
Medals.unlock("Medal Name");
```
```haxe
// Locks a medal
Medals.lock("Medal Name");
```
```haxe
// Get the medal's state as an Integer.
// 0 = Locked
// 1 = Unlocked
Medals.getState("Medal Name");
```

## How does the JSON works?

```json
{

    // Array containing all medal info.
    "medals": [
        {
            // Medal Name
            "name": "hand",

            // Medal Description
            "desc": "Medal Description",

            // Medal Image Data (whenever its a sparrow or not is automatically detected by the engine)
            "img": {
                
                // Medal Location (assets/image/medals/medal1 in this case)
                "src": "medals/medal1",

                // Animation Framerate (if sparrow)
                "fps": 24,

                // Animation Name (if sparrow)
                "anim": ""
            },
        }
    ]
}
```