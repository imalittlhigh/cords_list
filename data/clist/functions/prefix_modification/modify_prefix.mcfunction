##
 # modify_prefix.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

$team join $(count) @s

$execute if dimension overworld run team modify $(count) prefix ["[",{"text":"$(x)","bold":false,"color":"#79c156"},"/",{"text":"$(y)","bold":false,"color":"#79c156"},"/",{"text":"$(z)","bold":false,"color":"#79c156"},"]"," "]
$execute if dimension the_nether run team modify $(count) prefix ["[",{"text":"$(x)","bold":false,"color":"#e45153"},"/",{"text":"$(y)","bold":false,"color":"#e45153"},"/",{"text":"$(z)","bold":false,"color":"#e45153"},"]"," "]
$execute if dimension the_end run team modify $(count) prefix ["[",{"text":"$(x)","bold":false,"color":"#e4f59c"},"/",{"text":"$(y)","bold":false,"color":"#e4f59c"},"/",{"text":"$(z)","bold":false,"color":"#e4f59c"},"]"," "]

tag @s remove clist.player.update
