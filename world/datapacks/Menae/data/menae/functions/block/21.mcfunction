execute at @s run playsound minecraft:entity.blaze.shoot voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" roasted","color":"aqua"},{"text":" ","color":"#DCDDDE"},{"selector":"@a[tag=damaged]","bold":true,"color":"dark_aqua"},{"text":" [","bold":true,"color":"dark_red"},{"text":"\ud83d\udde12","color":"red"},{"text":"]","bold":true,"color":"dark_red"}]
scoreboard players remove @a[tag=turn] game.mana 1
clear @a[tag=turn] magma_block
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @s game.heal 2
tag @s add burned
tag @s remove damaged





