# We know this is a valid place to activate a portal, so activate it

# Replace the metal block with a light source
setblock ~ ~-1 ~ minecraft:light[level=9] replace

# Declaring this here because the marker will add its position to it
data modify storage woolportals:data location set value {active:1}

# Spawn the marker that will track this portal and play a cool sound
execute positioned ~0.5 ~-1 ~0.5 summon minecraft:marker run function woolportals:light_portal/12__init_marker
playsound minecraft:block.respawn_anchor.charge block @a ~0.5 ~ -0.5 1 1.7

# Add the dimension information
execute if dimension minecraft:overworld run data modify storage woolportals:data location.dimension set value 0
execute if dimension minecraft:the_nether run data modify storage woolportals:data location.dimension set value 1
execute if dimension minecraft:the_end run data modify storage woolportals:data location.dimension set value 2

# Add side information
data modify storage woolportals:data portal set value {}
execute if score _portal_side temp matches 0 run data modify storage woolportals:data portal.a set from storage woolportals:data location
execute if score _portal_side temp matches 1 run data modify storage woolportals:data portal.b set from storage woolportals:data location

# Add to appropriate portal
execute if score _portal_color temp matches 00 run data modify storage woolportals:data portals[0] merge from storage woolportals:data portal
execute if score _portal_color temp matches 01 run data modify storage woolportals:data portals[1] merge from storage woolportals:data portal
execute if score _portal_color temp matches 02 run data modify storage woolportals:data portals[2] merge from storage woolportals:data portal
execute if score _portal_color temp matches 03 run data modify storage woolportals:data portals[3] merge from storage woolportals:data portal
execute if score _portal_color temp matches 04 run data modify storage woolportals:data portals[4] merge from storage woolportals:data portal
execute if score _portal_color temp matches 05 run data modify storage woolportals:data portals[5] merge from storage woolportals:data portal
execute if score _portal_color temp matches 06 run data modify storage woolportals:data portals[6] merge from storage woolportals:data portal
execute if score _portal_color temp matches 07 run data modify storage woolportals:data portals[7] merge from storage woolportals:data portal
execute if score _portal_color temp matches 08 run data modify storage woolportals:data portals[8] merge from storage woolportals:data portal
execute if score _portal_color temp matches 09 run data modify storage woolportals:data portals[9] merge from storage woolportals:data portal
execute if score _portal_color temp matches 10 run data modify storage woolportals:data portals[10] merge from storage woolportals:data portal
execute if score _portal_color temp matches 11 run data modify storage woolportals:data portals[11] merge from storage woolportals:data portal
execute if score _portal_color temp matches 12 run data modify storage woolportals:data portals[12] merge from storage woolportals:data portal
execute if score _portal_color temp matches 13 run data modify storage woolportals:data portals[13] merge from storage woolportals:data portal
execute if score _portal_color temp matches 14 run data modify storage woolportals:data portals[14] merge from storage woolportals:data portal
execute if score _portal_color temp matches 15 run data modify storage woolportals:data portals[15] merge from storage woolportals:data portal