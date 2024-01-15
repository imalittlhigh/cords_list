##
 # remove.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

execute store result storage clist:remove team_nr int 1 run scoreboard players get %playercount clist_playercount
execute unless data storage clist:remove team_max store result storage clist:remove team_max int 1 run scoreboard players get %playercount clist_playercount

execute if score %playercount clist_playercount matches 0 run tellraw @a {"text":"All Teams have been removed.","color":"dark_green"}
execute if score %playercount clist_playercount matches 0 run function clist:remove/scoreboard
execute if score %playercount clist_playercount matches 1.. run function clist:remove/teams with storage clist:remove