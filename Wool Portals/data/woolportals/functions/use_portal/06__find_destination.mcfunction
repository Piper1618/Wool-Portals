# Called as a portal marker to find where to teleport to

# Extract the portal data for this portal
data modify storage woolportals:portal location set value {}
execute as @s[tag=color_00] run data modify storage woolportals:data portal set from storage woolportals:data portals[0]
execute as @s[tag=color_01] run data modify storage woolportals:data portal set from storage woolportals:data portals[1]
execute as @s[tag=color_02] run data modify storage woolportals:data portal set from storage woolportals:data portals[2]
execute as @s[tag=color_03] run data modify storage woolportals:data portal set from storage woolportals:data portals[3]
execute as @s[tag=color_04] run data modify storage woolportals:data portal set from storage woolportals:data portals[4]
execute as @s[tag=color_05] run data modify storage woolportals:data portal set from storage woolportals:data portals[5]
execute as @s[tag=color_06] run data modify storage woolportals:data portal set from storage woolportals:data portals[6]
execute as @s[tag=color_07] run data modify storage woolportals:data portal set from storage woolportals:data portals[7]
execute as @s[tag=color_08] run data modify storage woolportals:data portal set from storage woolportals:data portals[8]
execute as @s[tag=color_09] run data modify storage woolportals:data portal set from storage woolportals:data portals[9]
execute as @s[tag=color_10] run data modify storage woolportals:data portal set from storage woolportals:data portals[10]
execute as @s[tag=color_11] run data modify storage woolportals:data portal set from storage woolportals:data portals[11]
execute as @s[tag=color_12] run data modify storage woolportals:data portal set from storage woolportals:data portals[12]
execute as @s[tag=color_13] run data modify storage woolportals:data portal set from storage woolportals:data portals[13]
execute as @s[tag=color_14] run data modify storage woolportals:data portal set from storage woolportals:data portals[14]
execute as @s[tag=color_15] run data modify storage woolportals:data portal set from storage woolportals:data portals[15]

# Extract the side data for the opposite side of the portal
data modify storage woolportals:data location set value {active: 0}
execute as @s[tag=side_a] run data modify storage woolportals:data location set from storage woolportals:data portal.b
execute as @s[tag=side_b] run data modify storage woolportals:data location set from storage woolportals:data portal.a

# Check the portal is active and set scoreboard values if it is
execute store result score _portal_active temp run data get storage woolportals:data location.active
execute if score _portal_active temp matches 1 run function woolportals:use_portal/07__set_tps_scoreboard