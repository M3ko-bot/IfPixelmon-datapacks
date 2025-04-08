##
 # save_day_counter.mcfunction
 # 
 #
 # Created by .
##

# Alternative save method using signs at world spawn
setblock 0 4 0 minecraft:standing_sign 0 replace {Text1:'{"text":"TimeData","color":"dark_red"}',Text2:'{"text":"Day: ' + $current.day realtime.days + '"}',Text3:'{"text":"--------"}',Text4:'{"text":"DO NOT BREAK"}',Color:"black"}