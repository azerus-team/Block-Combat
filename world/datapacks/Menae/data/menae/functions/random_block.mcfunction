kill @e[tag=rand.blocks]
summon minecraft:armor_stand 5 43 40 {Tags:[rand.blocks],Rotation:[180f],ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:"MrTikva"}}]}
execute store result score $number random.blocks run data get entity @e[limit=1,tag=rand.blocks] UUID[0]
execute if score $number random.blocks matches ..-1 run scoreboard players operation $number random.blocks *= -1 const 
scoreboard players operation $number random.blocks %= $max random.blocks




