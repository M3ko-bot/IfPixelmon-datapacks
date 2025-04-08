##
 # save_data.mcfunction
 # 
 #
 # Created by .
##

# Save current day to armor stand storage
execute as @e[type=armor_stand,name=TimeKeeper] run {
    summon item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{title:"TimeData",author:"Server",pages:['{"text":"{\\"day\\":' + $current.day realtime.days + '}"}']}}}
    data merge entity @s {ArmorItems:[{},{},{},{id:"written_book",Count:1b,tag:{display:{Name:"TimeData"},pages:['{"text":"' + $current.day realtime.days + '"}']}}]}
}

# Save player data example (would need to be expanded for all players)
execute as @a run {
    summon item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{title:"PlayerData",author:"Server",pages:['{"text":"{\\"player\\":\\"' + @s + '\\",\\"lastDay\\":' + @s player.lastDay + '}"}']}}}
}