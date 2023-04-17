# A fire tile has been found, so stop search and check to see
# if it's a valid portal location.

# Stop search for fire
scoreboard players set _search_depth temp -1

# Check for portal

scoreboard players set _portal_side temp -1
# 0 = iron; 1 = gold
scoreboard players set _portal_color temp -1
# 0     1      2       3          4      5    6    7
# White Orange Magenta Light-Blue Yellow Lime Pink Gray
# 8          9    10     11   12    13    14  15
# Light-Gray Cyan Purple Blue Brown Green Red Black

execute if block ~ ~-1 ~ minecraft:iron_block run scoreboard players set _portal_side temp 0
execute if block ~ ~-1 ~ minecraft:gold_block run scoreboard players set _portal_side temp 1

execute if block ~ ~-2 ~ minecraft:white_wool run scoreboard players set _portal_color temp 0
execute if block ~ ~-2 ~ minecraft:orange_wool run scoreboard players set _portal_color temp 1
execute if block ~ ~-2 ~ minecraft:magenta_wool run scoreboard players set _portal_color temp 2
execute if block ~ ~-2 ~ minecraft:light_blue_wool run scoreboard players set _portal_color temp 3
execute if block ~ ~-2 ~ minecraft:yellow_wool run scoreboard players set _portal_color temp 4
execute if block ~ ~-2 ~ minecraft:lime_wool run scoreboard players set _portal_color temp 5
execute if block ~ ~-2 ~ minecraft:pink_wool run scoreboard players set _portal_color temp 6
execute if block ~ ~-2 ~ minecraft:gray_wool run scoreboard players set _portal_color temp 7
execute if block ~ ~-2 ~ minecraft:light_gray_wool run scoreboard players set _portal_color temp 8
execute if block ~ ~-2 ~ minecraft:cyan_wool run scoreboard players set _portal_color temp 9
execute if block ~ ~-2 ~ minecraft:purple_wool run scoreboard players set _portal_color temp 10
execute if block ~ ~-2 ~ minecraft:blue_wool run scoreboard players set _portal_color temp 11
execute if block ~ ~-2 ~ minecraft:brown_wool run scoreboard players set _portal_color temp 12
execute if block ~ ~-2 ~ minecraft:green_wool run scoreboard players set _portal_color temp 13
execute if block ~ ~-2 ~ minecraft:red_wool run scoreboard players set _portal_color temp 14
execute if block ~ ~-2 ~ minecraft:black_wool run scoreboard players set _portal_color temp 15

# Found side and color blocks
execute if score _portal_side temp matches 0.. if score _portal_color temp matches 0.. run function woolportals:activate_portal/06_verify_portal