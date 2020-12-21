execute at @s run playsound minecraft:block.netherite_block.place voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=damaged]","bold":true,"color":"dark_aqua"},{"text":" was roasted by","color":"aqua"},{"text":" ","color":"#DCDDDE"},{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" [","bold":true,"color":"dark_red"},{"text":"\ud83d\udde136","color":"red"},{"text":"]","bold":true,"color":"dark_red"},{"text":" [","color":"gold"},{"text":"Golden Block Effect","color":"yellow"},{"text":"]","color":"gold"}]
scoreboard players remove @a[tag=turn] game.mana 3
clear @a[tag=turn] beacon
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @s game.heal 36
execute at @s run summon lightning_bolt ~ ~2 ~
tag @s remove damaged
tag @a[tag=turn] remove double