#> Entity Collision
# Description: Controls the logic after a entity collision
# Callers: simple_wand:spell_step; by the hitted entity

say A spell has hit me
# Kill the entity
# kill @s

# Kill the projectile
execute as @e[tag=simple_wand_spell,distance=..3,limit=1,sort=nearest] run say Hit a target
execute as @e[tag=simple_wand_spell,distance=..3,limit=1,sort=nearest] run kill @s