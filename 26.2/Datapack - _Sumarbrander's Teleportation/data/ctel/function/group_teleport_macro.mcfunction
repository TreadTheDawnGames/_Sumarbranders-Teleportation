$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~ ~1 ~ air run return run tellraw @s "Unable to teleport: Location obstructed"

say teleporting group
# execute in overworld positioned 1 2 3 if block ~ ~1 ~ air  run say "Unable to teleport: Location obstructed"

# execute as @e[type=!minecraft:armor_stand, type=!minecraft:item_frame, type=!minecraft:glow_item_frame, type=!minecraft:painting, distance=..2] run ride @s dismount
$execute as @e[type=!minecraft:armor_stand, type=!minecraft:item_frame, type=!minecraft:glow_item_frame, type=!minecraft:painting, type=!minecraft:player, distance=..2] in $(dimension) positioned $(x) $(y) $(z) run tp @s ~ ~1 ~
$execute as @e[type=!minecraft:armor_stand, type=!minecraft:item_frame, type=!minecraft:glow_item_frame, type=!minecraft:painting, distance=..2] in $(dimension) positioned $(x) $(y) $(z) run tp @s ~ ~1 ~
$execute as @e[distance=..4, type=minecraft:happy_ghast] in $(dimension) positioned $(x) $(y) $(z) run tp @s ~ ~1 ~
# $execute in $(dimension) positioned $(x) $(y) $(z) run tp @s ~ ~1 ~
$playsound block.amethyst_block.break ambient @a $(x) $(y) $(z)
$execute in $(dimension) positioned $(x) $(y) $(z) run particle minecraft:totem_of_undying ~ ~2 ~ 0 0 0 1 100