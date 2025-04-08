##
 # reward.mcfunction
 # 
 #
 # Created by .
##

# Example reward - customize as needed
tellraw @a ["",{"text":"[Daily Reward] ","color":"gold"},{"selector":"@s"},{"text":" received their daily reward!","color":"green"}]
give @s minecraft:diamond 1
effect give @s minecraft:luck 3600 0
playsound entity.player.levelup player @s ~ ~ ~ 1 1