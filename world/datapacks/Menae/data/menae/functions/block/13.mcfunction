execute at @s run playsound minecraft:block.note_block.chime voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" has been cured ","color":"aqua"},{"text":"[","bold":true,"color":"dark_red"},{"text":"\u27648","color":"red"},{"text":"]","bold":true,"color":"dark_red"}]
scoreboard players remove @s game.mana 2
clear @s redstone_ore
scoreboard players remove @s game.blocks 1
scoreboard players add @s game.heal 8
execute if score @s game.heal matches 41.. run scoreboard players set @s game.heal 40