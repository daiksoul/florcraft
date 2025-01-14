execute unless block ~ ~ ~ furnace run function florcraft:block/mystical_furnace/break
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 15
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 15
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 15
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 15

execute if data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b}].tag.flor_dat.essence run function florcraft:block/mystical_furnace/restore_fuel

execute if score @s flor.arid_ess matches 1.. run function florcraft:block/mystical_furnace/show_arid_essence
execute if score @s flor.arid_ess matches 0 run data remove block ~ ~ ~ Items[{Slot:1b}]

execute store result score $temp flor.dummy run data get block ~ ~ ~ BurnTime
execute store result score $temp.4 flor.dummy run data get block ~ ~ ~ BurnTime
execute store result score $temp.3 flor.dummy run data get block ~ ~ ~ CookTime
execute store result score $temp.1 flor.dummy run data get block ~ ~ ~ CookTimeTotal

execute if score @s flor.arid_upg matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_iron"}]} run tag @s add flor.metal
execute if score @s flor.arid_upg matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_gold"}]} run tag @s add flor.metal
execute if score @s flor.arid_upg matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_copper"}]} run tag @s add flor.metal
execute if score @s flor.arid_upg matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ancient_debris"}]} run tag @s add flor.metal

execute if score $temp.4 flor.dummy matches 2399 unless entity @s[tag=flor.burning] run scoreboard players set @s flor.dummy 0
execute if score $temp.4 flor.dummy matches 2399 unless entity @s[tag=flor.burning] run tag @s add flor.burning
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. run scoreboard players remove @s flor.arid_ess 1
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.verdant_upg matches 1 run scoreboard players operation $temp flor.dummy *= $cons.3 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.verdant_upg matches 2 run scoreboard players operation $temp flor.dummy *= $cons.4 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.verdant_upg matches 3 run scoreboard players operation $temp flor.dummy *= $cons.5 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.verdant_upg matches 4.. run scoreboard players operation $temp flor.dummy *= $cons.6 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.verdant_upg matches 1.. run scoreboard players operation $temp flor.dummy /= $cons.2 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.aqueous_upg matches 1.. run scoreboard players operation $temp flor.dummy *= $cons.2 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.aqueous_upg matches 1.. run scoreboard players operation $temp flor.dummy /= $cons.3 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.aqueous_upg matches 2.. run scoreboard players operation $temp flor.dummy *= $cons.2 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.aqueous_upg matches 2.. run scoreboard players operation $temp flor.dummy /= $cons.3 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.aqueous_upg matches 3.. run scoreboard players operation $temp flor.dummy *= $cons.2 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.aqueous_upg matches 3.. run scoreboard players operation $temp flor.dummy /= $cons.3 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.aqueous_upg matches 4.. run scoreboard players operation $temp flor.dummy *= $cons.2 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.aqueous_upg matches 4.. run scoreboard players operation $temp flor.dummy /= $cons.3 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.arid_upg matches 1 if entity @s[tag=flor.metal] run scoreboard players operation $temp flor.dummy /= $cons.2 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.arid_upg matches 2 if entity @s[tag=flor.metal] run scoreboard players operation $temp flor.dummy /= $cons.4 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.arid_upg matches 3 if entity @s[tag=flor.metal] run scoreboard players operation $temp flor.dummy /= $cons.8 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. if score @s flor.arid_upg matches 4.. if entity @s[tag=flor.metal] run scoreboard players operation $temp flor.dummy /= $cons.16 flor.dummy
execute if score $temp.4 flor.dummy matches 2399 unless score @s flor.dummy matches 10.. store result block ~ ~ ~ BurnTime short 1 run scoreboard players get $temp flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.aqueous_upg matches 1.. run scoreboard players operation $temp.1 flor.dummy *= $cons.2 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.aqueous_upg matches 1.. run scoreboard players operation $temp.1 flor.dummy /= $cons.3 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.aqueous_upg matches 2.. run scoreboard players operation $temp.1 flor.dummy *= $cons.2 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.aqueous_upg matches 2.. run scoreboard players operation $temp.1 flor.dummy /= $cons.3 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.aqueous_upg matches 3.. run scoreboard players operation $temp.1 flor.dummy *= $cons.2 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.aqueous_upg matches 3.. run scoreboard players operation $temp.1 flor.dummy /= $cons.3 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.aqueous_upg matches 4.. run scoreboard players operation $temp.1 flor.dummy *= $cons.2 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.aqueous_upg matches 4.. run scoreboard players operation $temp.1 flor.dummy /= $cons.3 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.arid_upg matches 1.. if entity @s[tag=flor.metal] run scoreboard players operation $temp.1 flor.dummy /= $cons.2 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.arid_upg matches 2.. if entity @s[tag=flor.metal] run scoreboard players operation $temp.1 flor.dummy /= $cons.2 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.arid_upg matches 3.. if entity @s[tag=flor.metal] run scoreboard players operation $temp.1 flor.dummy /= $cons.2 flor.dummy
execute if score $temp.3 flor.dummy matches 0 if score @s flor.arid_upg matches 4.. if entity @s[tag=flor.metal] run scoreboard players operation $temp.1 flor.dummy /= $cons.2 flor.dummy
execute if score $temp.3 flor.dummy matches 0 store result block ~ ~ ~ CookTimeTotal short 1 run scoreboard players get $temp.1 flor.dummy
execute if score $temp flor.dummy matches 1 run tag @s remove flor.burning

scoreboard players operation $temp.0 flor.dummy = @s flor.dummy
scoreboard players operation $temp.0 flor.dummy %= $cons.10 flor.dummy
scoreboard players operation $temp.2 flor.dummy = @s flor.dummy
scoreboard players operation $temp.2 flor.dummy %= $cons.2 flor.dummy

execute if entity @s[tag=flor.burning] run scoreboard players add @s flor.dummy 1
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.verdant_upg matches 1 run scoreboard players add $temp flor.dummy 3
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.verdant_upg matches 2 run scoreboard players add $temp flor.dummy 5
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.verdant_upg matches 3 run scoreboard players add $temp flor.dummy 7
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.verdant_upg matches 4.. run scoreboard players add $temp flor.dummy 8
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.aqueous_upg matches 1 run scoreboard players remove $temp flor.dummy 5
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.aqueous_upg matches 2 run scoreboard players remove $temp flor.dummy 10
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.aqueous_upg matches 3 run scoreboard players remove $temp flor.dummy 15
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.aqueous_upg matches 4.. run scoreboard players remove $temp flor.dummy 20
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_iron"}]} run scoreboard players remove $temp flor.dummy 10
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 2 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_iron"}]} run scoreboard players remove $temp flor.dummy 20
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 3 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_iron"}]} run scoreboard players remove $temp flor.dummy 30
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 4.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_iron"}]} run scoreboard players remove $temp flor.dummy 40
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_gold"}]} run scoreboard players remove $temp flor.dummy 10
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 2 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_gold"}]} run scoreboard players remove $temp flor.dummy 20
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 3 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_gold"}]} run scoreboard players remove $temp flor.dummy 30
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 4.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_gold"}]} run scoreboard players remove $temp flor.dummy 40
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_copper"}]} run scoreboard players remove $temp flor.dummy 10
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 2 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_copper"}]} run scoreboard players remove $temp flor.dummy 20
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 3 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_copper"}]} run scoreboard players remove $temp flor.dummy 30
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 4.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:raw_copper"}]} run scoreboard players remove $temp flor.dummy 40
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ancient_debris"}]} run scoreboard players remove $temp flor.dummy 10
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 2 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ancient_debris"}]} run scoreboard players remove $temp flor.dummy 20
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 3 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ancient_debris"}]} run scoreboard players remove $temp flor.dummy 30
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 if score @s flor.arid_upg matches 4.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ancient_debris"}]} run scoreboard players remove $temp flor.dummy 40
#execute if entity @s[tag=flor.burning] if score $temp.0 flor.dummy matches 0 store result block ~ ~ ~ BurnTime short 1 run scoreboard players get $temp flor.dummy

execute unless score @s flor.arid_ess matches 20.. run tag @s add flor.arid_acceptor
execute if score @s flor.arid_ess matches 20.. run tag @s remove flor.arid_acceptor

tag @s remove flor.metal