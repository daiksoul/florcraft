setblock ~ ~ ~ furnace{CustomName:'{"color":"white","font":"florcraft:mystical_furnace","text":"\\ua000"}'}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["flor.mystical_furnace","smithed.entity","flor.ticking","flor.sealable"],ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{Unbreakable:1b,CustomModelData:423003}}]}
scoreboard players set @e[type=armor_stand,tag=flor.mystical_furnace,sort=nearest,limit=1] flor.seal_slots 2