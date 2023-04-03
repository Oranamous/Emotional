tag @s add emotional.player
execute as @e[type=item_display,tag=emotional.camera] if score @s emotional.emotePlayer = @a[tag=emotional.player,sort=nearest,limit=1] emotional.emotePlayer run ride @a[tag=emotional.player,sort=nearest,limit=1] mount @s
execute if score @s emotional.emoteTime matches 0 run function emotional:emote_end
execute if score @s emotional.emoteTime matches 1.. rotated as @s run function emotional:emote_pose
tag @s remove emotional.player
particle flame ~ ~ ~
