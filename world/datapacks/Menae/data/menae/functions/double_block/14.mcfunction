execute at @s run playsound minecraft:entity.player.hurt_on_fire voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" rosted everyone ","color":"aqua"},{"text":"[","bold":true,"color":"dark_red"},{"text":"\ud83d\udde116","color":"red"},{"text":"]","bold":true,"color":"dark_red"},{"text":" [","color":"gold"},{"text":"Golden Block Effect","color":"yellow"},{"text":"]","color":"gold"}]
scoreboard players remove @a[tag=turn] game.mana 2
clear @a[tag=turn] fire_coral_block
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @a[tag=!turn,tag=game,team=!invulnerable] game.heal 16
effect give @a[tag=!turn,tag=!damaged,tag=game,team=!invulnerable] instant_damage 1 0 true
tag @a[tag=!turn,tag=game,team=!invulnerable] add burned
tag @s remove damaged
tag @a[tag=turn] remove double