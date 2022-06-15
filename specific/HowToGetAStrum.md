# Script Basics

## __How do i get a strum?__

First of all, we need to get which strum do you wanna move.

To get a strum, we'll need the `PlayState.getStrum(id:Int)` function.

The ID corresponds to the index of the strum, going from CPU strums to Player Strums.

Example on a 4 keys chart:
- 0: Opponent's Left Note
- 1: Opponent's Down Note
- 2: Opponent's Up Note
- 3: Opponent's Right Note
- 4: Player's Left Note
- 5: Player's Down Note
- 6: Player's Up Note
- 7: Player's Right Note

The function will return a `StrumNote`, which is the sprite of the strum.