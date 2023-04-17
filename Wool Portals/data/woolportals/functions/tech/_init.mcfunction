#do all the initial setup, including creating armor stands and setting up scoreboard stuff

say Initializing Wool Portals

data modify storage woolportals:data init set value 1

function woolportals:tech/_disable

scoreboard objectives add temp dummy
scoreboard objectives add woolportals dummy
scoreboard objectives add wp_useFlint minecraft.used:minecraft.flint_and_steel

data modify storage woolportals:data portals set value [{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]