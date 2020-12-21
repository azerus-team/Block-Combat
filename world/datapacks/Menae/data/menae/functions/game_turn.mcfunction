scoreboard players add $turn turn 1

execute if score $turn turn > $max turn run team empty invulnerable 
execute if score $turn turn > $max turn run team join game @a[tag=game]
execute if score $turn turn > $max turn run tag @a remove invulnerable
execute if score $turn turn > $max turn run tag @a[scores={invulnerable=1..}] add invulnerable
execute if score $turn turn > $max turn run scoreboard players remove @a[tag=invulnerable] invulnerable 1
execute if score $turn turn > $max turn run team join invulnerable @a[tag=invulnerable]
execute if score $turn turn > $max turn run scoreboard players add $game game.round.timer 1
execute if score $turn turn > $max turn if entity @a[tag=burned] run tellraw @a ["",{"selector":"@a[tag=burned]","bold":true,"color":"dark_aqua"},{"text":" got fire damage ","color":"aqua"},{"text":"[","bold":true,"color":"dark_red"},{"text":"\ud83d\udde12","color":"red"},{"text":"]","bold":true,"color":"dark_red"}]
execute if score $turn turn > $max turn run scoreboard players remove @a[tag=burned] game.heal 2
execute if score $turn turn > $max turn run tag @a remove pre_frozen
execute if score $turn turn > $max turn run effect clear @a blindness 
execute if score $turn turn > $max turn run effect clear @a nausea
execute if score $turn turn > $max turn run effect give @a[scores={blindness=1..}] minecraft:blindness 999999 0 true
execute if score $turn turn > $max turn if entity @a[scores={blindness=1..}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_aqua"},{"text":" went blind","color":"aqua"}]
execute if score $turn turn > $max turn run scoreboard players remove @a[scores={blindness=1..}] blindness 1
execute if score $turn turn > $max turn run effect give @a[scores={nausea=1..}] minecraft:nausea 999999 0 true
execute if score $turn turn > $max turn if entity @a[scores={nausea=1..}] run tellraw @a ["",{"selector":"@a[scores={nausea=1..}]","bold":true,"color":"dark_aqua"},{"text":" has nausea","color":"aqua"}] 
execute if score $turn turn > $max turn run scoreboard players remove @a[scores={nausea=1..}] nausea 1
execute if score $turn turn > $max turn run scoreboard players remove @a[scores={soul=1..}] game.heal 1
execute if score $turn turn > $max turn if entity @a[scores={soul=1..}] run tellraw @a ["",{"selector":"@a[scores={soul=1..}]","bold":true,"color":"dark_aqua"},{"text":" got curse damage ","color":"aqua"},{"text":"[","bold":true,"color":"dark_red"},{"text":"\ud83d\udde11","color":"red"},{"text":"]","bold":true,"color":"dark_red"}] 
execute if score $turn turn > $max turn run scoreboard players remove @a[scores={soul=1..}] soul 1
execute if score $turn turn > $max turn run scoreboard players set $turn turn 1


scoreboard players set $game game.turn.tick 1200
execute as @a[tag=turn] run scoreboard players set @s game.mana 5

team join game @a[tag=turn,tag=!invulnerable]
execute as @e[tag=game] if score $turn turn = @s turn run tag @s add turn
execute as @e[tag=game] unless score $turn turn = @s turn run tag @s remove turn
team join invulnerable @a[tag=turn]

execute as @a[tag=game,tag=turn] run effect give @s minecraft:glowing 999999 1 true
execute as @a[tag=game,tag=!turn] run effect clear @s minecraft:glowing



execute as @a[tag=turn,scores={frozen=1..},tag=!pre_frozen] run function menae:frozen
title @a[tag=turn] title ["",{"text":"Your turn","color":"aqua"},{"text":"!","color":"dark_aqua"}]

tag @a[tag=!turn] remove tell
execute if entity @a[tag=turn,tag=!tell] run tellraw @a ["",{"text":"It is","bold":true,"color":"aqua"},{"text":" ","bold":true},{"selector":"@a[tag=turn,tag=!tell]","bold":true,"color":"dark_aqua"},{"text":"`s","bold":true,"color":"dark_aqua"},{"text":" turn!","bold":true,"color":"aqua"}]
tag @a[tag=turn,tag=!tell] add tell
execute unless entity @a[tag=turn,tag=game] run function menae:game_turn







