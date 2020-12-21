title @a title {"text":"Start","bold":true,"color":"red"}
playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 10 2
execute as @a[tag=!game,scores={ready=1}] run tag @s add game
team join game @a[tag=game]
execute as @a[tag=game] run tp @s -1 29 9
execute as @a[tag=game] run scoreboard players set @e[tag=game] turn 0
execute as @a[tag=game] run execute store result score $max turn if entity @a[tag=game]
scoreboard players set start start 2
scoreboard players set @a[tag=game] game.blocks 0
scoreboard players set @a[tag=game] game.mana 5
scoreboard players set @a[tag=game] game.heal 40
replaceitem entity @a[tag=game] container.7 minecraft:nether_star{display:{Name:'["",{"text":"Get Block 🧪1","color":"aqua","italic":false},{"text":" [Press ","color":"white","italic":false},{"keybind":"key.swapOffhand","color":"white","italic":false},{"text":"]","color":"white","italic":false}]',Lore:['[{"text":"You can have only 5 blocks at the same time!","italic":false,"color":"gold"}]']}}
replaceitem entity @a[tag=game] container.8 minecraft:barrier{display:{Name:'[{"text":"Skip Turn","italic":false,"color":"red"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]'}}
scoreboard players set $game game.turn.tick 1200
scoreboard players set $turn turn 0



execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=1},tag=game] run scoreboard players set @s turn 1

execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=2},tag=game] if entity @e[scores={turn=1},tag=game] run scoreboard players set @s turn 2

execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=3},tag=game] if entity @e[scores={turn=2},tag=game] run scoreboard players set @s turn 3

execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=4},tag=game] if entity @e[scores={turn=3},tag=game] run scoreboard players set @s turn 4

execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=5},tag=game] if entity @e[scores={turn=4},tag=game] run scoreboard players set @s turn 5

execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=6},tag=game] if entity @e[scores={turn=5},tag=game] run scoreboard players set @s turn 6

execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=7},tag=game] if entity @e[scores={turn=6},tag=game] run scoreboard players set @s turn 7

execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=8},tag=game] if entity @e[scores={turn=7},tag=game] run scoreboard players set @s turn 8

execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=9},tag=game] if entity @e[scores={turn=8},tag=game] run scoreboard players set @s turn 9

execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=10},tag=game] if entity @e[scores={turn=9},tag=game] run scoreboard players set @s turn 10

execute as @e[scores={turn=0},limit=1,tag=game,sort=random] at @s unless entity @e[scores={turn=11},tag=game] if entity @e[scores={turn=10},tag=game] run scoreboard players set @s turn 11

execute as @a[scores={turn=1},tag=game] at @s unless entity @e[tag=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["1","heal"]}
execute as @a[scores={turn=2},tag=game] at @s unless entity @e[tag=2] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["2","heal"]}
execute as @a[scores={turn=3},tag=game] at @s unless entity @e[tag=3] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["3","heal"]}
execute as @a[scores={turn=4},tag=game] at @s unless entity @e[tag=4] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["4","heal"]}
execute as @a[scores={turn=5},tag=game] at @s unless entity @e[tag=5] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["5","heal"]}
execute as @a[scores={turn=6},tag=game] at @s unless entity @e[tag=6] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["6","heal"]}
execute as @a[scores={turn=7},tag=game] at @s unless entity @e[tag=7] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["7","heal"]}
execute as @a[scores={turn=8},tag=game] at @s unless entity @e[tag=8] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["8","heal"]}
execute as @a[scores={turn=9},tag=game] at @s unless entity @e[tag=9] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["9","heal"]}
execute as @a[scores={turn=10},tag=game] at @s unless entity @e[tag=10] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["10","heal"]}
execute as @a[scores={turn=11},tag=game] at @s unless entity @e[tag=11] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomNameVisible:1b,Tags:["11","heal"]}


scoreboard objectives add turn_order dummy [{"text":"-=","color":"aqua"},{"text":"Turn Order","color":"dark_aqua"},{"text":"=-","color":"aqua"}]
scoreboard objectives setdisplay sidebar turn_order
execute as @a[tag=game] run scoreboard players operation @s turn_order = @s turn

scoreboard objectives setdisplay list game.heal











function menae:game_turn