kill @e[type=item_display,tag=emotional.marker]
kill @e[type=item_display,tag=emotional.head]
kill @e[type=item_display,tag=emotional.right_arm]
kill @e[type=item_display,tag=emotional.left_arm]
kill @e[type=item_display,tag=emotional.body]
kill @e[type=item_display,tag=emotional.right_leg]
kill @e[type=item_display,tag=emotional.left_leg]
kill @e[type=item_display,tag=emotional.shadow]
kill @e[type=text_display,tag=emotional.nameplate]
kill @e[type=item_display,tag=emotional.camera]
execute as @a at @s run function emotional:setup_parts
