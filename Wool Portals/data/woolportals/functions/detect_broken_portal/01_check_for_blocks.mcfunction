# Called as each portal marker to make sure the portal hasn't been broken.
# Must be called at the marker's location.

scoreboard players set _portal_check temp 0

# Check the block under the marker is a valid portal material.
# For convenience, we're not checking if it's the same material
# that was used to make the portal.
execute if block ~ ~-1 ~ #minecraft:wool run scoreboard players add _portal_check temp 1

# Check the surrounding blocks are the same type as the middle one.
execute if blocks ~ ~-1 ~ ~ ~-1 ~ ~-1 ~-1 ~-1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-1 ~ ~ ~-1 ~ ~ ~-1 ~-1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-1 ~ ~ ~-1 ~ ~1 ~-1 ~-1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-1 ~ ~ ~-1 ~ ~1 ~-1 ~ all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-1 ~ ~ ~-1 ~ ~1 ~-1 ~1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-1 ~ ~ ~-1 ~ ~ ~-1 ~1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-1 ~ ~ ~-1 ~ ~-1 ~-1 ~1 all run scoreboard players add _portal_check temp 1
execute if blocks ~ ~-1 ~ ~ ~-1 ~ ~-1 ~-1 ~ all run scoreboard players add _portal_check temp 1

# Ensure the surrounding area is loaded.
# Otherwise, a break may be detected if a chunk boundary
# intersects the portal and only half is loaded.
execute unless loaded ~-16 ~ ~-16 run scoreboard players set _portal_check temp 9
execute unless loaded ~16 ~ ~-16 run scoreboard players set _portal_check temp 9
execute unless loaded ~16 ~ ~16 run scoreboard players set _portal_check temp 9
execute unless loaded ~-16 ~ ~16 run scoreboard players set _portal_check temp 9

# If a break is detected, destroy the portal
execute unless score _portal_check temp matches 9 run function woolportals:detect_broken_portal/05_break_portal