execute store success score transformation emotional.temp run data modify entity @s transformation.translation set from storage emotional frame.right_arm.translation
execute store success score rotation emotional.temp run data modify entity @s transformation.left_rotation set from storage emotional frame.right_arm.rotation
scoreboard players operation transformation emotional.temp += rotation emotional.temp
execute if score transformation emotional.temp matches 1.. run data merge entity @s {interpolation_duration:1,start_interpolation:0}
