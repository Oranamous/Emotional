scoreboard players enable @a[tag=!emotional.emote] emote
execute as @a if score @s emote matches 1 run function emotional:list_emotes
execute as @a[tag=!emotional.emote] if score @s emote matches 2.. at @s run function emotional:emote_start
scoreboard players set @a[tag=!emotional.emote] emote 0

execute as @a unless score @s emotional.emotePlayer matches 0.. run function emotional:id/assign
execute as @a[tag=emotional.emote] run function emotional:emote_tick

kill @e[type=armor_stand,tag=emotional.damage,nbt={OnGround:1b}]
