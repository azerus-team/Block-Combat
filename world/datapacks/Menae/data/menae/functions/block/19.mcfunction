execute at @s run playsound minecraft:item.shield.block voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" activated the shield ","color":"aqua"},{"text":"[","color":"dark_aqua"},{"text":"\ud83d\udee1","color":"aqua"},{"text":"]","color":"dark_aqua"}]
scoreboard players remove @s game.mana 3
clear @s bricks
scoreboard players remove @s game.blocks 1
scoreboard players set @s invulnerable 1
