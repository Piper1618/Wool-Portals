# Teleport!

playsound minecraft:block.lava.pop ambient @a ~ ~ ~ 1 0.5

tag @e remove temp
tag @e remove teleporting
tag @s add teleporting

# Detect if the player is riding an entity so we can bring it along
scoreboard players set _has_vehicle temp 0
execute on vehicle run scoreboard players set _has_vehicle temp 1
execute on vehicle run tag @s add temp

# Detect leashed mobs
# This method has a small chance of error because we're only checking one
# quarter of the uuid.
execute as @s store result score @s temp run data get entity @s UUID[0]
execute as @e[distance=..12] store result score @s woolportals_leash run data get entity @s Leash.UUID[0]
execute as @e[distance=..12] if score @s woolportals_leash = @a[tag=teleporting, limit=1] temp run tag @s add temp

function tps:teleport

# Teleport the player's mount, if any
teleport @e[tag=temp] @s

# In 1.19.4, teleporting a mount being ridden by a player results in the mount
# and player both not moving. Teleporting the player leaves the mount behind. I
# can teleport the mount separately once the player has teleported away, but if
# I use the command below to try and immediately remount, it just results in
# both player and mount ending up at their original location as if the teleports
# did not happen. Well played, Minecraft.
#ride @s mount @e[tag=temp, limit=1]