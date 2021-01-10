tag @a[tag=killedED,nbt={Dimension:"minecraft:overworld"},tag=!finished] add finished

scoreboard players add @a[tag=!finished] ticks 1
scoreboard players add @a[tag=!finished] tickstotal 1
execute as @a run scoreboard players operation @s milisecs = @s ticks
execute as @a run scoreboard players operation @s milisecs *= fifty numbers
scoreboard players add @a[scores={ticks=20}] secs 1
scoreboard players set @a[scores={ticks=20}] ticks 0
scoreboard players add @a[scores={secs=60}] mins 1
scoreboard players set @a[scores={secs=60}] secs 0
scoreboard players add @a[scores={mins=60}] hours 1
scoreboard players set @a[scores={mins=60}] mins 0
execute as @a run title @s actionbar ["",{"text":"Timer:","color":"#FF0003"},{"score":{"name":"@s","objective":"hours"},"color":"#ECD000"},{"text":":","color":"#ECD000"},{"score":{"name":"@s","objective":"mins"},"color":"#ECD000"},{"text":":","color":"#ECD000"},{"score":{"name":"@s","objective":"secs"},"color":"#ECD000"},{"text":".","color":"#ECD000"},{"score":{"name":"@s","objective":"milisecs"},"color":"#ECD000"}]