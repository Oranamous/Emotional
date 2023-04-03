execute if entity @s[tag=emotional.gm_adventure] run gamemode adventure
execute if entity @s[tag=emotional.gm_creative] run gamemode creative
execute if entity @s[tag=emotional.gm_survival] run gamemode survival
tag @s remove emotional.gm_adventure
tag @s remove emotional.gm_creative
tag @s remove emotional.gm_survival

execute as @e[type=item_display,tag=emotional.marker] if score @s emotional.emotePlayer = @a[tag=emotional.player,sort=nearest,limit=1] emotional.emotePlayer at @s run tp @a[tag=emotional.player,sort=nearest,limit=1] @s

execute as @e[type=item_display] if score @s emotional.emotePlayer = @a[tag=emotional.player,sort=nearest,limit=1] emotional.emotePlayer run kill @s
execute as @e[type=text_display,tag=emotional.nameplate] if score @s emotional.emotePlayer = @a[tag=emotional.player,sort=nearest,limit=1] emotional.emotePlayer run kill @s

tag @s remove emotional.emote
scoreboard players reset @s emotional.emote
