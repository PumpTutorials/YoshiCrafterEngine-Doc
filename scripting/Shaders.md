# Script Documentation
## __How does shaders works?__

Shaders is code runned on the GPU used to alter images. It's optimized and compiled on runtime. It's basically the GPU code that ninjamuffin99's talking about.

Shaders are divided in 2 parts:
- Fragment shaders
- Vertex shaders

You can find the documentation for fragment shaders [here](../assets/shaders/shader.frag.md)

## How to apply it on my sprite?

To apply it on your sprite, it only requires a few lines of code in a [script](../../scripting/Script.md).

```haxe
// Do not add an extension to the shader name.
sprite.shader = new CustomShader(Paths.shader('shaderName'));
```

## How do i add it to the camera?

To add it to the camera, just do this:
```haxe
FlxG.camera.addShader(shader);
camHUD.addShader(shader);
```

## My camera shader breaks when the game is resized. How do i fix it?

To prevent this problem from happening, YoshiCrafter Engine implemented some help built-in functions in the shader.

For example, to do a correct camera shader that doesn't break, use this:

```glsl
#pragma header

void main() {
    // converts on bitmap position to on camera position, fixing scaling
    vec2 pos = getCamPos(openfl_TextureCoordv);

    // do code here

    // converts the modified position back to the bitmap position.
    gl_FragColor = textureCam(bitmap, pos);
}
```

## After applying the shader to my sprite, it becomes invisible. What should i do?

Opening the [logs](../../devmode/logs.md) will allow you to see a compilation error report for your shader.