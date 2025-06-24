#> Main function
# Description: Main logic to initialize spells and trigger spell steps
# Callers: Every minecraft tick

# Initialize the spell at the player that has used the wand
execute as @a at @s if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={simple_wand:1b},custom_name="Simple Wand",enchantment_glint_override=true,unbreakable={}] if score @s simple_wand.trigger matches 1.. unless score @s simple_wand.player.delay matches 0.. anchored eyes run function simple_wand:spell_init

# Reset player trigger value
execute as @a if score @s simple_wand.trigger matches 1.. run scoreboard players reset @s simple_wand.trigger 

# Perform a step at every spell
# The more steps command in this file, the faster the spell travels and ends (the distance doesn't change)
# speed = step_calls * tp_value (see simple_wand:spell_step)
execute as @e[tag=simple_wand_spell] at @s run function simple_wand:spell_step

# Decrease immunity timer
execute as @a if score @s simple_wand.player.immunity matches 0.. run scoreboard players remove @s simple_wand.player.immunity 1

# Decrease delay timer
execute as @a if score @s simple_wand.player.delay matches 0.. run scoreboard players remove @s simple_wand.player.delay 1
