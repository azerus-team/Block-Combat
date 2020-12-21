execute at @s run playsound minecraft:block.lava.extinguish voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" has been extinguished","color":"aqua"},{"text":" [","color":"gold"},{"text":"Golden Block Effect","color":"yellow"},{"text":"]","color":"gold"}]
scoreboard players remove @s game.mana 1
clear @s wet_sponge
scoreboard players remove @s game.blocks 1

tag @s remove burned
tag @a[tag=turn] remove double