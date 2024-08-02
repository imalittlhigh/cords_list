##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute as @r[tag=clist.player.update] at @s run function clist:prefix_modification/get_coords

execute as @a[tag=clist.player.registered] unless score @s clist_trigger_display matches 0 run function clist:player/customize