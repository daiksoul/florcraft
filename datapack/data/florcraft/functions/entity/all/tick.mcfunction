execute if entity @s[tag=flor.natures_oculus] run function florcraft:block/natures_oculus/tick
execute if entity @s[tag=flor.infused_workbench] run function florcraft:block/infused_workbench/tick
execute if entity @s[tag=flor.arid_spirit] run function florcraft:entity/spirit/arid_tick
execute if entity @s[tag=flor.aqueous_spirit] run function florcraft:entity/spirit/aqueous_tick
execute if entity @s[tag=flor.verdant_spirit] run function florcraft:entity/spirit/verdant_tick
execute if entity @s[tag=flor.pylon] run function florcraft:block/pylon/tick
execute if entity @s[tag=flor.runic_pylon] run function florcraft:block/runic_pylon/tick
execute if entity @s[tag=flor.reinforced_pylon] run function florcraft:block/reinforced_pylon/tick
execute if entity @s[tag=flor.arid_attuned_pylon] run function florcraft:block/arid_attuned_pylon/tick
execute if entity @s[tag=flor.aqueous_attuned_pylon] run function florcraft:block/aqueous_attuned_pylon/tick
execute if entity @s[tag=flor.verdant_attuned_pylon] run function florcraft:block/verdant_attuned_pylon/tick
execute if entity @s[tag=flor.overgrown_vine] run function florcraft:entity/overgrown_vine/tick
execute if entity @s[tag=flor.absorbloom] run function florcraft:block/absorbloom/tick
execute if entity @s[tag=flor.relilay] run function florcraft:block/relilay/tick
execute if entity @s[tag=flor.dispoppy] run function florcraft:block/dispoppy/tick
execute if entity @s[tag=flor.mystical_furnace] run function florcraft:block/mystical_furnace/tick
execute if entity @s[tag=flor.burning_scepter] run scoreboard players set @s flor.dummy2 0
execute if entity @s[tag=flor.burning_scepter] run function florcraft:item/burning_scepter/tick
execute if entity @s[tag=flor.blizzard_scepter] run scoreboard players set @s flor.dummy2 0
execute if entity @s[tag=flor.blizzard_scepter] run function florcraft:item/blizzard_scepter/tick
execute if entity @s[tag=flor.snare_scepter] run scoreboard players set @s flor.dummy2 0
execute if entity @s[tag=flor.snare_scepter] run function florcraft:item/snare_scepter/tick
execute if entity @s[tag=flor.redstone_control_matrix] run function florcraft:block/redstone_control_matrix/tick
execute if entity @s[tag=flor.spirit_orb] run scoreboard players set @s flor.dummy2 0
execute if entity @s[tag=flor.spirit_orb] run function florcraft:item/spirit_binder_staff/tick
execute if entity @s[tag=flor.mineroot_sapling] run function florcraft:block/mineroot_sapling/tick
execute if entity @s[tag=flor.verdant_invo_wolf] run particle dust 0 0.878 0.322 1 ~ ~0.4 ~ 0.1 0.1 0.1 1 3
execute if entity @s[tag=flor.arid_guardian] run function florcraft:entity/arid_guardian/tick
execute if entity @s[tag=flor.arid_fireball] run function florcraft:entity/arid_guardian/fireball_tick
execute if entity @s[tag=flor.aqueous_guardian] run function florcraft:entity/aqueous_guardian/tick
execute if entity @s[tag=flor.aqueous_bolt] run function florcraft:entity/aqueous_guardian/bolt_tick