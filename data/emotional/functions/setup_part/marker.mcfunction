tag @s add emotional.new
tag @s add emotional.marker
tp @s ~ ~ ~ ~ ~
execute as @p run loot replace entity @e[type=item_display,tag=emotional.new,sort=nearest,limit=1] container.0 loot emotional:give_head
data modify storage emotional HeadItem set from entity @s item
data merge entity @s {transformation:{scale:[0.0,0.0,0.0]}}
