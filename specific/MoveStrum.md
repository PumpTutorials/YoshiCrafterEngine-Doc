# Script Basics
## __Moving a strum.__

Lets say we want to move the down note a little bit lower (ID: 5)

To move a strum lower, it's not that complicated, you just need to set the Y value of it, like shown in this code snippet:

```haxe
var strum = PlayState.getStrum(5);
strum.y += 10;
```