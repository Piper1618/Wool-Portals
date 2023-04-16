execute unless data storage woolportals:data init run function woolportals:tech/_init

execute as @a[scores={wp_useFlint=1..}] anchored eyes at @s run function woolportals:light_portal/01_used_flint

# Spawn particle effects around portals
execute as @e[tag=wool_portal,tag=side_a] at @s run particle minecraft:dust 0.9 0.9 0.95 1 ~ ~1 ~ 0.2 1 0.2 0 1
execute as @e[tag=wool_portal,tag=side_b] at @s run particle minecraft:dust 1 0.9 0.1 1 ~ ~1 ~ 0.2 1 0.2 0 1