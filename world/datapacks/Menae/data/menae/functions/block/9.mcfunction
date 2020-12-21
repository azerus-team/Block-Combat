execute at @s run playsound minecraft:block.netherite_block.place voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=damaged]","bold":true,"color":"dark_aqua"},{"text":" was roasted by","color":"aqua"},{"text":" ","color":"#DCDDDE"},{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" [","bold":true,"color":"dark_red"},{"text":"\ud83d\udde118","color":"red"},{"text":"]","bold":true,"color":"dark_red"}]
scoreboard players remove @a[tag=turn] game.mana 3
clear @a[tag=turn] beacon
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @s game.heal 18
execute at @s run summon lightning_bolt ~ ~2 ~
tag @s remove damaged
