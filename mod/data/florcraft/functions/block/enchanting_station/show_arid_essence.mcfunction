scoreboard players set $temp flor.dummy -1
data modify storage flor:storage temp set value {Slot:18b,id:"minecraft:structure_block",Count:1b,tag:{display:{Name:'[{"text":"Arid Essence","color":"green","font":"minecraft:default","italic":"false"}]',Lore:[]},CustomModelData:423006,flor_dat:{essence:1b,cleared:1b}}}
execute store result score $temp flor.dummy run data get block ~ ~ ~ Items[{Slot:18b}].Count
execute store result storage flor:storage temp.Count byte 1 run scoreboard players get @s flor.arid_ess
execute unless score $temp flor.dummy = @s flor.arid_ess run data modify block ~ ~ ~ Items append from storage flor:storage temp
data remove storage flor:storage temp