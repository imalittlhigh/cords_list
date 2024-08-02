##
 # get_coords.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute store result storage clist:player count int 1 run scoreboard players get @s clist_playercount
execute store result storage clist:player x int 1 run data get entity @s Pos[0] 1
execute store result storage clist:player y int 1 run data get entity @s Pos[1] 1
execute store result storage clist:player z int 1 run data get entity @s Pos[2] 1

function clist:prefix_modification/modify_prefix with storage clist:player