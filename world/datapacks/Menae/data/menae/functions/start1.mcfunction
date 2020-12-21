execute if score timer timer matches ..80 run scoreboard players add timer timer 1
execute if score timer timer matches 1 run title @a[scores={ready=1}] actionbar {"text":"You are ready","bold":true,"color":"green"}
execute if score timer timer matches 1 run title @a[scores={ready=0}] actionbar {"text":"You are not ready","bold":true,"color":"red"}
execute if score timer timer matches 20 run title @a title {"text":"3","bold":true,"color":"green"}
execute if score timer timer matches 20 run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 10 1
execute if score timer timer matches 40 run title @a title {"text":"2","bold":true,"color":"yellow"}
execute if score timer timer matches 40 run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 10 1
execute if score timer timer matches 60 run title @a title {"text":"1","bold":true,"color":"red"}
execute if score timer timer matches 60 run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 10 1
execute if score timer timer matches 80 run function menae:turn

