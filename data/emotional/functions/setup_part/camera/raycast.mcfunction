tag @s add emotional.raycast_active
execute positioned ~ ~ ~ unless block ^ ^ ^0.1 air run tag @s remove emotional.raycast_active
execute unless entity @s[distance=..4] run tag @s remove emotional.raycast_active
execute unless entity @s[tag=emotional.raycast_active] run tp @s ~ ~-1.1 ~ ~ ~
execute if entity @s[tag=emotional.raycast_active] positioned ^ ^ ^0.1 run function emotional:setup_part/camera/raycast
