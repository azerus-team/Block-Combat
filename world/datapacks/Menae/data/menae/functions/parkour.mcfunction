scoreboard players add parkour parkour 1
execute if score parkour parkour matches 11 if score p_complete p_complete matches 0 run scoreboard players add @a menu.cases 3
execute if score parkour parkour matches 11 if score p_complete p_complete matches 0 run tellraw @a ["",{"text":"Parkour was completed, everyone got ","color":"aqua"},{"text":"3","color":"dark_aqua"},{"text":" case","color":"aqua"},{"text":"!","color":"dark_aqua"}]
execute if score parkour parkour matches 11 if score p_complete p_complete matches 0 run scoreboard players set p_complete p_complete 1
execute if score parkour parkour matches 11 if score p_complete p_complete matches 1 run scoreboard players set parkour parkour 1

tp @a[x=8 ,y=47,z=55,dx=-20,dy=20,dz=43] -2 52 54 0 0
execute if score parkour parkour matches 1 run setblock -8 47 58 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:13,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:1",sizeY:9,sizeZ:34,showboundingbox:1b} replace
execute if score parkour parkour matches 1 run setblock -7 47 58 minecraft:redstone_block replace
execute if score parkour parkour matches 2 run setblock -8 47 58 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:13,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:2",sizeY:9,sizeZ:34,showboundingbox:1b} replace
execute if score parkour parkour matches 2 run setblock -7 47 58 minecraft:redstone_block replace
execute if score parkour parkour matches 3 run setblock -8 47 58 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:13,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:3",sizeY:9,sizeZ:34,showboundingbox:1b} replace
execute if score parkour parkour matches 3 run setblock -7 47 58 minecraft:redstone_block replace
execute if score parkour parkour matches 4 run setblock -8 47 58 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:13,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:4",sizeY:9,sizeZ:34,showboundingbox:1b} replace
execute if score parkour parkour matches 4 run setblock -7 47 58 minecraft:redstone_block replace
execute if score parkour parkour matches 5 run setblock -8 47 58 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:13,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:5",sizeY:9,sizeZ:34,showboundingbox:1b} replace
execute if score parkour parkour matches 5 run setblock -7 47 58 minecraft:redstone_block replace
execute if score parkour parkour matches 6 run setblock -8 47 58 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:13,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:6",sizeY:9,sizeZ:34,showboundingbox:1b} replace
execute if score parkour parkour matches 6 run setblock -7 47 58 minecraft:redstone_block replace
execute if score parkour parkour matches 7 run setblock -8 47 58 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:13,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:7",sizeY:9,sizeZ:34,showboundingbox:1b} replace
execute if score parkour parkour matches 7 run setblock -7 47 58 minecraft:redstone_block replace
execute if score parkour parkour matches 8 run setblock -8 47 58 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:13,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:8",sizeY:9,sizeZ:34,showboundingbox:1b} replace
execute if score parkour parkour matches 8 run setblock -7 47 58 minecraft:redstone_block replace
execute if score parkour parkour matches 9 run setblock -8 47 58 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:13,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:9",sizeY:9,sizeZ:34,showboundingbox:1b} replace
execute if score parkour parkour matches 9 run setblock -7 47 58 minecraft:redstone_block replace
execute if score parkour parkour matches 10 run setblock -8 47 58 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:13,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:10",sizeY:9,sizeZ:34,showboundingbox:1b} replace
execute if score parkour parkour matches 10 run setblock -7 47 58 minecraft:redstone_block replace
