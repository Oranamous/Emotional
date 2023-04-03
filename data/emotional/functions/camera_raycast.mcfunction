execute positioned ~ ~ ~ unless block ^ ^ ^0.1 air run tag @s remove emotional.raycast_active
execute positioned ~ ~-1.1 ~ unless entity @e[type=item_display,tag=emotional.active,tag=emotional.marker,distance=..4] run tag @s remove emotional.raycast_active
execute unless entity @s[tag=emotional.raycast_active] run tp @s ~ ~-1.1 ~ ~ ~
execute if entity @s[tag=emotional.raycast_active] positioned ^ ^ ^0.1 run function emotional:camera_raycast
