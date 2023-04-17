# Executed as a player who just used flint and steel, anchored at their eyes
# We'll search for the fire recursively

scoreboard players set @s wp_useFlint 0

# Maximum search depth
scoreboard players set _search_depth temp 30

execute positioned ^ ^ ^0.5 run function woolportals:activate_portal/02_search_for_fire