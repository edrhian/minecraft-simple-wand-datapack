#> Spell step
# Description: Performs a step for the current spell
# Callers: simple_wand:tick

# Move the projectile
tp @s ^ ^ ^0.2

# Particle
function simple_wand:spell_particle

# Step 
function simple_wand:spell_step_sound

# Entity collision 
# Edited from https://www.youtube.com/watch?v=kKS3sF0X4Is
# Can either target only a list of entities with 'type=<file>'
# or ignore a list of entities with 'type=!<file>'
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,tag=!simple_wand_spell,limit=1,type=!#simple_wand:specific_target_example] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function simple_wand:spell_collide_entity

# Block collision detection
# Can either pass through a list of blocks with 'unless block x y z <file>'
# or only collide with a list of blocks with 'if block x y z <file>'
execute unless block ~ ~ ~ #simple_wand:specific_blocks_example run function simple_wand:spell_collide_block

# Distance = tp_distance * max_spell_age
scoreboard players add @s simple_wand.spell.age 1

# Destroy the projectile after a number of steps (number after matches)
execute if score @s simple_wand.spell.age matches 50.. run function simple_wand:spell_expire