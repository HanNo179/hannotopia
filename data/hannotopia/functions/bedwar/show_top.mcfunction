execute as @a[nbt={Dimension:"minecraft:bedwar"}] run scoreboard players operation @s bw_math = @s bw_kill_out
execute as @a[nbt={Dimension:"minecraft:bedwar"}] run scoreboard players operation @s bw_math > @a[nbt={Dimension:"minecraft:bedwar"}] bw_math
execute as @a[nbt={Dimension:"minecraft:bedwar"}] if score @s bw_math = @s bw_kill_out run tag @s add bw_top_kill

execute as @a[nbt={Dimension:"minecraft:bedwar"}] run scoreboard players operation @s bw_math = @s bw_kill_in
execute as @a[nbt={Dimension:"minecraft:bedwar"}] run scoreboard players operation @s bw_math > @a[nbt={Dimension:"minecraft:bedwar"}] bw_math
execute as @a[nbt={Dimension:"minecraft:bedwar"}] if score @s bw_math = @s bw_kill_in run tag @s add bw_top_killed

execute as @a[nbt={Dimension:"minecraft:bedwar"}] run scoreboard players operation @s bw_math = @s bw_dmg_out
execute as @a[nbt={Dimension:"minecraft:bedwar"}] run scoreboard players operation @s bw_math > @a[nbt={Dimension:"minecraft:bedwar"}] bw_math
execute as @a[nbt={Dimension:"minecraft:bedwar"}] if score @s bw_math = @s bw_dmg_out run tag @s add bw_top_dps

execute as @a[nbt={Dimension:"minecraft:bedwar"}] run scoreboard players operation @s bw_math = @s bw_dmg_in
execute as @a[nbt={Dimension:"minecraft:bedwar"}] run scoreboard players operation @s bw_math > @a[nbt={Dimension:"minecraft:bedwar"}] bw_math
execute as @a[nbt={Dimension:"minecraft:bedwar"}] if score @s bw_math = @s bw_dmg_in run tag @s add bw_top_tank

execute as @a[nbt={Dimension:"minecraft:bedwar"}] run scoreboard players operation @s bw_math = @s bw_pickup
execute as @a[nbt={Dimension:"minecraft:bedwar"}] run scoreboard players operation @s bw_math > @a[nbt={Dimension:"minecraft:bedwar"}] bw_math
execute as @a[nbt={Dimension:"minecraft:bedwar"}] if score @s bw_math = @s bw_pickup run tag @s add bw_top_grinder

tellraw @a[nbt={Dimension:"minecraft:bedwar"}] ""
tellraw @a[nbt={Dimension:"minecraft:bedwar"}] ["",{"text":"TOP "},{"text":"KILL","color":"gold"},{"text":":        "},{"selector":"@a[tag=bw_top_kill,limit=1]"},{"text":" ("},{"score":{"name":"@a[tag=bw_top_kill,limit=1]","objective":"bw_kill_out"}},{"text":" ennemis tués)"}]
tellraw @a[nbt={Dimension:"minecraft:bedwar"}] ["",{"text":"TOP "},{"text":"KILLED","color":"gold"},{"text":":      "},{"selector":"@a[tag=bw_top_killed,limit=1]"},{"text":" (mort "},{"score":{"name":"@a[tag=bw_top_killed,limit=1]","objective":"bw_kill_in"}},{"text":" fois)"}]
tellraw @a[nbt={Dimension:"minecraft:bedwar"}] ["",{"text":"TOP "},{"text":"DPS","color":"gold"},{"text":":         "},{"selector":"@a[tag=bw_top_dps,limit=1]"},{"text":" ("},{"score":{"name":"@a[tag=bw_top_dps,limit=1]","objective":"bw_dmg_out"}},{"text":" dégâts infligés)"}]
tellraw @a[nbt={Dimension:"minecraft:bedwar"}] ["",{"text":"TOP "},{"text":"TANK","color":"gold"},{"text":":        "},{"selector":"@a[tag=bw_top_tank,limit=1]"},{"text":" ("},{"score":{"name":"@a[tag=bw_top_tank,limit=1]","objective":"bw_dmg_in"}},{"text":" dégâts reçus)"}]
tellraw @a[nbt={Dimension:"minecraft:bedwar"}] ["",{"text":"TOP "},{"text":"GRINDER","color":"gold"},{"text":":     "},{"selector":"@a[tag=bw_top_grinder,limit=1]"},{"text":" ("},{"score":{"name":"@a[tag=bw_top_grinder,limit=1]","objective":"bw_pickup"}},{"text":" ressources ramassés)"}]
tellraw @a[nbt={Dimension:"minecraft:bedwar"}] ""