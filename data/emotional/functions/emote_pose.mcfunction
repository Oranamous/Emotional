scoreboard players remove @s emotional.emoteTime 1
execute as @e if score @s emotional.emotePlayer = @a[tag=emotional.player,sort=nearest,limit=1] emotional.emotePlayer run tag @s add emotional.active

execute as @e[type=item_display,tag=emotional.active,tag=emotional.marker] positioned as @s run function emotional:emote_pose_marker

tag @e[tag=emotional.active] remove emotional.active
