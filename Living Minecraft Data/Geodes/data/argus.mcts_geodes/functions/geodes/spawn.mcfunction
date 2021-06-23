tag @s add spawned

# summon builder entities.  these should only exist for one tick
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-3 ~ ~-3 run summon area_effect_cloud ~ ~ ~ {Duration:2147480000,Tags:["ts_builder","ts_new","ts_origin"]}
scoreboard players set $xdistance ts_counter 8
scoreboard players set $ydistance ts_counter 8
scoreboard players set $zdistance ts_counter 8

function argus.mcts_geodes:builders/spawn_x
tag @e[type=area_effect_cloud,tag=ts_builder] add ts_new
function argus.mcts_geodes:builders/spawn_z
tag @e[type=area_effect_cloud,tag=ts_builder] add ts_new
function argus.mcts_geodes:builders/spawn_y
tag @e[type=area_effect_cloud,tag=ts_builder] remove ts_new

execute as @e[type=area_effect_cloud,tag=ts_origin] at @s positioned ~3 ~3 ~3 run function argus.mcts_geodes:geodes/build

execute as @e[type=area_effect_cloud,tag=ts_builder] unless entity @s[tag=ts_origin] run kill @s[type=!player]
