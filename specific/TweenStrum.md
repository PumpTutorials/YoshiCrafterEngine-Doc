# Script Basics
## __Tweening the strum.__

The code snippet above does work, however, there is one tiny problem. The strum teleports to the destination, instead of doing an animation.

To slide the strum to its new destination, we'll need to do what's called a tween.

Tweens can be done via the FlxTween class.

```haxe
var strum = PlayState.getStrum(5);
FlxTween.tween(strum, {y: strum.y + 10}, 1, {ease: FlxEase.quintOut});
```

More information about tweening itself can be found [here](HowDoesTweensWork.md) or [here on the official documentation](https://haxeflixel.com/documentation/flxtween/).