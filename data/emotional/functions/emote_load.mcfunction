function #emotional:load

tag @s add emotional.player
execute as @e[type=item_display,tag=emotional.marker] if score @s emotional.emotePlayer = @a[tag=emotional.player,sort=nearest,limit=1] emotional.emotePlayer run data modify entity @s item.tag.frames set from storage emotional frames
tag @s remove emotional.player
data remove storage emotional frames
