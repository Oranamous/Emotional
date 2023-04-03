tag @s add emotional.new
tag @s add emotional.nameplate
tp @s ~ ~ ~ ~ ~
data merge entity @s {transformations:{translation:[0f,2f,0f],rotation:[0f,0f,0f,1f]},billboard:"center",text:'{"nbt":"HeadItem.tag.SkullOwner.Name","storage":"emotional"}'}
