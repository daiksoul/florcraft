scoreboard players set $in flor.dummy 60
data modify storage flor:storage root.temp.UUID set value [I;1,1,1,1]
execute store result storage flor:storage root.temp.UUID[0] int 1 run scoreboard players get @s flor.uuid1
execute store result storage flor:storage root.temp.UUID[1] int 1 run scoreboard players get @s flor.uuid2
execute store result storage flor:storage root.temp.UUID[2] int 1 run scoreboard players get @s flor.uuid3
execute store result storage flor:storage root.temp.UUID[3] int 1 run scoreboard players get @s flor.uuid4
execute as @e[dx=0,dz=0,dy=0,distance=..5,sort=arbitrary,tag=!global.ignore,type=!#florcraft:nonattackable,type=!#florcraft:fire_immune,nbt={HurtTime:0s}] run function florcraft:utils/damage/damage