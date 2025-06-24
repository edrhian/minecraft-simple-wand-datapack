#> Reload function

# simple_wand(Class)
# trigger(bool): Controls who has used the wand
scoreboard objectives add simple_wand.trigger minecraft.used:minecraft.warped_fungus_on_a_stick

# spell(Subclass)
# age(int): Controls how many ticks has existed the spell
scoreboard objectives add simple_wand.spell.age dummy

# player(Subclass)
# immunity(int): Controls how many seconds is the player immune to the spells of the wand
scoreboard objectives add simple_wand.player.immunity dummy
scoreboard objectives add simple_wand.player.delay dummy

# reset
kill @e[tag=simple_wand_spell]
scoreboard players reset @a simple_wand.trigger
scoreboard players reset @a simple_wand.spell.age
scoreboard players reset @a simple_wand.player.immunity
scoreboard players reset @a simple_wand.player.delay