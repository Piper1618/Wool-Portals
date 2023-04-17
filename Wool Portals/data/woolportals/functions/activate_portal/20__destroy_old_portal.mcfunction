# Called when activating a new portal to destroy old portal, if one exists.
# It is NOT known if an old portal exists when this function is called.

# Extract the portal data for this portal
data modify storage woolportals:data location set value {}
execute if score _portal_color temp matches 00 run data modify storage woolportals:data portal set from storage woolportals:data portals[0]
execute if score _portal_color temp matches 01 run data modify storage woolportals:data portal set from storage woolportals:data portals[1]
execute if score _portal_color temp matches 02 run data modify storage woolportals:data portal set from storage woolportals:data portals[2]
execute if score _portal_color temp matches 03 run data modify storage woolportals:data portal set from storage woolportals:data portals[3]
execute if score _portal_color temp matches 04 run data modify storage woolportals:data portal set from storage woolportals:data portals[4]
execute if score _portal_color temp matches 05 run data modify storage woolportals:data portal set from storage woolportals:data portals[5]
execute if score _portal_color temp matches 06 run data modify storage woolportals:data portal set from storage woolportals:data portals[6]
execute if score _portal_color temp matches 07 run data modify storage woolportals:data portal set from storage woolportals:data portals[7]
execute if score _portal_color temp matches 08 run data modify storage woolportals:data portal set from storage woolportals:data portals[8]
execute if score _portal_color temp matches 09 run data modify storage woolportals:data portal set from storage woolportals:data portals[9]
execute if score _portal_color temp matches 10 run data modify storage woolportals:data portal set from storage woolportals:data portals[10]
execute if score _portal_color temp matches 11 run data modify storage woolportals:data portal set from storage woolportals:data portals[11]
execute if score _portal_color temp matches 12 run data modify storage woolportals:data portal set from storage woolportals:data portals[12]
execute if score _portal_color temp matches 13 run data modify storage woolportals:data portal set from storage woolportals:data portals[13]
execute if score _portal_color temp matches 14 run data modify storage woolportals:data portal set from storage woolportals:data portals[14]
execute if score _portal_color temp matches 15 run data modify storage woolportals:data portal set from storage woolportals:data portals[15]

# Extract the side data for the pre-existing portal
data modify storage woolportals:data location set value {active: 0}
execute if score _portal_side temp matches 0 run data modify storage woolportals:data location set from storage woolportals:data portal.a
execute if score _portal_side temp matches 1 run data modify storage woolportals:data location set from storage woolportals:data portal.b

# Check the portal is active and destroy it if it is
execute store result score _portal_active temp run data get storage woolportals:data location.active
execute if score _portal_active temp matches 1 run function woolportals:activate_portal/21__create_portal_destroyer