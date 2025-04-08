##
 # player_join.mcfunction
 # 
 #
 # Created by .
##

# Update real-time counter
function daily_login:update_real_time

# Check if player exists in system
execute unless score @s player.lastDay matches -1 run {
    # Calculate if this is first login today
    scoreboard players operation @s isFirstLogin = $current.day realtime.days
    scoreboard players operation @s isFirstLogin -= @s player.lastDay
    
    # Trigger reward if first login
    execute if score @s isFirstLogin matches 1.. run function daily_login:reward
}

# Update player's last login day
scoreboard players operation @s player.lastDay = $current.day realtime.days

# Save data
function daily_login:save_data