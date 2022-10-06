scoreboard players set #6 time 6
scoreboard players set #24 time 24
scoreboard players set #60 time 60
scoreboard players set #100 time 100
execute store result score [hour] time run time query daytime
execute store result score [minu] time run time query daytime

scoreboard players operation [hour] time *= #6 time
scoreboard players operation [hour] time /= #100 time
scoreboard players operation [hour] time /= #60 time
scoreboard players operation [hour] time += #6 time
execute if score [hour] time >= #24 time run scoreboard players operation [hour] time -= #24 time

scoreboard players operation [minu] time *= #6 time
scoreboard players operation [minu] time /= #100 time
scoreboard players operation [minu] time %= #60 time

execute as @a[nbt={"SelectedItem":{"id":"minecraft:clock"}}] run title @s actionbar [{"score":{"name":"[hour]", "objective":"time"}}, {"text":"시 "}, {"score":{"name":"[minu]", "objective":"time"}}, {"text":"분"}]