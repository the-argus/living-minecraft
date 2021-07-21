
# summon builder entities.  these should only exist for one tick
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-1 ~-1 run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["ts_builder","ts_new","ts_origin"]}
scoreboard players set $xdistance ts_counter 3
scoreboard players set $ydistance ts_counter 3
scoreboard players set $zdistance ts_counter 3

function argus.mcts_geodes:builders/spawn_x
tag @e[type=area_effect_cloud,tag=ts_builder] add ts_new
function argus.mcts_geodes:builders/spawn_z
tag @e[type=area_effect_cloud,tag=ts_builder] add ts_new
function argus.mcts_geodes:builders/spawn_y
tag @e[type=area_effect_cloud,tag=ts_builder] remove ts_new

# kill builders after establishing ore locations
execute as @e[type=area_effect_cloud,tag=ts_builder] run kill @s[type=!player]
