setblock ~ ~ ~ redstone_lamp
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["flor.20ticking","flor.capacitor","global.ignore","flor.ticking","flor.sealable"],ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{Unbreakable:1b,CustomModelData:423013}}]}
scoreboard players set @e[type=armor_stand,tag=flor.capacitor,sort=nearest,limit=1] flor.seal_slots 2
scoreboard players set @e[type=armor_stand,tag=flor.capacitor,sort=nearest,limit=1] flor.arid_cap 20
scoreboard players set @e[type=armor_stand,tag=flor.capacitor,sort=nearest,limit=1] flor.aqueous_cap 20
scoreboard players set @e[type=armor_stand,tag=flor.capacitor,sort=nearest,limit=1] flor.verdant_cap 20