# Script Basics
## __How does tweens work?__

Let's take for instance, this code snippet right below.
```haxe
FlxTween.tween(sprite, {y: sprite.y + 10}, 1, {ease: FlxEase.quintOut});
```

- The first parameter of the `tween` function is the sprite that we want to tween.
- The second parameter is a structure containing all of the values we want to change. For example, if we want the strum to go to position (0, 0), we'll need to pass this: `{x: 0, y: 0}`.
- The third parameter is the time in seconds. For example, if you want to make the tweening 0,5 seconds long, you'll need to type in `0.5`.
    - /!\ Warning: Please note that every value in the `Conductor` class are in milliseconds. So if you want to make a sprite tween for 1 beat, you'll need to do `Conductor.crochet / 1000`.
- The fourth parameter is a structure with additional parameters to the tween. More information can be found in the [official documentation](https://haxeflixel.com/documentation/flxtween/).