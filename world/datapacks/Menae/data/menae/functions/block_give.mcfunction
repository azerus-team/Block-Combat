function menae:random_block
tag @e[tag=retry] remove retry
execute as @a[tag=turn,tag=game,tag=b1] if score $number random.blocks matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:magma_block"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b1] if score $number random.blocks matches 0 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b1] if score $number random.blocks matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:magma_block"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b1] if score $number random.blocks matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:magma_block"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b1] if score $number random.blocks matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:magma_block"}]}] run give @s magma_block{BlockID:21,display:{Name:'[{"text":"[Magma Block] 🗡2 ","italic":false,"color":"red"},{"text":"🧪1","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"yellow"},{"text":"grants fire damage","color":"white"}]','[{"text":"every round","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b2] if score $number random.blocks matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:wet_sponge"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b2] if score $number random.blocks matches 1 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b2] if score $number random.blocks matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:wet_sponge"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b2] if score $number random.blocks matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:wet_sponge"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b2] if score $number random.blocks matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:wet_sponge"}]}] run give @s wet_sponge{BlockID:1,display:{Name:'[{"text":"[Wet Sponge]","italic":false,"color":"yellow"},{"text":" ❤0 ","color":"red"},{"text":"🧪1","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"yellow"},{"text":"removes","color":"white"}]','[{"text":"fire damage","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b3] if score $number random.blocks matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:ice"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b3] if score $number random.blocks matches 2 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b3] if score $number random.blocks matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:ice"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b3] if score $number random.blocks matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:ice"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b3] if score $number random.blocks matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:ice"}]}] run give @s ice{BlockID:2,display:{Name:'[{"text":"[Ice]","italic":false,"color":"blue"},{"text":" 🗡2 ","color":"red"},{"text":"🧪2","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" in the next round","italic":false,"color":"white"}]','[{"text":"the player skips turn","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b4] if score $number random.blocks matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:redstone_block"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b4] if score $number random.blocks matches 3 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b4] if score $number random.blocks matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_block"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b4] if score $number random.blocks matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_block"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b4] if score $number random.blocks matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_block"}]}] run give @s redstone_block{BlockID:3,display:{Name:'[{"text":"[Redstone Block] ❤18 ","italic":false,"color":"red"},{"text":"🧪4","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]'}}

execute as @a[tag=turn,tag=game,tag=b5] if score $number random.blocks matches 4 if entity @s[nbt={Inventory:[{id:"minecraft:oak_leaves"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b5] if score $number random.blocks matches 4 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b5] if score $number random.blocks matches 4 unless entity @s[nbt={Inventory:[{id:"minecraft:oak_leaves"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b5] if score $number random.blocks matches 4 unless entity @s[nbt={Inventory:[{id:"minecraft:oak_leaves"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b5] if score $number random.blocks matches 4 unless entity @s[nbt={Inventory:[{id:"minecraft:oak_leaves"}]}] run give @s oak_leaves{BlockID:4,display:{Name:'[{"text":"[Leaves]","italic":false,"color":"green"},{"text":" ❤4 ","color":"red"},{"text":"🧪1","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]'}}

execute as @a[tag=turn,tag=game,tag=b6] if score $number random.blocks matches 5 if entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b6] if score $number random.blocks matches 5 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b6] if score $number random.blocks matches 5 unless entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b6] if score $number random.blocks matches 5 unless entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b6] if score $number random.blocks matches 5 unless entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run give @s stone{BlockID:5,display:{Name:'[{"text":"[Stone]","italic":false,"color":"white"},{"text":" 🗡12 ","color":"red"},{"text":"🧪2","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]'}}

execute as @a[tag=turn,tag=game,tag=b7] if score $number random.blocks matches 6 if entity @s[nbt={Inventory:[{id:"minecraft:cobblestone"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b7] if score $number random.blocks matches 6 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b7] if score $number random.blocks matches 6 unless entity @s[nbt={Inventory:[{id:"minecraft:cobblestone"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b7] if score $number random.blocks matches 6 unless entity @s[nbt={Inventory:[{id:"minecraft:cobblestone"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b7] if score $number random.blocks matches 6 unless entity @s[nbt={Inventory:[{id:"minecraft:cobblestone"}]}] run give @s cobblestone{BlockID:6,display:{Name:'[{"text":"[Cobblestone]","italic":false,"color":"white"},{"text":" 🗡20 ","color":"red"},{"text":"🧪4","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]'}}

execute as @a[tag=turn,tag=game,tag=b8] if score $number random.blocks matches 7 if entity @s[nbt={Inventory:[{id:"minecraft:coarse_dirt"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b8] if score $number random.blocks matches 7 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b8] if score $number random.blocks matches 7 unless entity @s[nbt={Inventory:[{id:"minecraft:coarse_dirt"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b8] if score $number random.blocks matches 7 unless entity @s[nbt={Inventory:[{id:"minecraft:coarse_dirt"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b8] if score $number random.blocks matches 7 unless entity @s[nbt={Inventory:[{id:"minecraft:coarse_dirt"}]}] run give @s coarse_dirt{BlockID:7,display:{Name:'[{"text":"[Coarse Dirt]","italic":false,"color":"gray"},{"text":" 🗡6 ","color":"red"},{"text":"🧪1","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]'}}

execute as @a[tag=turn,tag=game,tag=b9] if score $number random.blocks matches 8 if entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b9] if score $number random.blocks matches 8 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b9] if score $number random.blocks matches 8 unless entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b9] if score $number random.blocks matches 8 unless entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b9] if score $number random.blocks matches 8 unless entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run give @s gold_block{BlockID:8,display:{Name:'[{"text":"[Gold]","italic":false,"color":"gold"},{"text":" 🗡0 ","color":"red"},{"text":"🧪5","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"dark_purple"},{"text":"doubles","color":"white"}]','[{"text":"block effect","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b10] if score $number random.blocks matches 9 if entity @s[nbt={Inventory:[{id:"minecraft:beacon"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b10] if score $number random.blocks matches 9 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b10] if score $number random.blocks matches 9 unless entity @s[nbt={Inventory:[{id:"minecraft:beacon"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b10] if score $number random.blocks matches 9 unless entity @s[nbt={Inventory:[{id:"minecraft:beacon"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b10] if score $number random.blocks matches 9 unless entity @s[nbt={Inventory:[{id:"minecraft:beacon"}]}] run give @s beacon{BlockID:9,display:{Name:'[{"text":"[Beacon]","italic":false,"color":"aqua"},{"text":" 🗡18 ","color":"red"},{"text":"🧪3"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]'}}

execute as @a[tag=turn,tag=game,tag=b11] if score $number random.blocks matches 10 if entity @s[nbt={Inventory:[{id:"minecraft:tnt"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b11] if score $number random.blocks matches 10 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b11] if score $number random.blocks matches 10 unless entity @s[nbt={Inventory:[{id:"minecraft:tnt"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b11] if score $number random.blocks matches 10 unless entity @s[nbt={Inventory:[{id:"minecraft:tnt"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b11] if score $number random.blocks matches 10 unless entity @s[nbt={Inventory:[{id:"minecraft:tnt"}]}] run give @s tnt{BlockID:10,display:{Name:'[{"text":"[TNT] 🗡16 ","italic":false,"color":"red"},{"text":"🧪4","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"dark_purple"},{"text":"damages","color":"white"}]','[{"text":"all players","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b12] if score $number random.blocks matches 11 if entity @s[nbt={Inventory:[{id:"minecraft:glowstone"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b12] if score $number random.blocks matches 11 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b12] if score $number random.blocks matches 11 unless entity @s[nbt={Inventory:[{id:"minecraft:glowstone"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b12] if score $number random.blocks matches 11 unless entity @s[nbt={Inventory:[{id:"minecraft:glowstone"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b12] if score $number random.blocks matches 11 unless entity @s[nbt={Inventory:[{id:"minecraft:glowstone"}]}] run give @s glowstone{BlockID:11,display:{Name:'[{"text":"[Glowstone]","italic":false,"color":"yellow"},{"text":" "},{"text":"🗡0","color":"red"},{"text":" ","color":"red"},{"text":"🧪1","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"dark_purple"},{"text":"gives","color":"white"},{"text":"","color":"dark_purple"}]','[{"text":"3 mana","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b13] if score $number random.blocks matches 12 if entity @s[nbt={Inventory:[{id:"minecraft:slime_block"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b13] if score $number random.blocks matches 12 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b13] if score $number random.blocks matches 12 unless entity @s[nbt={Inventory:[{id:"minecraft:slime_block"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b13] if score $number random.blocks matches 12 unless entity @s[nbt={Inventory:[{id:"minecraft:slime_block"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b13] if score $number random.blocks matches 12 unless entity @s[nbt={Inventory:[{id:"minecraft:slime_block"}]}] run give @s slime_block{BlockID:12,display:{Name:'[{"text":"[Slime Block]","italic":false,"color":"green"},{"text":" "},{"text":"🗡8","color":"red"},{"text":" ","color":"red"},{"text":"🧪1","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]'}}

execute as @a[tag=turn,tag=game,tag=b14] if score $number random.blocks matches 13 if entity @s[nbt={Inventory:[{id:"minecraft:redstone_ore"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b14] if score $number random.blocks matches 13 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b14] if score $number random.blocks matches 13 unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_ore"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b14] if score $number random.blocks matches 13 unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_ore"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b14] if score $number random.blocks matches 13 unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_ore"}]}] run give @s redstone_ore{BlockID:13,display:{Name:'[{"text":"[Redstone Ore]","italic":false,"color":"red"},{"text":" "},{"text":"❤8"},{"text":" "},{"text":"🧪2","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]'}}

execute as @a[tag=turn,tag=game,tag=b15] if score $number random.blocks matches 14 if entity @s[nbt={Inventory:[{id:"minecraft:fire_coral_block"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b15] if score $number random.blocks matches 14 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b15] if score $number random.blocks matches 14 unless entity @s[nbt={Inventory:[{id:"minecraft:fire_coral_block"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b15] if score $number random.blocks matches 14 unless entity @s[nbt={Inventory:[{id:"minecraft:fire_coral_block"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b15] if score $number random.blocks matches 14 unless entity @s[nbt={Inventory:[{id:"minecraft:fire_coral_block"}]}] run give @s fire_coral_block{BlockID:14,display:{Name:'[{"text":"[Fire Coral Block]","italic":false,"color":"dark_red"},{"text":" "},{"text":"🗡8","color":"red"},{"text":" ","color":"red"},{"text":"🧪2","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"dark_purple"},{"text":"damages all players and","color":"white"}]','[{"text":"gives them a fire effect","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b16] if score $number random.blocks matches 15 if entity @s[nbt={Inventory:[{id:"minecraft:cactus"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b16] if score $number random.blocks matches 15 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b16] if score $number random.blocks matches 15 unless entity @s[nbt={Inventory:[{id:"minecraft:cactus"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b16] if score $number random.blocks matches 15 unless entity @s[nbt={Inventory:[{id:"minecraft:cactus"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b16] if score $number random.blocks matches 15 unless entity @s[nbt={Inventory:[{id:"minecraft:cactus"}]}] run give @s cactus{BlockID:15,display:{Name:'[{"text":"[Cactus] ","italic":false,"color":"green"},{"text":"🗡4","color":"red"},{"text":" ","color":"red"},{"text":"🧪1","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"dark_purple"},{"text":"deals 1 damage","color":"white"}]','[{"text":"to owner","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b17] if score $number random.blocks matches 16 if entity @s[nbt={Inventory:[{id:"minecraft:coal_block"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b17] if score $number random.blocks matches 16 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b17] if score $number random.blocks matches 16 unless entity @s[nbt={Inventory:[{id:"minecraft:coal_block"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b17] if score $number random.blocks matches 16 unless entity @s[nbt={Inventory:[{id:"minecraft:coal_block"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b17] if score $number random.blocks matches 16 unless entity @s[nbt={Inventory:[{id:"minecraft:coal_block"}]}] run give @s coal_block{BlockID:16,display:{Name:'[{"text":"[Coal Block]","italic":false,"color":"dark_gray"},{"text":" ","color":"green"},{"text":"🗡12","color":"red"},{"text":" ","color":"red"},{"text":"🧪2","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"dark_purple"},{"text":"gives the effect of blindness","color":"white"}]','[{"text":"for 2 rounds","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b18] if score $number random.blocks matches 17 if entity @s[nbt={Inventory:[{id:"minecraft:mycelium"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b18] if score $number random.blocks matches 17 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b18] if score $number random.blocks matches 17 unless entity @s[nbt={Inventory:[{id:"minecraft:mycelium"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b18] if score $number random.blocks matches 17 unless entity @s[nbt={Inventory:[{id:"minecraft:mycelium"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b18] if score $number random.blocks matches 17 unless entity @s[nbt={Inventory:[{id:"minecraft:mycelium"}]}] run give @s mycelium{BlockID:17,display:{Name:'[{"text":"[Mycelium] ","italic":false,"color":"dark_purple"},{"text":"🗡6","color":"red"},{"text":" ","color":"red"},{"text":"🧪1","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"dark_purple"},{"text":"gives the effect of nausea","color":"white"}]','[{"text":"for 1 rounds","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b19] if score $number random.blocks matches 18 if entity @s[nbt={Inventory:[{id:"minecraft:soul_sand"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b19] if score $number random.blocks matches 18 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b19] if score $number random.blocks matches 18 unless entity @s[nbt={Inventory:[{id:"minecraft:soul_sand"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b19] if score $number random.blocks matches 18 unless entity @s[nbt={Inventory:[{id:"minecraft:soul_sand"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b19] if score $number random.blocks matches 18 unless entity @s[nbt={Inventory:[{id:"minecraft:soul_sand"}]}] run give @s soul_sand{BlockID:18,display:{Name:'[{"text":"[Soul Sand]","italic":false,"color":"gray"},{"text":" ","color":"dark_purple"},{"text":"🗡10","color":"red"},{"text":" ","color":"red"},{"text":"🧪2","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"dark_purple"},{"text":"deals 1 damage","color":"white"}]','[{"text":"for 2 rounds","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b20] if score $number random.blocks matches 19 if entity @s[nbt={Inventory:[{id:"minecraft:bricks"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b20] if score $number random.blocks matches 19 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b20] if score $number random.blocks matches 19 unless entity @s[nbt={Inventory:[{id:"minecraft:bricks"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b20] if score $number random.blocks matches 19 unless entity @s[nbt={Inventory:[{id:"minecraft:bricks"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b20] if score $number random.blocks matches 19 unless entity @s[nbt={Inventory:[{id:"minecraft:bricks"}]}] run give @s bricks{BlockID:19,display:{Name:'[{"text":"[Bricks]","italic":false,"color":"dark_red"},{"text":" ","color":"dark_purple"},{"text":"🗡0","color":"red"},{"text":" ","color":"red"},{"text":"🧪3","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"Features:","italic":false,"color":"gold"},{"text":" ","color":"dark_purple"},{"text":"owner cannot be attacked","color":"white"}]','[{"text":"for 1 round","italic":false,"color":"white"}]']}}

execute as @a[tag=turn,tag=game,tag=b21] if score $number random.blocks matches 20 if entity @s[nbt={Inventory:[{id:"minecraft:oak_log"}]}] run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=!b21] if score $number random.blocks matches 20 run tag @e[tag=rand.blocks] add retry
execute as @a[tag=turn,tag=game,tag=b21] if score $number random.blocks matches 20 unless entity @s[nbt={Inventory:[{id:"minecraft:oak_log"}]}] run scoreboard players add @s game.blocks 1 
execute as @a[tag=turn,tag=game,tag=b21] if score $number random.blocks matches 20 unless entity @s[nbt={Inventory:[{id:"minecraft:oak_log"}]}] run scoreboard players remove @s game.mana 1 
execute as @a[tag=turn,tag=game,tag=b21] if score $number random.blocks matches 20 unless entity @s[nbt={Inventory:[{id:"minecraft:oak_log"}]}] run give @s oak_log{BlockID:20,display:{Name:'[{"text":"[Oak Log]","italic":false,"color":"gray"},{"text":" ","color":"dark_purple"},{"text":"🗡22","color":"red"},{"text":" ","color":"red"},{"text":"🧪4","color":"aqua"},{"text":" [Press ","color":"white"},{"keybind":"key.attack","color":"white"},{"text":"]","color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"text":"","italic":false}]']}}

execute if entity @e[tag=retry] run function menae:block_give














