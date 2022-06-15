# Script Basics
## __What is a strum ?__

Strums are the gray static arrows that you can see at the top of the screen (or bottom if you play in downscroll). These are the "destination point" of notes, and can be played around easily.

They consist of 3 animations.

`static`, `pressed` and `confirm`.
- `static`: Animation played when no key is pressed, aka the default gray appearance.
- `pressed`: Animation played when tapping randomly, and no note is hit.
- `confirm`: Animation played when a note is hit.

The strums' appearance are defined through the first note script's `generateStaticArrow` function.