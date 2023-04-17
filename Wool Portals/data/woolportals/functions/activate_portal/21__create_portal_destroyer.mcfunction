# We'll destory the old portal by sending a destroyer marker to the same
# location. This marker will destroy the old portal next time the chunk is
# loaded. If it is currently loaded, it will be destoryed immediately.

# Set the Teleport Scoreboard (tps) values needed to teleport
execute store result score _x tps run data get storage woolportals:data location.x
execute store result score _y tps run data get storage woolportals:data location.y
execute store result score _z tps run data get storage woolportals:data location.z
execute store result score _dimension tps run data get storage woolportals:data location.dimension

# Create the destroyer marker
execute positioned ~ ~ ~ summon minecraft:marker run function woolportals:activate_portal/22__place_portal_destoryer