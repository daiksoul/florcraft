data modify block -30000000 0 24576 Items prepend from block ~ ~ ~ Items[{Slot:9b}]
execute store result score $temp flor.dummy run data get block -30000000 0 24576 Items[0].Count
tag @p[tag=flor.inside_natures_oculus_gui,tag=!flor.know_spirit_binder_staff,distance=..12,scores={flor.knowledge=1..}] add flor.know_spirit_binder_staff
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1.5
scoreboard players remove @p[tag=flor.inside_natures_oculus_gui,distance=..12,scores={flor.knowledge=1..}] flor.knowledge 1
scoreboard players remove $temp flor.dummy 4
execute store result block -30000000 0 24576 Items[0].Count byte 1 run scoreboard players get $temp flor.dummy
execute at @p[tag=flor.inside_natures_oculus_gui,distance=..12] run loot spawn ~ ~ ~ mine -30000000 0 24576 air{drop_contents: 1b}
setblock -30000000 0 24576 minecraft:yellow_shulker_box
data remove block ~ ~ ~ Items[{Slot:9b}]