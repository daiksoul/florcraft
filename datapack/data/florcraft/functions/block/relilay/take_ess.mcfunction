tag @s add flor.bloom
tag @e[tag=flor.ess,limit=1] add flor.take_ess
playsound minecraft:entity.ender_eye.death block @a ~ ~ ~ 1 2
scoreboard players operation $temp flor.dummy = @s flor.arid_upg
scoreboard players add $temp flor.dummy 1
execute if entity @s[tag=!flor.aqueous_filter,tag=!flor.verdant_filter] if score @e[tag=flor.take_ess,limit=1] flor.arid_ess >= $temp flor.dummy run tag @s add flor.arid_take
execute if entity @s[tag=!flor.arid_filter,tag=!flor.verdant_filter] if score @e[tag=flor.take_ess,limit=1] flor.aqueous_ess >= $temp flor.dummy run tag @s add flor.aqueous_take
execute if entity @s[tag=!flor.arid_filter,tag=!flor.aqueous_filter] if score @e[tag=flor.take_ess,limit=1] flor.verdant_ess >= $temp flor.dummy run tag @s add flor.verdant_take
execute if entity @s[tag=flor.arid_take] run scoreboard players operation @s flor.arid_ess += $temp flor.dummy
execute if entity @s[tag=flor.aqueous_take] run scoreboard players operation @s flor.aqueous_ess += $temp flor.dummy
execute if entity @s[tag=flor.verdant_take] run scoreboard players operation @s flor.verdant_ess += $temp flor.dummy
execute if entity @s[tag=flor.arid_take] as @e[type=item_frame,tag=flor.take_ess,scores={flor.arid_ess=1..}] if score @s flor.arid_ess >= $temp flor.dummy at @s facing entity @e[tag=flor.bloom] feet run function florcraft:block/relilay/arid_cast
execute if entity @s[tag=flor.aqueous_take] as @e[type=item_frame,tag=flor.take_ess,scores={flor.aqueous_ess=1..}] if score @s flor.aqueous_ess >= $temp flor.dummy at @s facing entity @e[tag=flor.bloom] feet run function florcraft:block/relilay/aqueous_cast
execute if entity @s[tag=flor.verdant_take] as @e[type=item_frame,tag=flor.take_ess,scores={flor.verdant_ess=1..}] if score @s flor.verdant_ess >= $temp flor.dummy at @s facing entity @e[tag=flor.bloom] feet run function florcraft:block/relilay/verdant_cast
execute if entity @s[tag=flor.arid_take] run scoreboard players operation @e[type=item_frame,tag=flor.take_ess,scores={flor.arid_ess=1..}] flor.arid_ess -= $temp flor.dummy
execute if entity @s[tag=flor.aqueous_take] run scoreboard players operation @e[type=item_frame,tag=flor.take_ess,scores={flor.aqueous_ess=1..}] flor.aqueous_ess -= $temp flor.dummy
execute if entity @s[tag=flor.verdant_take] run scoreboard players operation @e[type=item_frame,tag=flor.take_ess,scores={flor.verdant_ess=1..}] flor.verdant_ess -= $temp flor.dummy
tag @e remove flor.take_ess
tag @s remove flor.bloom
tag @s remove flor.arid_take
tag @s remove flor.aqueous_take
tag @s remove flor.verdant_take