effect give @a saturation 255 1 true
effect give @a regeneration 255 1 true

function menae:guide
function menae:menu
function menae:case_timer

gamemode adventure @a[tag=!gm]
spawnpoint @a -14 28 8 -90
execute as @a[x=14,y=31,z=23,dz=-1,dy=-2,dx=-1] at @s run tp @s -2 52 54 0 0
execute as @a[x=-12,y=47,z=93,dz=-38,dx=20,dy=0.2] at @s run tp @s -2 52 54 0 0


execute as @e[tag=!game] run tag @s remove turn
execute as @e[tag=!game] run tag @s remove burned
execute as @e[tag=!game] run tag @s remove damaged
execute as @a[tag=!game] run scoreboard players set @s game.blocks 0
execute as @a[tag=!game] run scoreboard players set @s game.mana 0
execute as @a[tag=!game] run scoreboard players set @s game.heal 0
execute as @a[tag=!game] run scoreboard players reset @s turn
execute as @e[tag=!game] run tag @s remove pre_frozen



scoreboard players set @a[tag=!game] game.dtaken 0
scoreboard players set @a[tag=!game] game.dgiven 0
execute as @a[tag=!game] run effect give @s minecraft:weakness 1 1 true

bossbar set minecraft:game name ["",{"text":"-=","bold":true,"color":"dark_aqua"},{"text":" Time:","color":"gold"},{"text":" "},{"score":{"name":"$game","objective":"game.turn.timer"},"color":"white"},{"text":" Round:","color":"gold"},{"text":" "},{"score":{"name":"$game","objective":"game.round.timer"},"color":"white"},{"text":" =-","bold":true,"color":"dark_aqua"}]
bossbar set minecraft:game players @a
execute if score start start matches ..1 run bossbar set minecraft:game visible false
execute if score start start matches ..1 run scoreboard players set $game game.turn.tick 0
execute if score start start matches ..1 run scoreboard players set $game game.round.timer 0
execute if score start start matches 2 run bossbar set minecraft:game visible true

execute if score start start matches 0 run kill @e[tag=heal]



execute as @e[type=item,tag=!processed] if entity @s[x=-9,y=29,z=1,dx=16,dz=14,dy=8] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,tag=!processed] if entity @s[x=-9,y=29,z=1,dx=16,dz=14,dy=8] run data modify entity @s PickupDelay set value 0
tag @e[type=item,x=-9,y=29,z=1,dx=16,dz=14,dy=8] add processed



execute as @e[type=item] unless entity @s[x=-9,y=29,z=1,dx=16,dz=14,dy=8] run kill @s
execute as @a[tag=b1,tag=b2,tag=b3,tag=b4,tag=b5,tag=b6,tag=b7,tag=b8,tag=b9,tag=b10,tag=b11,tag=b12,tag=b13,tag=b14,tag=b15,tag=b16,tag=b17,tag=b18,tag=b19,tag=b20,tag=b21] run tag @s add all
execute as @a run tag @s add b1
execute as @a run tag @s add b2
execute as @a run tag @s add b3
execute as @a run tag @s add b5
execute as @a run tag @s add b6
execute as @a run tag @s add b7
execute as @a run tag @s add b14
execute as @a run tag @s add b21
tp @a[tag=!check] -14 29 8 -90 0
execute as @a[tag=!check] run scoreboard players set @s menu.cases 1
execute as @a[tag=!check] run scoreboard players set @s e.chest 1
execute as @a[tag=!check] run scoreboard players set @s menu 0
execute as @a[tag=!check] run scoreboard players set @s ready 0
execute as @a[tag=!check] if score start start matches 0 run team join nready @s 
execute as @a[tag=!check] if score start start matches 2 run team join hub @s
execute as @a[tag=!check] run gamemode adventure @s
execute as @a[tag=!check] run tag @s add check
#######################Guide######################
execute if score $guide guide matches 22.. run scoreboard players set $guide guide 1
execute as @e[tag=Guide] at @s run tp @s ~ ~ ~ ~1 ~

#######################Ready######################
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lime_concrete",Count:1b}]},tag=!game] unless score start start matches 1.. at @s run scoreboard players add @s ready 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lime_concrete",Count:1b}]},tag=!game] unless score start start matches 1.. at @s run team join ready @s
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lime_concrete",Count:1b}]},tag=!game] unless score start start matches 1.. at @s run replaceitem entity @s hotbar.4 minecraft:red_concrete{display:{Name:'["",{"text":"Leave","bold":true,"color":"red"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]'}}
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lime_concrete",Count:1b}]},tag=!game] unless score start start matches 1.. at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lime_concrete",Count:1b}]},tag=!game] unless score start start matches 1.. at @s run replaceitem entity @s weapon.offhand air

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_concrete",Count:1b}]},tag=!game] unless score start start matches 1.. at @s run scoreboard players remove @s ready 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_concrete",Count:1b}]},tag=!game] unless score start start matches 1.. at @s run team join nready @s
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_concrete",Count:1b}]},tag=!game] unless score start start matches 1.. at @s run replaceitem entity @s hotbar.4 minecraft:lime_concrete{display:{Name:'["",{"text":"Join","bold":true,"color":"green"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]'}}
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_concrete",Count:1b}]},tag=!game] unless score start start matches 1.. at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.5
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_concrete",Count:1b}]},tag=!game] unless score start start matches 1.. at @s run replaceitem entity @s weapon.offhand air

execute as @a[tag=!game] at @s if score @s ready matches 0 unless score start start matches 1.. run replaceitem entity @s hotbar.4 minecraft:lime_concrete{display:{Name:'["",{"text":"Join","bold":true,"color":"green"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]'}}
execute as @a[tag=!game] at @s if score @s ready matches 1 unless score start start matches 1.. run replaceitem entity @s hotbar.4 minecraft:red_concrete{display:{Name:'["",{"text":"Leave","bold":true,"color":"red"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]'}}

execute if score start start matches 1.. run clear @a[tag=!game]



clear @a[tag=!game,scores={ready=1}] lime_concrete
clear @a[tag=!game,scores={ready=0}] red_concrete

replaceitem entity @a[tag=!game] hotbar.0 air
replaceitem entity @a[tag=!game] hotbar.1 air
replaceitem entity @a[tag=!game] hotbar.2 air
replaceitem entity @a[tag=!game] hotbar.3 air
replaceitem entity @a[tag=!game] hotbar.5 air
replaceitem entity @a[tag=!game] hotbar.6 air
replaceitem entity @a[tag=!game] hotbar.7 air
replaceitem entity @a[tag=!game] hotbar.8 air


execute as @a[tag=game,tag=!gm] if score start start matches 0 run tp @s -14 29 8
execute as @a[tag=game,tag=!gm] if score start start matches 0 run scoreboard players set @s frozen 0
execute as @a[tag=game,tag=!gm] if score start start matches 0 run scoreboard players set @s invulnerable 0
execute as @a[tag=game,tag=!gm] if score start start matches 0 run scoreboard players set @s blindness 0
execute as @a[tag=game,tag=!gm] if score start start matches 0 run scoreboard players set @s nausea 0
execute as @a[tag=game,tag=!gm] if score start start matches 0 run scoreboard players set @s soul 0
execute as @a[tag=game,tag=!gm] if score start start matches 0 run tag @s remove double
execute as @a[tag=game,tag=!gm] if score start start matches 0 run tag @s remove tell
execute as @a[tag=game,tag=!gm] if score start start matches 0 run effect clear @s
execute as @a[tag=game,tag=!gm] if score start start matches 0 run effect give @s minecraft:weakness 1 1 true
execute as @a[tag=game,tag=!gm] if score start start matches 0 run effect give @s saturation 999999 255 true
execute as @a[tag=game,tag=!gm] if score start start matches 0 run team leave @s
execute as @a[tag=game,tag=!gm] if score start start matches 0 run tag @s remove burned
execute as @a[tag=game,tag=!gm] if score start start matches 0 run tag @s remove invulnerable
execute as @a[tag=game,tag=!gm] if score start start matches 0 run tag @s remove game

execute if score ingame ingame matches ..1 if score start start matches 2 run function menae:finish
####################################################
execute as @a[tag=burned] at @s run particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 0.01 3 force @a
execute as @a[tag=invulnerable,tag=game] run replaceitem entity @s armor.head bricks{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:127}
execute as @a[tag=!invulnerable,tag=game] run replaceitem entity @s armor.head air
execute as @a[scores={frozen=1..}] at @s run particle minecraft:block ice ~ ~ ~ 0.1 0.5 0.1 0.1 3 force @a
execute as @a[scores={blindness=1..}] at @s run particle minecraft:squid_ink ~ ~1 ~ 0.1 0.5 0.1 0.01 1 force @a
execute as @a[scores={blindness=0},nbt={ActiveEffects:[{Id:15b}]}] at @s run particle minecraft:squid_ink ~ ~1 ~ 0.1 0.5 0.1 0.01 1 force @a
execute as @a[scores={nausea=1..}] at @s run particle minecraft:sneeze ~ ~1.8 ~ 0.1 0.1 0.1 0 1 force @a
execute as @a[scores={nausea=0},nbt={ActiveEffects:[{Id:9b}]}] at @s run particle minecraft:sneeze ~ ~1.8 ~ 0.1 0.1 0.1 0 1 force @a
execute as @a[scores={soul=1..}] at @s run particle minecraft:dust 0.251 0.220 0.180 1 ~ ~1 ~ 0.2 0.5 0.2 0.01 3 force @a
execute if score start start matches 0 run replaceitem entity @a[team=!game] armor.head air

#######################Start########################
execute if score start start matches 1 if score players players matches ..1 run scoreboard players set start start 0
execute if score players players matches 0 run data merge block -16 30 8 {Text1:'["",{"text":"You need ","color":"yellow"},{"text":"2","bold":true,"color":"aqua"},{"text":" more","color":"yellow"}]',Text2:'{"text":"players to start","color":"yellow"}',Text3:'{"text":"the game","color":"yellow"}'}
execute if score players players matches 1 run data merge block -16 30 8 {Text1:'["",{"text":"You need ","color":"yellow"},{"text":"1","bold":true,"color":"aqua"},{"text":" more","color":"yellow"}]',Text2:'{"text":"player to start","color":"yellow"}',Text3:'{"text":"the game","color":"yellow"}'}
execute if score players players matches 2.. unless score start start matches 1..2 run data merge block -16 30 8 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set start start 1"}}',Text2:'{"text":"Start","color":"yellow"}',Text3:'{"text":""}'}
execute if score start start matches 1 run data merge block -16 30 8 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set start start 0"}}',Text2:'{"text":"Cancel start","color":"aqua"}'}
execute if score start start matches 1 run function menae:start1
execute if score start start matches 2 run data merge block -16 30 8 {Text1:'{"text":""}',Text2:'{"text":"Game is already","color":"red"}',Text3:'{"text":"started","color":"red"}'}
execute if score start start matches 2 run scoreboard players add @e[tag=game] game.time 1
execute if score start start matches 2 run scoreboard players add game.time game.time 1
execute if score start start matches 0 run scoreboard players set timer timer 0
execute if score start start matches 0 run scoreboard players set @e[tag=!game] game.time 0
execute if score start start matches 0 run scoreboard players set @e[tag=game] game.time 0
execute if score start start matches 0 run scoreboard players set game.time game.time 0
execute if score start start matches 2 run function menae:start2
#execute if score game.time game.time matches 0 run scoreboard players set $turn turn 0








scoreboard players set @a[tag=!game] game.dtaken 0
scoreboard players set @a[tag=!game] game.dgiven 0


execute as @e[tag=game] unless score @s game.time = game.time game.time run tag @s remove turn
execute as @e[tag=game] unless score @s game.time = game.time game.time run tag @s remove burned
execute as @e[tag=game] unless score @s game.time = game.time game.time run tag @s remove damaged
execute as @e[tag=game] unless score @s game.time = game.time game.time run tp @s -1 29 20
execute as @e[tag=game] unless score @s game.time = game.time game.time run scoreboard players set @s ready 0
execute as @e[tag=game] unless score @s game.time = game.time game.time run tp @s -14 29 8
execute as @e[tag=game] unless score @s game.time = game.time game.time run scoreboard players set @s frozen 0
execute as @e[tag=game] unless score @s game.time = game.time game.time run scoreboard players set @s invulnerable 0
execute as @e[tag=game] unless score @s game.time = game.time game.time run scoreboard players set @s blindness 0
execute as @e[tag=game] unless score @s game.time = game.time game.time run scoreboard players set @s nausea 0
execute as @e[tag=game] unless score @s game.time = game.time game.time run scoreboard players set @s soul 0
execute as @e[tag=game] unless score @s game.time = game.time game.time run tag @s remove double
execute as @e[tag=game] unless score @s game.time = game.time game.time run tag @s remove tell
execute as @e[tag=game] unless score @s game.time = game.time game.time run effect clear @s
execute as @e[tag=game] unless score @s game.time = game.time game.time run effect give @s minecraft:weakness 1 1 true
execute as @e[tag=game] unless score @s game.time = game.time game.time run effect give @s saturation 999999 255 true
execute as @e[tag=game] unless score @s game.time = game.time game.time run team leave @s
execute as @e[tag=game] unless score @s game.time = game.time game.time run tag @s remove burned
execute as @e[tag=game] unless score @s game.time = game.time game.time run tag @s remove invulnerable
execute as @e[tag=game] unless score @s game.time = game.time game.time run tag @s remove game






execute store result score players players run give @a[scores={ready=1}] air
scoreboard players operation wasingame ingame = ingame ingame 
execute store result score ingame ingame if entity @a[tag=game]
execute if score wasingame ingame > ingame ingame unless entity @a[tag=turn] run function menae:game_turn
######################Tags/Menu##########################
execute as @a if score @s menu.cases matches 11.. run scoreboard players set @s menu.cases 10
execute as @a[tag=all] run scoreboard players set @s menu.cases 0


execute as @a[tag=burned,scores={frozen=1..}] if entity @s run function menae:bf










