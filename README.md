# Godot Haskell Starter
> A template for new Godot projects using Haskell bindings

This project is inspired by the Stack template included in https://github.com/SimulaVR/godot-haskell. This project
was created primarily as a test for godot-haskell.

## Prerequisites
In order to use this project, you will need

 * Stack
 * Cabal-install (3.0+)
 * Godot

## Getting Started
Build the Haskell library

    make stack
    
Open the Godot project

    godot ./game/project.godot
    
To test the native library is set up correctly, start the game and you should see a counter output in the console.
For example,

    --- Debugging process started ---
    Godot Engine v3.2.4.beta6.mono.official - https://godotengine.org
    OpenGL ES 3.0 Renderer: Radeon RX 580 Series (POLARIS10, DRM 3.40.0, 5.11.2, LLVM 11.1.0)
    OpenGL ES Batching: ON

    Seconds passed: 1
    Seconds passed: 2
    Seconds passed: 3
    Seconds passed: 4
    Seconds passed: 5
    --- Debugging process stopped ---

## Building

## Acknowlegdements
