summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:glow_item_frame", Count:1, tag:{display:{Name:'{"text":"사파이어 제작대", "italic":False}'}, CustomModelData:3, EntityTag:{Silent:true, Tags:["SapphireCrafter"], Item:{id:"minecraft:glow_item_frame", Count:1, tag:{CustomModelData:3}}, Invulnerable:true, Invisible:true, Fixed:true}}}}
kill @e[type=item, nbt={Item:{id:"minecraft:barrel"}}, distance=0..2, sort=nearest, limit=1]
kill @e[type=item, nbt={Item:{id:"minecraft:phantom_membrane"}}, distance=0..2, sort=nearest, limit=1]
kill @s