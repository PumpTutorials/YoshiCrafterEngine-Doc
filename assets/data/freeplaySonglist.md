# Freeplay Song List Documentation

## What is the Freeplay Song List?

The freeplay song list handles every song that pops up in the Freeplay menu.

The syntax is the following:

```jsonc
{
    // array of all freeplay songs.
    "songs": [
        {
            // the name of your song
            "name": "your-song",

            // the character's icon that will be shown next to the character
            "char": "bf",

            // if not equal to null, will show this text instead of the song name.
            "displayName":  null, 

            // difficulties for your song
            "difficulties": [
                // difficulty names
                "Easy", "Normal", "Hard"
            ],

            // the hex code of the color that will be shown on the background when the sound is selected
            "color": "#880000",

            // the bpm of your song.
            // if not equal to null and if the song is playing in the freeplay menu,
            // the icon will bump to this icon.
            "bpm": 120,

            // optional, whenever the song will be disabled.
            "disabled": false
        }
    ]
}```