##
 # tick_handler.mcfunction
 # 
 #
 # Created by .
##

# Increment save timer (saves every 10 minutes = 12000 ticks)
scoreboard players add $save.timer save.timer 1
execute if score $save.timer save.timer matches 12000.. run {
    scoreboard players set $save.timer save.timer 0
    function daily_login:save_data
}

# Update day counter every minute (1200 ticks)
execute if score $update.timer save.timer matches 0..1200 run scoreboard players add $update.timer save.timer 1
execute if score $update.timer save.timer matches 1200 run {
    scoreboard players set $update.timer save.timer 0
    function daily_login:update_real_time
}