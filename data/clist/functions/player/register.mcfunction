##
 # register.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
scoreboard players add %playercount clist_playercount 1
scoreboard players operation @s clist_playercount = %playercount clist_playercount
tag @s add clist.player.registered

execute store result storage clist:player count int 1 run scoreboard players get @s clist_playercount

scoreboard players set @s clist_trigger_display 0

function clist:player/create_team with storage clist:player