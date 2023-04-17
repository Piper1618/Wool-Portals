
# Remove the light block, if present
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light

# Disable portal in data
execute as @s[tag=color_00,tag=side_a] run data modify storage woolportals:data portals[0].a.active set value 0
execute as @s[tag=color_00,tag=side_b] run data modify storage woolportals:data portals[0].b.active set value 0
execute as @s[tag=color_01,tag=side_a] run data modify storage woolportals:data portals[1].a.active set value 0
execute as @s[tag=color_01,tag=side_b] run data modify storage woolportals:data portals[1].b.active set value 0
execute as @s[tag=color_02,tag=side_a] run data modify storage woolportals:data portals[2].a.active set value 0
execute as @s[tag=color_02,tag=side_b] run data modify storage woolportals:data portals[2].b.active set value 0
execute as @s[tag=color_03,tag=side_a] run data modify storage woolportals:data portals[3].a.active set value 0
execute as @s[tag=color_03,tag=side_b] run data modify storage woolportals:data portals[3].b.active set value 0
execute as @s[tag=color_04,tag=side_a] run data modify storage woolportals:data portals[4].a.active set value 0
execute as @s[tag=color_04,tag=side_b] run data modify storage woolportals:data portals[4].b.active set value 0
execute as @s[tag=color_05,tag=side_a] run data modify storage woolportals:data portals[5].a.active set value 0
execute as @s[tag=color_05,tag=side_b] run data modify storage woolportals:data portals[5].b.active set value 0
execute as @s[tag=color_06,tag=side_a] run data modify storage woolportals:data portals[6].a.active set value 0
execute as @s[tag=color_06,tag=side_b] run data modify storage woolportals:data portals[6].b.active set value 0
execute as @s[tag=color_07,tag=side_a] run data modify storage woolportals:data portals[7].a.active set value 0
execute as @s[tag=color_07,tag=side_b] run data modify storage woolportals:data portals[7].b.active set value 0
execute as @s[tag=color_08,tag=side_a] run data modify storage woolportals:data portals[8].a.active set value 0
execute as @s[tag=color_08,tag=side_b] run data modify storage woolportals:data portals[8].b.active set value 0
execute as @s[tag=color_09,tag=side_a] run data modify storage woolportals:data portals[9].a.active set value 0
execute as @s[tag=color_09,tag=side_b] run data modify storage woolportals:data portals[9].b.active set value 0
execute as @s[tag=color_10,tag=side_a] run data modify storage woolportals:data portals[10].a.active set value 0
execute as @s[tag=color_10,tag=side_b] run data modify storage woolportals:data portals[10].b.active set value 0
execute as @s[tag=color_11,tag=side_a] run data modify storage woolportals:data portals[11].a.active set value 0
execute as @s[tag=color_11,tag=side_b] run data modify storage woolportals:data portals[11].b.active set value 0
execute as @s[tag=color_12,tag=side_a] run data modify storage woolportals:data portals[12].a.active set value 0
execute as @s[tag=color_12,tag=side_b] run data modify storage woolportals:data portals[12].b.active set value 0
execute as @s[tag=color_13,tag=side_a] run data modify storage woolportals:data portals[13].a.active set value 0
execute as @s[tag=color_13,tag=side_b] run data modify storage woolportals:data portals[13].b.active set value 0
execute as @s[tag=color_14,tag=side_a] run data modify storage woolportals:data portals[14].a.active set value 0
execute as @s[tag=color_14,tag=side_b] run data modify storage woolportals:data portals[14].b.active set value 0
execute as @s[tag=color_15,tag=side_a] run data modify storage woolportals:data portals[15].a.active set value 0
execute as @s[tag=color_15,tag=side_b] run data modify storage woolportals:data portals[15].b.active set value 0

# Play sound effect
playsound minecraft:block.glass.break block @a ~ ~ ~ 1 0.6

# Destroy the marker entity
kill @s