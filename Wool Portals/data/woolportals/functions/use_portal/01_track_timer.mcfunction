# Called as each player at their position once per tick

# Initialize timer if needed
execute unless score @s woolportals matches -1000..1000 run scoreboard players set @s woolportals 0

# Score goes up when close to portal and down when far away.
# But score does not change if it is negative
scoreboard players remove @s[scores={woolportals=1..}] woolportals 1
execute as @s[scores={woolportals=0..}] if entity @e[tag=wool_portal, distance=..1] run scoreboard players add @s woolportals 2

# Stop the player from immediately activating the portal at the end end after
# a teleport.
# A score of -100 is set when teleporting. Update this to -101 once we confirm
# the player has arrived at the other side, which may take several ticks. Once
# the player steps away from the portal at the destination, set the score back
# to 0.
execute if entity @e[tag=wool_portal, distance=..2] run scoreboard players set @s[scores={woolportals=-100}] woolportals -101
execute as @s[scores={woolportals=-101}] unless entity @e[tag=wool_portal, distance=..2] run scoreboard players set @s woolportals 0

# Detect when the player should attempt to go through a portal
execute as @s[scores={woolportals=30..}] run function woolportals:use_portal/05_try_teleport