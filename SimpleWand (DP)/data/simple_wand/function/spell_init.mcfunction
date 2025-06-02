#> Spell Initalization
# Description: Initializes the spell
# Callers: simple_wand:tick; by the player

# Summon the projectile
summon area_effect_cloud ~ ~ ~ {Particle:{type:"dust",color:[0.000,0.000,0.000],scale:0.01},NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:72000,Tags:["simple_wand_spell"]}

# Spell initialization sound
function simple_wand:spell_init_sound

# Put the spell 1 block in front the player eyes
tp @e[tag=simple_wand_spell,distance=..2,limit=1,sort=nearest] ^ ^ ^1 ~ ~