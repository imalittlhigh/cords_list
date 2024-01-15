##
 # teams.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
scoreboard players remove %playercount clist_playercount 1

$team remove $(team_nr)

$tellraw @a ["",{"text":"Removing team ","color":"gold"},{"text":"$(team_nr)"},{"text":" of ","color":"gold"},{"text":"$(team_max)"},{"text":" ...","color":"gold"}]

function clist:remove