##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh
##
execute as @a[tag=!clist.player.registered] run function clist:player/register

tag @a[tag=clist.player.display] add clist.player.update

schedule function clist:meta/sec 1s replace