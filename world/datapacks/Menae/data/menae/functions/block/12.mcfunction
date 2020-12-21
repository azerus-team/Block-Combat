execute at @s run playsound minecraft:entity.slime.jump voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" hit ","color":"aqua"},{"selector":"@a[tag=damaged]","bold":true,"color":"dark_aqua"},{"text":" [","bold":true,"color":"dark_red"},{"text":"\ud83d\udde18","color":"red"},{"text":"]","bold":true,"color":"dark_red"}]
scoreboard players remove @a[tag=turn] game.mana 1
clear @a[tag=turn] slime_block
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @s game.heal 8
tag @s remove damaged