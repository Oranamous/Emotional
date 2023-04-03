data modify storage emotional frame set from entity @s item.tag.frames[0]

execute on passengers if entity @s[type=item_display,tag=emotional.active,tag=emotional.head] run function emotional:pose_part/head
execute on passengers if entity @s[type=item_display,tag=emotional.active,tag=emotional.right_arm] run function emotional:pose_part/right_arm
execute on passengers if entity @s[type=item_display,tag=emotional.active,tag=emotional.left_arm] run function emotional:pose_part/left_arm
execute on passengers if entity @s[type=item_display,tag=emotional.active,tag=emotional.body] run function emotional:pose_part/body
execute on passengers if entity @s[type=item_display,tag=emotional.active,tag=emotional.right_leg] run function emotional:pose_part/right_leg
execute on passengers if entity @s[type=item_display,tag=emotional.active,tag=emotional.left_leg] run function emotional:pose_part/left_leg
execute on passengers if entity @s[type=text_display,tag=emotional.active,tag=emotional.nameplate] run function emotional:pose_part/nameplate

execute as @e[type=item_display,tag=emotional.active,tag=emotional.camera,sort=nearest,limit=1] facing ^ ^ ^-1 positioned ~ ~1.1 ~ run function emotional:adjust_camera

data remove entity @s item.tag.frames[0]
