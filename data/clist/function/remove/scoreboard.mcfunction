##
 # scoreboard.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
scoreboard objectives remove clist_playercount
scoreboard objectives remove clist_trigger_display
tellraw @a {"text":"Scoreboard has been removed.","color":"dark_green"}