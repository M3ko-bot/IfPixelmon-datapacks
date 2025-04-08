##
 # update_real_time.mcfunction
 # 
 #
 # Created by .
##

# Get current milliseconds since epoch
scoreboard players set $current.millis realtime.days 0
execute store result score $current.millis realtime.days run time query daytime

# Convert to days (86400000 ms per day)
scoreboard players operation $current.day realtime.days = $current.millis realtime.days
scoreboard players operation $current.day realtime.days /= 86400000 realtime.days

# Update days since server start
scoreboard players operation $days.since.start daysSinceStart = $current.day realtime.days
scoreboard players operation $days.since.start daysSinceStart -= $server.startDay server.startDay