tellraw @a [{"text":"Emotional","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Made by Oranamous"}]},"clickEvent":{"action":"open_url","value":"https://modrinth.com/user/Oranamous"}},{"text":" loaded!","color":"white"}]

scoreboard objectives add emote trigger
scoreboard objectives add emotional.temp dummy
scoreboard objectives add emotional.emotePlayer dummy
execute unless score .total emotional.emotePlayer matches 0.. run scoreboard players set .total emotional.emotePlayer 0
scoreboard objectives add emotional.emoteTime dummy
scoreboard objectives add emotional.leave minecraft.custom:minecraft.leave_game
scoreboard objectives add emotional.emote dummy
