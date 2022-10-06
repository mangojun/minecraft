summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:phantom_membrane", Count:4, tag:{display:{Name:'{"text":"사파이어", "italic":False}'}, CustomModelData:1}}}
kill @e[type=item, nbt={Item:{id:"minecraft:lapis_ore"}}, distance=0..2, sort=nearest, limit=1]
kill @e[type=item, nbt={Item:{id:"minecraft:lapis_lazuli"}}, distance=0..2, sort=nearest, limit=1]
kill @s