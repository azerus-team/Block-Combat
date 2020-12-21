execute at @s run playsound minecraft:block.roots.break voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" let ","color":"aqua"},{"selector":"@a[tag=damaged]","bold":true,"color":"dark_aqua"},{"text":" sniff his sock ","color":"aqua"},{"text":"[","bold":true,"color":"dark_red"},{"text":"\ud83d\udde16","color":"red"},{"text":"]","bold":true,"color":"dark_red"}]
scoreboard players remove @a[tag=turn] game.mana 1
clear @a[tag=turn] mycelium
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @s game.heal 6
scoreboard players set @s nausea 1
tag @s remove damaged
