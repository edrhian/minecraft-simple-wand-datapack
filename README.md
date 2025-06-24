# Minecraft Simple Wand Datapack

## Introduction

This datapack is a template for creating items that throws projectiles that do something, for simplification I called this Simple Wand

## Features

- A single wand (warped fungus on a stick) that when used (right click) it throws a spell (projectile) that collides with mobs and blocks

## How to use the datapack

It is recommended to test the template in game so it's easier to understand the code before making any changes

1. Create a world (with cheats on) and add this datapack
2. Run `/function simple_wand:give_wand`

## How to modify this datapack

Each function has a comment that gives information on what it does.

### Structure

This is how this datapack works

```bash
tick.mcfunction
├── [used simple wand]?
│   └── spell_init.mcfunction
└── [a spell projectile exists]?
    └── (spell_step)
        ├── (spell_particle)
        ├── (spell_step_sound)
        ├── [collided with entity]?
        │   └── (spell_collide_entity)
        ├── [collided with block]?
        │   └── (spell_collide_block)
        └── [has reached max age]?
            └── (spell_expire)
```

## Notes

Entity collision detection was coded from [TimberForge Video](https://www.youtube.com/watch?v=kKS3sF0X4Is)
