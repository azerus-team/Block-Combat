execute at @s run playsound minecraft:block.note_block.chime voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" has been cured ","color":"aqua"},{"text":"[","bold":true,"color":"dark_red"},{"text":"\u276416","color":"red"},{"text":"]","bold":true,"color":"dark_red"},{"text":" [","color":"gold"},{"text":"Golden Block Effect","color":"yellow"},{"text":"]","color":"gold"}]
scoreboard players remove @s game.mana 2
clear @s redstone_ore
scoreboard players remove @s game.blocks 1
scoreboard players add @s game.heal 16
execute if score @s game.heal matches 41.. run scoreboard players set @s game.heal 40
tag @s remove double