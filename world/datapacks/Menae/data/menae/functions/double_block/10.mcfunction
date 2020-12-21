tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" blew everyone up","color":"aqua"},{"text":" [","bold":true,"color":"dark_red"},{"text":"\ud83d\udde132","color":"red"},{"text":"]","bold":true,"color":"dark_red"},{"text":" [","color":"gold"},{"text":"Golden Block Effect","color":"yellow"},{"text":"]","color":"gold"}]
scoreboard players remove @a[tag=turn] game.mana 4
clear @a[tag=turn] tnt
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @a[tag=!turn,tag=game,team=!invulnerable] game.heal 32
effect give @a[tag=!turn,tag=game,tag=!damaged,team=!invulnerable] instant_damage 1 0 true
execute at @a[tag=!turn,tag=game,team=!invulnerable] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 0
execute at @s run playsound minecraft:entity.generic.explode block @a -1 28 8 5 1
tag @s remove damaged
tag @a[tag=turn] remove double