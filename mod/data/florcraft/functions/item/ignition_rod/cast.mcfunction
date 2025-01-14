tag @s add flor.user
scoreboard players add $cast.temp flor.dummy 1
particle flame ~ ~ ~ 0.05 0.05 0.05 0 1
execute if entity @e[dx=0,dz=0,dy=0,distance=..5,sort=arbitrary,tag=!flor.user,nbt={HurtTime:0s}] run scoreboard players set $cast.temp flor.dummy 9999
scoreboard players set $in flor.dummy 80
execute if entity @s[tag=flor.buffed_magic_25] run scoreboard players operation $in flor.dummy *= $cons.125 flor.dummy
execute if entity @s[tag=flor.buffed_magic_25] run scoreboard players operation $in flor.dummy /= $cons.100 flor.dummy
execute if entity @s[tag=flor.buffed_magic_40] run scoreboard players operation $in flor.dummy *= $cons.14 flor.dummy
execute if entity @s[tag=flor.buffed_magic_40] run scoreboard players operation $in flor.dummy /= $cons.10 flor.dummy
execute if entity @s[tag=flor.buffed_magic_50] run scoreboard players operation $in flor.dummy *= $cons.15 flor.dummy
execute if entity @s[tag=flor.buffed_magic_50] run scoreboard players operation $in flor.dummy /= $cons.10 flor.dummy
execute as @e[dx=0,dz=0,dy=0,distance=..5,sort=arbitrary,tag=!flor.user,type=!#florcraft:nonattackable,type=!#florcraft:fire_immune,tag=!flor.invoked_arid,nbt={HurtTime:0s}] run function florcraft:item/ignition_rod/damage
execute if block ~ ~ ~ air positioned ^ ^ ^0.25 unless block ~ ~ ~ #florcraft:not_solid run setblock ^ ^ ^-0.25 fire
execute if block ~ ~ ~ cave_air positioned ^ ^ ^0.25 unless block ~ ~ ~ #florcraft:not_solid run setblock ^ ^ ^-0.25 fire
tag @s remove flor.user
execute unless score $cast.temp flor.dummy matches 40.. positioned ^ ^ ^0.25 if block ~ ~ ~ #florcraft:not_solid run function florcraft:item/ignition_rod/cast
