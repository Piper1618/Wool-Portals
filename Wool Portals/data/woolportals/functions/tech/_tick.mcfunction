execute unless data storage woolportals:data init run function woolportals:tech/_init

# Detect player activating a new portal
execute as @a[scores={wp_useFlint=1..}] anchored eyes at @s run function woolportals:light_portal/01_used_flint

# Detect a portal getting broken
# Check every other tick. Otherwise, the chucks will never unload.
scoreboard players add _portal_check woolportals 1
execute if score _portal_check woolportals matches 2.. as @e[tag=wool_portal] at @s run function woolportals:detect_broken_portal/01_check_for_blocks
execute if score _portal_check woolportals matches 2.. run scoreboard players set _portal_check woolportals 0

# Spawn particle effects around portals
execute as @e[tag=wool_portal,tag=side_a] at @s run particle minecraft:dust 0.9 0.9 0.95 1 ~ ~1 ~ 0.2 1 0.2 0 1
execute as @e[tag=wool_portal,tag=side_b] at @s run particle minecraft:dust 1 0.9 0.1 1 ~ ~1 ~ 0.2 1 0.2 0 1

# Handle player using portals
execute as @a at @s run function woolportals:use_portal/01_track_timer
#scoreboard players remove @a[scores={woolportals=1..}] woolportals 1
#execute as @a at @s if entity @e[tag=wool_portal, distance=..1] run scoreboard players add @s woolportals 2