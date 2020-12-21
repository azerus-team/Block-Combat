execute at @s run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 5 2
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" has doubled up the power","color":"aqua"}]
scoreboard players remove @s game.mana 5
clear @s gold_block
scoreboard players remove @s game.blocks 1
tag @s add double

