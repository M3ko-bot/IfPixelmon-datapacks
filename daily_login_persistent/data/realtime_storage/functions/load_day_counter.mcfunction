##
 # load_day_counter.mcfunction
 # 
 #
 # Created by .
##

# Alternative load method from signs
execute store result score $loaded.day realtime.days run data get block 0 4 0 Text2 1
scoreboard players operation $current.day realtime.days = $loaded.day realtime.days