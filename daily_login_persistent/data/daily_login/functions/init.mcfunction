##
 # init.mcfunction
 # 
 #
 # Created by .
##


#Initialize all scoreboards

scoreboard objectives add realtime.days dummy
scoreboard objectives add player.lastDay dummy
scoreboard objectives add isFirstLogin dummy
scoreboard objectives add server.StartDay dummy
scoreboard objectives add daysSinceStart dummy
scoreboard objectives add dave.timer dummy

#setup persistent storage
execute unless entitiy @e[type=armor_stand,name=timeKeeper] run summon armor_stand ~~~ {CustomName:"TimeKeeper",Invisible:1,Invulnerable:1,Nogravity:1,Marker:1}

#loading data
function daily_login:load_data

#initialize server first start day if first run
execute unless score $server.startDay server.StartDay matches 1.. run {
    scoreboard players set $server.startDay server.StartDay 0
    execute store result score $server.startDay server.StartDay run time query daytime
    scoreboard players operation $server.startDay server.StartDay /= 86400000 server.StartDay
}

#reset timer
scoreboard players set $save.timer save.timer 0 
