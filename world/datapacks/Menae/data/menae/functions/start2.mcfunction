function menae:block_effects


scoreboard players remove $game game.turn.tick 1

scoreboard players operation $game game.turn.timer = $game game.turn.tick
scoreboard players operation $game game.turn.timer /= 20 numbers
execute store result bossbar minecraft:game value run scoreboard players get $game game.turn.tick
execute if score $game game.turn.tick matches 0 run function menae:game_turn


execute as @a[scores={game.mana=1..,game.blocks=..4},nbt={Inventory:[{Slot:-106b,id:"minecraft:nether_star",Count:1b}]},tag=game,tag=turn] at @s run function menae:block_give
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier",Count:1b}]},tag=game,tag=turn] at @s run function menae:game_turn

execute as @a[tag=game,tag=turn] if score @s game.mana matches 0 run function menae:game_turn




title @a[tag=game,scores={turn=1,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=1}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=1,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=1}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=1,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=1}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=1,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=1}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=1,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=1}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=1,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=1}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

title @a[tag=game,scores={turn=2,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=2}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=2,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=2}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=2,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=2}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=2,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=2}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=2,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=2}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=2,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=2}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

title @a[tag=game,scores={turn=3,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=3}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=3,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=3}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=3,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=3}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=3,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=3}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=3,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=3}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=3,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=3}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

title @a[tag=game,scores={turn=4,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=4}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=4,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=4}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=4,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=4}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=4,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=4}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=4,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=4}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=4,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=4}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

title @a[tag=game,scores={turn=5,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=5}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=5,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=5}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=5,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=5}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=5,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=5}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=5,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=5}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=5,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=5}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

title @a[tag=game,scores={turn=6,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=6}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=6,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=6}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=6,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=6}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=6,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=6}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=6,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=6}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=6,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=6}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

title @a[tag=game,scores={turn=7,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=7}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=7,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=7}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=7,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=7}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=7,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=7}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=7,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=7}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=7,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=7}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

title @a[tag=game,scores={turn=8,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=8}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=8,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=8}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=8,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=8}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=8,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=8}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=8,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=8}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=8,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=8}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

title @a[tag=game,scores={turn=9,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=9}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=9,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=9}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=9,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=9}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=9,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=9}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=9,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=9}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=9,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=9}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

title @a[tag=game,scores={turn=10,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=10}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=10,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=10}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=10,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=10}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=10,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=10}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=10,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=10}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=10,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=10}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

title @a[tag=game,scores={turn=11,game.mana=5}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=11}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◆","color":"aqua"}]
title @a[tag=game,scores={turn=11,game.mana=4}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=11}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◆◇","color":"aqua"}]
title @a[tag=game,scores={turn=11,game.mana=3}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=11}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◆◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=11,game.mana=2}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=11}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◆◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=11,game.mana=1}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=11}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◆◇◇◇◇","color":"aqua"}]
title @a[tag=game,scores={turn=11,game.mana=0}] actionbar ["",{"score":{"name":"@a[tag=game,scores={turn=11}]","objective":"game.heal"},"color":"red"},{"text":" ❤","color":"red"},{"text":" \u0020 \ud83e\uddea","color":"aqua"},{"text":" ◇◇◇◇◇","color":"aqua"}]

tag @a remove weakness 
execute as @a[tag=turn] store result score $blockID hand_block run data get entity @s SelectedItem.tag.BlockID
execute as @a[tag=turn] store result score $blockID2 hand_block run data get entity @s Inventory[{Slot:-106b}].tag.BlockID
execute unless score $blockID hand_block matches 2 unless score $blockID hand_block matches 5..7 unless score $blockID hand_block matches 9..10 unless score $blockID hand_block matches 12 unless score $blockID hand_block matches 14..18 unless score $blockID hand_block matches 20..21 run tag @a[tag=turn] add weakness 
execute unless score $blockID hand_block matches 1 unless score $blockID hand_block matches 3..4 unless score $blockID hand_block matches 6..12 unless score $blockID hand_block matches 15 unless score $blockID hand_block matches 17 unless score $blockID hand_block matches 19..21 as @a[tag=turn] if score @s game.mana matches ..1 run tag @s add weakness
execute unless score $blockID hand_block matches 1..8 unless score $blockID hand_block matches 10..18 unless score $blockID hand_block matches 20..21 as @a[tag=turn] if score @s game.mana matches ..2 run tag @s add weakness
execute unless score $blockID hand_block matches 1..2 unless score $blockID hand_block matches 4..5 unless score $blockID hand_block matches 7..9 unless score $blockID hand_block matches 11..19 unless score $blockID hand_block matches 21 as @a[tag=turn] if score @s game.mana matches ..3 run tag @s add weakness
execute unless score $blockID hand_block matches 1..7 unless score $blockID hand_block matches 9..21 as @a[tag=turn] if score @s game.mana matches ..4 run tag @s add weakness
effect give @a[tag=turn,tag=weakness] weakness 1 1 true
effect clear @a[tag=turn,tag=!weakness] weakness
effect give @a[tag=!turn,tag=game] weakness 1 1 true 

execute if entity @a[tag=turn,scores={game.dgiven=1..}] run tag @a[tag=!turn,tag=game,scores={game.dtaken=1..}] add damaged

execute if entity @a[tag=turn,tag=!double] run function menae:block
execute if entity @a[tag=turn,tag=double] run function menae:double_block

function menae:heal_name
scoreboard players set $blockID hand_block 0
scoreboard players set $blockID2 hand_block 0


execute as @a[scores={game.heal=..0},tag=game] run function menae:die

execute as @a[nbt={Inventory:[{id:"minecraft:nether_star",Count:1b}]},tag=game] unless entity @s[nbt={Inventory:[{Slot:7b}]}] run function menae:useless
execute as @a[nbt={Inventory:[{id:"minecraft:barrier",Count:1b}]},tag=game] unless entity @s[nbt={Inventory:[{Slot:8b}]}] run function menae:useless2


scoreboard players set @a[tag=game] game.dtaken 0
scoreboard players set @a[tag=game] game.dgiven 0

execute as @a[scores={turn=1},tag=game] at @s run tp @e[tag=1] ~ ~2 ~
execute as @a[scores={turn=2},tag=game] at @s run tp @e[tag=2] ~ ~2 ~
execute as @a[scores={turn=3},tag=game] at @s run tp @e[tag=3] ~ ~2 ~
execute as @a[scores={turn=4},tag=game] at @s run tp @e[tag=4] ~ ~2 ~
execute as @a[scores={turn=5},tag=game] at @s run tp @e[tag=5] ~ ~2 ~
execute as @a[scores={turn=6},tag=game] at @s run tp @e[tag=6] ~ ~2 ~
execute as @a[scores={turn=7},tag=game] at @s run tp @e[tag=7] ~ ~2 ~
execute as @a[scores={turn=8},tag=game] at @s run tp @e[tag=8] ~ ~2 ~
execute as @a[scores={turn=9},tag=game] at @s run tp @e[tag=9] ~ ~2 ~
execute as @a[scores={turn=10},tag=game] at @s run tp @e[tag=10] ~ ~2 ~
execute as @a[scores={turn=11},tag=game] at @s run tp @e[tag=11] ~ ~2 ~

execute unless entity @a[scores={turn=1},tag=game] run kill @e[tag=1]
execute unless entity @a[scores={turn=2},tag=game] run kill @e[tag=2]
execute unless entity @a[scores={turn=3},tag=game] run kill @e[tag=3]
execute unless entity @a[scores={turn=4},tag=game] run kill @e[tag=4]
execute unless entity @a[scores={turn=5},tag=game] run kill @e[tag=5]
execute unless entity @a[scores={turn=6},tag=game] run kill @e[tag=6]
execute unless entity @a[scores={turn=7},tag=game] run kill @e[tag=7]
execute unless entity @a[scores={turn=8},tag=game] run kill @e[tag=8]
execute unless entity @a[scores={turn=9},tag=game] run kill @e[tag=9]
execute unless entity @a[scores={turn=10},tag=game] run kill @e[tag=10]
execute unless entity @a[scores={turn=11},tag=game] run kill @e[tag=11]