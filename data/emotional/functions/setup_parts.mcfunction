execute rotated ~ 0 summon item_display run function emotional:setup_part/marker
execute rotated ~ 0 summon item_display run function emotional:setup_part/head
execute rotated ~ 0 summon item_display run function emotional:setup_part/right_arm
execute rotated ~ 0 summon item_display run function emotional:setup_part/left_arm
execute rotated ~ 0 summon item_display run function emotional:setup_part/body
execute rotated ~ 0 summon item_display run function emotional:setup_part/right_leg
execute rotated ~ 0 summon item_display run function emotional:setup_part/left_leg
execute rotated ~ 0 summon item_display run function emotional:setup_part/shadow
execute rotated ~ 0 summon text_display run function emotional:setup_part/nameplate
execute rotated ~ ~ summon item_display run function emotional:setup_part/camera

ride @e[type=item_display,tag=emotional.new,tag=emotional.head,sort=nearest,limit=1] mount @e[type=item_display,tag=emotional.new,tag=emotional.marker,sort=nearest,limit=1]
ride @e[type=item_display,tag=emotional.new,tag=emotional.right_arm,sort=nearest,limit=1] mount @e[type=item_display,tag=emotional.new,tag=emotional.marker,sort=nearest,limit=1]
ride @e[type=item_display,tag=emotional.new,tag=emotional.left_arm,sort=nearest,limit=1] mount @e[type=item_display,tag=emotional.new,tag=emotional.marker,sort=nearest,limit=1]
ride @e[type=item_display,tag=emotional.new,tag=emotional.body,sort=nearest,limit=1] mount @e[type=item_display,tag=emotional.new,tag=emotional.marker,sort=nearest,limit=1]
ride @e[type=item_display,tag=emotional.new,tag=emotional.right_leg,sort=nearest,limit=1] mount @e[type=item_display,tag=emotional.new,tag=emotional.marker,sort=nearest,limit=1]
ride @e[type=item_display,tag=emotional.new,tag=emotional.left_leg,sort=nearest,limit=1] mount @e[type=item_display,tag=emotional.new,tag=emotional.marker,sort=nearest,limit=1]
ride @e[type=text_display,tag=emotional.new,tag=emotional.nameplate,sort=nearest,limit=1] mount @e[type=item_display,tag=emotional.new,tag=emotional.marker,sort=nearest,limit=1]
