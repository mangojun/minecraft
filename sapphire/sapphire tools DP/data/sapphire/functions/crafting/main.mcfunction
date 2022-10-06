execute as @e[tag=SapphireCrafter] at @s run data merge entity @s {Facing:2b}

item replace block ~ ~ ~ Slot.0 with minecraft:phantom_membrane{CustomModelData:2, display:{Name:'{"text":""}'}}
execute as @p at @s run clear @s phantom_membrane{CustomModelData:2} 1 