# Called as a player to attempt a teleport

# Prevent the player activating another portal immediately
scoreboard players set @s woolportals -100

# Find the destination (and check it exists)
execute as @e[tag=wool_portal, distance=..10, sort=nearest, limit=1] run function woolportals:use_portal/06__find_destination

# Check that Teleport Scoreboard is installed
data remove storage tps:data verify
function tps:verify
execute unless data storage tps:data verify run tellraw @a ["",{"text":"Required data pack is missing: ","color":"dark_red"},"Teleport Scoreboard\n",{"text":"Download it here","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Piper1618/Teleport-Scoreboard"}}]

# Teleport to the destination, if one exists
execute if data storage tps:data verify if score _portal_active temp matches 1 run function woolportals:use_portal/10_teleport

# Prevent the sound of going through a portal from playing if the portal is
# not active.
execute if score _portal_active temp matches 0 run scoreboard players set @s woolportals -101