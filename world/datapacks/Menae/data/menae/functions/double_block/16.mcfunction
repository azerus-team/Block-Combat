execute at @s run playsound minecraft:entity.elder_guardian.curse voice @a ~ ~ ~ 5 2
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" hit and blinded ","color":"aqua"},{"selector":"@a[tag=damaged]","bold":true,"color":"dark_aqua"},{"text":" [","bold":true,"color":"dark_red"},{"text":"\ud83d\udde124","color":"red"},{"text":"]","bold":true,"color":"dark_red"},{"text":" [","color":"gold"},{"text":"Golden Block Effect","color":"yellow"},{"text":"]","color":"gold"}]
scoreboard players remove @a[tag=turn] game.mana 2
clear @a[tag=turn] coal_block
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @s game.heal 24
scoreboard players set @s blindness 4
tag @s remove damaged
tag @a[tag=turn] remove double