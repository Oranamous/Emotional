execute if entity @s[gamemode=adventure] run tag @s add emotional.gm_adventure
execute if entity @s[gamemode=creative] run tag @s add emotional.gm_creative
execute if entity @s[gamemode=survival] run tag @s add emotional.gm_survival

function emotional:setup_parts
scoreboard players operation @e[tag=emotional.new] emotional.emotePlayer = @s emotional.emotePlayer

gamemode spectator
ride @s mount @e[type=item_display,tag=emotional.new,tag=emotional.camera,sort=nearest,limit=1]

tag @e[tag=emotional.new] remove emotional.new
tag @s add emotional.emote

function emotional:emote_load

scoreboard players operation @s emotional.emote = @s emote
scoreboard players reset @s emote
