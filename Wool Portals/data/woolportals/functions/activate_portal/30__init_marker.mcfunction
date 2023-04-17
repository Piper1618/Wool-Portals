# Executed as the new marker

tag @s add wool_portal

execute if score _portal_side temp matches 0 run tag @s add side_a
execute if score _portal_side temp matches 1 run tag @s add side_b

execute if score _portal_color temp matches 00 run tag @s add color_00
execute if score _portal_color temp matches 01 run tag @s add color_01
execute if score _portal_color temp matches 02 run tag @s add color_02
execute if score _portal_color temp matches 03 run tag @s add color_03
execute if score _portal_color temp matches 04 run tag @s add color_04
execute if score _portal_color temp matches 05 run tag @s add color_05
execute if score _portal_color temp matches 06 run tag @s add color_06
execute if score _portal_color temp matches 07 run tag @s add color_07
execute if score _portal_color temp matches 08 run tag @s add color_08
execute if score _portal_color temp matches 09 run tag @s add color_09
execute if score _portal_color temp matches 10 run tag @s add color_10
execute if score _portal_color temp matches 11 run tag @s add color_11
execute if score _portal_color temp matches 12 run tag @s add color_12
execute if score _portal_color temp matches 13 run tag @s add color_13
execute if score _portal_color temp matches 14 run tag @s add color_14
execute if score _portal_color temp matches 15 run tag @s add color_15

execute store result storage woolportals:data location.x int 1 run data get entity @s Pos[0]
execute store result storage woolportals:data location.y int 1 run data get entity @s Pos[1]
execute store result storage woolportals:data location.z int 1 run data get entity @s Pos[2]