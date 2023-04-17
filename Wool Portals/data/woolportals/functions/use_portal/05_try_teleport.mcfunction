# Called as a player to attempt a teleport

# Find the destination (and check it exists)
execute as @e[tag=wool_portal, distance=..10, sort=nearest, limit=1] run function woolportals:use_portal/06__find_destination

# Teleport to the destination, if one exists
execute if score _portal_active temp matches 1 run function woolportals:use_portal/10_teleport

# Prevent the player activating another portal immediately
scoreboard players set @s woolportals -100