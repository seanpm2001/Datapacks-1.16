# split ingredient
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b,tag:{IsIronBeacon:1b}}}] at @s if predicate stevekung:cauldron_check run function stevekung:portable_beacon/split_beacon/iron
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b,tag:{IsGoldBeacon:1b}}}] at @s if predicate stevekung:cauldron_check run function stevekung:portable_beacon/split_beacon/gold
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b,tag:{IsDiamondBeacon:1b}}}] at @s if predicate stevekung:cauldron_check run function stevekung:portable_beacon/split_beacon/diamond
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b,tag:{IsEmeraldBeacon:1b}}}] at @s if predicate stevekung:cauldron_check run function stevekung:portable_beacon/split_beacon/emerald

# run loop
schedule function stevekung:portable_beacon/main_schedule 20t