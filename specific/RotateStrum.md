# Script Basics
## __How to rotate a strum.__
Lets say moving strums are boring, so you want to rotate them as well.
This code snippet will do exactly what you're looking for.

```haxe
var strum = PlayState.getStrum(5);
strum.angle = 45;
```

This will rotate the strum by 45° degrees. However, the note line will also rotate by 45° degrees. If you don't want it to rotate as well, you'll need to set the additional `notesAngle` property.

```haxe
var strum = PlayState.getStrum(5);
strum.angle = 45;
strum.notesAngle = 0;
```

The `notesAngle` property sets the rotation of the note line itself. As it defaults to `null`, the `angle` value is used instead.