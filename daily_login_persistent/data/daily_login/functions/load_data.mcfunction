##
 # load_data.mcfunction
 # 
 #
 # Created by .
##

# Attempt to load day counter from armor stand
execute as @e[type=armor_stand,name=TimeKeeper] run {
    execute unless data entity @s ArmorItems[3].tag.pages[0] run scoreboard players set $current.day realtime.days 0
    execute if data entity @s ArmorItems[3].tag.pages[0] run {
        data get entity @s ArmorItems[3].tag.pages[0]
        scoreboard players set $current.day realtime.days <result>
    }
}

# Fallback if no data exists
execute unless score $current.day realtime.days matches 1.. run {
    scoreboard players set $current.day realtime.days 0
    execute store result score $current.day realtime.days run time query daytime
    scoreboard players operation $current.day realtime.days /= 86400000 realtime.days
}