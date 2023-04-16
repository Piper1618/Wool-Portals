# A portal side indicator and wool block has been found.
# Verify the rest of the portal is well formed.

scoreboard players set _portal_check temp 0

# We don't care what these blocks are at this point. We just
# need to make sure they match
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~-1 ~-2 ~-1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-2 ~-1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~1 ~-2 ~-1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~1 ~-2 ~ all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~1 ~-2 ~1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-2 ~1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~-1 ~-2 ~1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~-1 ~-2 ~ all run scoreboard players add _portal_check temp 1

execute if score _portal_check temp matches 8 run function woolportals:light_portal/10_activate_portal