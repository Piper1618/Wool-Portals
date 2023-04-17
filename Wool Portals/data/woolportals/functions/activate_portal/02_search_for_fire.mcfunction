
execute align xyz if block ~ ~ ~ minecraft:fire run function woolportals:activate_portal/03_found_fire

scoreboard players remove _search_depth temp 1

execute if score _search_depth temp matches 1.. positioned ^ ^ ^0.2 run function woolportals:activate_portal/02_search_for_fire