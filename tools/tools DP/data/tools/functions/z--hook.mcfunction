execute as @a[nbt={SelectedItem:{id:"minecraft:bow", tag:{display:{Name:'{"text":"그래플링 후크", "italic":False}'}}}}] at @s run item replace entity @s weapon.offhand with minecraft:arrow
execute as @a[nbt=!{SelectedItem:{id:"minecraft:bow", tag:{display:{Name:'{"text":"그래플링 후크", "italic":False}'}}}}] at @s run item replace entity @s weapon.offhand with minecraft:air
execute as @a[nbt={SelectedItem:{id:"minecraft:bow", tag:{display:{Name:'{"text":"그래플링 후크", "italic":False}'}}}}] at @s run effect give @s minecraft:resistance 1 4 true
execute as @e[type=minecraft:arrow] at @s run data merge entity @s {pickup:0}
execute as @e[type=minecraft:arrow, nbt={inGround:true}] at @s unless entity @e[type=bat] run summon bat ~ ~ ~ {NoAI:true, Tags:["hook"], Silent:true, Invulnerable:true}
execute as @e[tag=hook] at @s run effect give @s minecraft:invisibility 1 0 true
execute as @e[tag=hook] at @s run effect give @a[nbt={SelectedItem:{id:"minecraft:bow", tag:{display:{Name:'{"text":"그래플링 후크", "italic":False}'}}}}] minecraft:levitation 1 255 true
execute as @e[tag=hook] at @s run data merge entity @s {Leash:{UUID:[I; -456447477, 2063027230, -1507491484, -732259198]}}
execute as @a[nbt={SelectedItem:{id:"minecraft:bow", tag:{display:{Name:'{"text":"그래플링 후크", "italic":False}'}}}}] at @s run tp @s ^ ^ ^1 facing entity @e[tag=hook, limit=1, sort=nearest]
execute as @e[tag=hook] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:bow", tag:{display:{Name:'{"text":"그래플링 후크", "italic":False}'}}}}, distance=..1] run kill @e[type=arrow, limit=1, sort=nearest]
execute as @e[tag=hook] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:bow", tag:{display:{Name:'{"text":"그래플링 후크", "italic":False}'}}}}, distance=..1] run kill @s
execute as @a[nbt={SelectedItem:{id:"minecraft:bow", tag:{display:{Name:'{"text":"그래플링 후크", "italic":False}'}}}}] at @s if entity @e[tag=hook, distance=..3] run effect clear @s minecraft:levitation
execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:lead"}}] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:bow", tag:{display:{Name:'{"text":"그래플링 후크", "italic":False}'}}}}, distance=..3] run kill @s