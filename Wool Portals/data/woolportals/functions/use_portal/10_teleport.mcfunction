# Teleport!

playsound minecraft:block.lava.pop ambient @a ~ ~ ~ 1 0.5

# Detect if the player is riding an entity so we can bring it along
scoreboard players set _has_vehicle temp 0
execute on vehicle run scoreboard players set _has_vehicle temp 1
tag @e remove temp
execute on vehicle run tag @s add temp

function tps:teleport

# Teleport the player's mount, if any
execute if score _has_vehicle temp matches 1 run teleport @e[tag=temp] @s

# In 1.19.4, teleporting a mount being ridden by a player results in the mount
# and player both not moving. Teleporting the player leaves the mount behind. I
# can teleport the mount separately once the player has teleported away, but if
# I use the command below to try and immediately remount, it just results in
# both player and mount ending up at their original location as if the teleports
# did not happen. Well played, Minecraft.
#ride @s mount @e[tag=temp, limit=1]