# Script Basics
## How to move a strum

### What is a strum ?

Strums are the gray static arrows that you can see at the top of the screen (or bottom if you play in downscroll). These are the "destination point" of notes, and can be played around easily.

### How do i move a strum ?

First of all, we need to get which strum do you wanna move.

To get a strum, we'll need the `PlayState.getStrum(id:Int)` function.

The ID corresponds to the index of the strum, going from CPU strums to Player Strums.

Example on a 4 keys chart:

`0123 4567`

:arrow_backward::arrow_down_small::arrow_up_small::arrow_forward:` `:arrow_backward::arrow_down_small::arrow_up_small::arrow_forward: