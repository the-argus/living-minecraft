#called by geodes/spawn
scoreboard players remove $xdistance ts_counter 1
execute if score $xdistance ts_counter matches 1.. as @e[type=area_effect_cloud,tag=ts_builder,tag=ts_new] at @s run function argus.mcts_geodes:builders/iterate_spawn_x
execute if score $xdistance ts_counter matches 1.. as @e[type=area_effect_cloud,tag=ts_builder,tag=ts_new] at @s run function argus.mcts_geodes:builders/spawn_x
