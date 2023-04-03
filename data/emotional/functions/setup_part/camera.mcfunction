tag @s add emotional.new
tag @s add emotional.camera
tp @s ~ ~1.1 ~ ~ ~
execute at @s run tp @s ~ ~ ~ facing ^ ^ ^-1
execute at @s run function emotional:setup_part/camera/raycast
