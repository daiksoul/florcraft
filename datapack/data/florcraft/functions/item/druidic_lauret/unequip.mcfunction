#thanks to CreeperMagmet_ for this function
tag @s remove flor.druidic_lauret_unequip
data modify storage flor:storage root.inventory_temp2 set value []
data modify storage flor:storage root.inventory_temp2 append from storage flor:storage root.inventory_temp.Inventory[{Slot:-106b}]
data modify storage flor:storage root.inventory_temp2[{Slot:-106b}].Slot set value 0b

execute in minecraft:overworld run data modify block -30000000 0 24576 Items set from storage flor:storage root.inventory_temp2

execute in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine -30000000 0 24576 air{drop_contents:1b}

data modify storage flor:storage root.inventory_temp2 set from storage flor:storage root.inventory_temp.Inventory
data remove storage flor:storage root.inventory_temp2[{Slot:-106b}]
data remove storage flor:storage root.inventory_temp2[{Slot:103b}]
data remove storage flor:storage root.inventory_temp2[{Slot:102b}]
data remove storage flor:storage root.inventory_temp2[{Slot:101b}]
data remove storage flor:storage root.inventory_temp2[{Slot:100b}]
data remove storage flor:storage root.inventory_temp2[{Slot:0b}]
data remove storage flor:storage root.inventory_temp2[{Slot:1b}]
data remove storage flor:storage root.inventory_temp2[{Slot:2b}]
data remove storage flor:storage root.inventory_temp2[{Slot:3b}]
data remove storage flor:storage root.inventory_temp2[{Slot:4b}]
data remove storage flor:storage root.inventory_temp2[{Slot:5b}]
data remove storage flor:storage root.inventory_temp2[{Slot:6b}]
data remove storage flor:storage root.inventory_temp2[{Slot:7b}]
data remove storage flor:storage root.inventory_temp2[{Slot:8b}]

data modify storage flor:storage root.inventory_temp2[{Slot:9b}].Slot set value 0b
data modify storage flor:storage root.inventory_temp2[{Slot:10b}].Slot set value 1b
data modify storage flor:storage root.inventory_temp2[{Slot:11b}].Slot set value 2b
data modify storage flor:storage root.inventory_temp2[{Slot:12b}].Slot set value 3b
data modify storage flor:storage root.inventory_temp2[{Slot:13b}].Slot set value 4b
data modify storage flor:storage root.inventory_temp2[{Slot:14b}].Slot set value 5b
data modify storage flor:storage root.inventory_temp2[{Slot:15b}].Slot set value 6b
data modify storage flor:storage root.inventory_temp2[{Slot:16b}].Slot set value 7b
data modify storage flor:storage root.inventory_temp2[{Slot:17b}].Slot set value 8b
data modify storage flor:storage root.inventory_temp2[{Slot:18b}].Slot set value 9b
data modify storage flor:storage root.inventory_temp2[{Slot:19b}].Slot set value 10b
data modify storage flor:storage root.inventory_temp2[{Slot:20b}].Slot set value 11b
data modify storage flor:storage root.inventory_temp2[{Slot:21b}].Slot set value 12b
data modify storage flor:storage root.inventory_temp2[{Slot:22b}].Slot set value 13b
data modify storage flor:storage root.inventory_temp2[{Slot:23b}].Slot set value 14b
data modify storage flor:storage root.inventory_temp2[{Slot:24b}].Slot set value 15b
data modify storage flor:storage root.inventory_temp2[{Slot:25b}].Slot set value 16b
data modify storage flor:storage root.inventory_temp2[{Slot:26b}].Slot set value 17b
data modify storage flor:storage root.inventory_temp2[{Slot:27b}].Slot set value 18b
data modify storage flor:storage root.inventory_temp2[{Slot:28b}].Slot set value 19b
data modify storage flor:storage root.inventory_temp2[{Slot:29b}].Slot set value 20b
data modify storage flor:storage root.inventory_temp2[{Slot:30b}].Slot set value 21b
data modify storage flor:storage root.inventory_temp2[{Slot:31b}].Slot set value 22b
data modify storage flor:storage root.inventory_temp2[{Slot:32b}].Slot set value 23b
data modify storage flor:storage root.inventory_temp2[{Slot:33b}].Slot set value 24b
data modify storage flor:storage root.inventory_temp2[{Slot:34b}].Slot set value 25b
data modify storage flor:storage root.inventory_temp2[{Slot:35b}].Slot set value 26b

execute in minecraft:overworld run data modify block -30000000 0 24576 Items set from storage flor:storage root.inventory_temp2

execute in minecraft:overworld run loot replace entity @s inventory.0 27 mine -30000000 0 24576 air{drop_contents:1b}

data modify storage flor:storage root.inventory_temp2 set from storage flor:storage root.inventory_temp.Inventory

# Remove offhand
data remove storage flor:storage root.inventory_temp2[{Slot:-106b}]
# Remove Armor
data remove storage flor:storage root.inventory_temp2[{Slot:103b}]
data remove storage flor:storage root.inventory_temp2[{Slot:102b}]
data remove storage flor:storage root.inventory_temp2[{Slot:101b}]
data remove storage flor:storage root.inventory_temp2[{Slot:100b}]
# Remove Inventory
## Row 1
data remove storage flor:storage root.inventory_temp2[{Slot:9b}]
data remove storage flor:storage root.inventory_temp2[{Slot:10b}]
data remove storage flor:storage root.inventory_temp2[{Slot:11b}]
data remove storage flor:storage root.inventory_temp2[{Slot:12b}]
data remove storage flor:storage root.inventory_temp2[{Slot:13b}]
data remove storage flor:storage root.inventory_temp2[{Slot:14b}]
data remove storage flor:storage root.inventory_temp2[{Slot:15b}]
data remove storage flor:storage root.inventory_temp2[{Slot:16b}]
data remove storage flor:storage root.inventory_temp2[{Slot:17b}]
## Row 2
data remove storage flor:storage root.inventory_temp2[{Slot:18b}]
data remove storage flor:storage root.inventory_temp2[{Slot:19b}]
data remove storage flor:storage root.inventory_temp2[{Slot:20b}]
data remove storage flor:storage root.inventory_temp2[{Slot:21b}]
data remove storage flor:storage root.inventory_temp2[{Slot:22b}]
data remove storage flor:storage root.inventory_temp2[{Slot:23b}]
data remove storage flor:storage root.inventory_temp2[{Slot:24b}]
data remove storage flor:storage root.inventory_temp2[{Slot:25b}]
data remove storage flor:storage root.inventory_temp2[{Slot:26b}]
## Row 3
data remove storage flor:storage root.inventory_temp2[{Slot:27b}]
data remove storage flor:storage root.inventory_temp2[{Slot:28b}]
data remove storage flor:storage root.inventory_temp2[{Slot:29b}]
data remove storage flor:storage root.inventory_temp2[{Slot:30b}]
data remove storage flor:storage root.inventory_temp2[{Slot:31b}]
data remove storage flor:storage root.inventory_temp2[{Slot:32b}]
data remove storage flor:storage root.inventory_temp2[{Slot:33b}]
data remove storage flor:storage root.inventory_temp2[{Slot:34b}]
data remove storage flor:storage root.inventory_temp2[{Slot:35b}]

execute in minecraft:overworld run data modify block -30000000 0 24576 Items set from storage flor:storage root.inventory_temp2

execute in minecraft:overworld run loot replace entity @s hotbar.0 9 mine -30000000 0 24576 air{drop_contents:1b}