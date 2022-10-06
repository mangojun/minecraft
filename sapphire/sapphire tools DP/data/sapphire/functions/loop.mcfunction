execute as @e[type=minecraft:glow_item_frame, tag=SapphireBlock, tag=!placed] at @s run function sapphire:block/place
execute as @e[type=minecraft:glow_item_frame, tag=SapphireBlock, tag=placed] at @s unless block ~ ~ ~ minecraft:lapis_block run function sapphire:block/break

execute as @e[type=minecraft:glow_item_frame, tag=SapphireOre, tag=!placed] at @s run function sapphire:ore/place
execute as @e[type=minecraft:glow_item_frame, tag=SapphireOre, tag=placed] at @s unless block ~ ~ ~ minecraft:lapis_ore run function sapphire:ore/break

execute as @e[type=minecraft:glow_item_frame, tag=SapphireCrafter, tag=!placed] at @s run function sapphire:crafter/place
execute as @e[type=minecraft:glow_item_frame, tag=SapphireCrafter, tag=placed] at @s unless block ~ ~ ~ minecraft:barrel run function sapphire:crafter/break

execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe", tag:{CustomModelData:1, HideFlags:4, Unbreakable:true, display:{Name:'{"text":"사파이어 곡괭이", "italic":False}'}}}}] at @s run effect give @s minecraft:haste 1 255 true
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_hoe", tag:{CustomModelData:1, HideFlags:4, Unbreakable:true, display:{Name:'{"text":"사파이어 괭이", "italic":False}'}}}}] at @s run effect give @s minecraft:saturation 30 255 true

execute as @e[tag=SapphireCrafter] at @s run function sapphire:crafting/main