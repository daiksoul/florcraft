data modify storage flor:storage SelectedItem set from entity @s SelectedItem
scoreboard players set @s flor.cstick 0
execute if data storage flor:storage SelectedItem.tag.flor_dat{essence_flask:1b} run function florcraft:item/essence_flask/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{ignition_rod:1b} run function florcraft:item/ignition_rod/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{frost_rod:1b} run function florcraft:item/frost_rod/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{overgrowth_rod:1b} run function florcraft:item/overgrowth_rod/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{absorbloom:1b} run function florcraft:block/placement/absorbloom/item
execute if data storage flor:storage SelectedItem.tag.flor_dat{dispoppy:1b} run function florcraft:block/placement/dispoppy/item
execute if data storage flor:storage SelectedItem.tag.flor_dat{relilay:1b} run function florcraft:block/placement/relilay/item
execute if data storage flor:storage SelectedItem.tag.flor_dat{mineroot_sapling:1b} run function florcraft:block/placement/mineroot_sapling/item
execute if data storage flor:storage SelectedItem.tag.flor_dat{burning_scepter:1b} run function florcraft:item/burning_scepter/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{blizzard_scepter:1b} run function florcraft:item/blizzard_scepter/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{snare_scepter:1b} run function florcraft:item/snare_scepter/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{ender_rift_scepter:1b} run function florcraft:item/ender_rift_scepter/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{barrier_scepter:1b} run function florcraft:item/barrier_scepter/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{mending_scepter:1b} run function florcraft:item/mending_scepter/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{spirit_binder_staff:1b} run function florcraft:item/spirit_binder_staff/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{charm_of_invocation:1b} run function florcraft:item/charm_of_invocation/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{floramancers_wand:1b} run function florcraft:item/floramancers_wand/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{adept_floramancers_scepter:1b} run function florcraft:item/floramancers_wand/use_adept
execute if data storage flor:storage SelectedItem.tag.flor_dat{master_floramancers_staff:1b} run function florcraft:item/floramancers_wand/use_master
execute if data storage flor:storage SelectedItem.tag.flor_dat{erosion_scepter:1b} run function florcraft:item/erosion_scepter/use
execute if data storage flor:storage SelectedItem.tag.flor_dat{seal:1b} run function florcraft:item/seal/generic_use
execute if data storage flor:storage SelectedItem.tag.flor_dat{arcane_pliers:1b} run function florcraft:item/arcane_pliers/use