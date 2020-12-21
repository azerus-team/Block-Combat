execute at @s run playsound minecraft:block.grass.break voice @a ~ ~ ~ 5 0.8
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" has been cured ","color":"aqua"},{"text":"[","bold":true,"color":"dark_red"},{"text":"\u27644","color":"red"},{"text":"]","bold":true,"color":"dark_red"}]
scoreboard players remove @s game.mana 1
clear @s oak_leaves
scoreboard players remove @s game.blocks 1
scoreboard players add @s game.heal 4
execute if score @s game.heal matches 41.. run scoreboard players set @s game.heal 40
