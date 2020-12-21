execute as @a[tag=burned,scores={frozen=1..}] at @s if entity @s run playsound minecraft:block.lava.extinguish voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_aqua"},{"text":" has been extinguished","color":"aqua"}]
tag @s remove pre_frozen
tag @s remove burned 









scoreboard players set @s frozen 0