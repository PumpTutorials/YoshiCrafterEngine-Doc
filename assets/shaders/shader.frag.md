# Shader Fragment Documentation

## What is a Shader Fragment?

The shader fragment is GLSL code that is compiled on runtime, then applied to every pixels to apply effects.

## How does it works?

```glsl
// if you dont add this line, the engine will crash
#pragma header

void main() {
    // gl_FragColor = Final Color to be rendered
    // flixel_texture2D = Method to get a specific pixel color from a bitmap at a specific position
    // bitmap = The current bitmap
    // openfl_TextureCoordv = The position of the current pixel.
    gl_FragColor = flixel_texture2D(bitmap, openfl_TextureCoordv);
}
```

If you want more information, i recommend checking the [GLSL Official Documentation](https://docs.gl/sl4/all).

## How to apply it on my sprite?

To apply it on your sprite, it only requires a few lines of code in a [script](../../scripting/Script.md).

```haxe
// Do not add an extension to the shader name.
sprite.shader = new CustomShader(Paths.shader('shaderName'));
```

## After applying the shader to my sprite, it becomes invisible. What should i do?

Opening the [logs](../../devmode/logs.md) will allow you to see a compilation error report for your shader.