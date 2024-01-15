##
 # customize.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
scoreboard players set @s clist_trigger_display 0
scoreboard players enable @s clist_trigger_display

execute as @s[tag=clist.player.out] run tag @s add clist.player.display
execute as @s[tag=!clist.player.out] run tag @s remove clist.player.display

execute as @s[tag=clist.player.out] run tellraw @s {"text":"Your coordinates are now being displayed.","color":"gold"}
execute as @s[tag=!clist.player.out] run tellraw @s {"text":"Your coordinates are now hidden.","color":"gold"}

execute as @s[tag=!clist.player.out] store result storage clist:player team_nr int 1 run scoreboard players get @s clist_playercount

tag @s[tag=!clist.player.out,tag=!clist.player.display] add clist.player.out
tag @s[tag=clist.player.out,tag=clist.player.display] remove clist.player.out

execute as @s[tag=clist.player.out] run function clist:player/hide_prefix with storage clist:player