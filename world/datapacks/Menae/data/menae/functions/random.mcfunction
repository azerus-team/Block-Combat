kill @e[tag=rand]
summon minecraft:armor_stand 7 43 40 {Tags:[rand],Rotation:[180f],ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:"Aniby"}}]}
execute store result score $number random run data get entity @e[limit=1,tag=rand] UUID[0]
execute if score $number random matches ..-1 run scoreboard players operation $number random *= -1 const 
scoreboard players operation $number random %= $max random