#called by geodes/spawn.  @s is the center builder of the geode

#generate the number of ore that will spawn in this geode
execute store result score $random ts_counter run loot spawn ~ ~-2 ~ loot argus.mcts_core:random/1-8
execute if score $random ts_counter matches 8 as @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=8] at @s run function argus.mcts_geodes:geodes/place_ore
execute if score $random ts_counter matches 7 as @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=7] at @s run function argus.mcts_geodes:geodes/place_ore
execute if score $random ts_counter matches 6 as @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=6] at @s run function argus.mcts_geodes:geodes/place_ore
execute if score $random ts_counter matches 5 as @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=5] at @s run function argus.mcts_geodes:geodes/place_ore
execute if score $random ts_counter matches 4 as @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=4] at @s run function argus.mcts_geodes:geodes/place_ore
execute if score $random ts_counter matches 3 as @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=3] at @s run function argus.mcts_geodes:geodes/place_ore
execute if score $random ts_counter matches 2 as @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=2] at @s run function argus.mcts_geodes:geodes/place_ore
execute if score $random ts_counter matches 1 as @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=1] at @s run function argus.mcts_geodes:geodes/place_ore

#generate the first layer which surrounds the geode
execute as @e[type=area_effect_cloud,tag=ts_builder] at @s unless block ~ ~ ~ #argus.mcts_geodes:ores run function argus.mcts_geodes:geodes/build_layer_1
#generate the second layer
execute as @e[type=area_effect_cloud,tag=ts_builder] at @s unless block ~ ~ ~ #argus.mcts_geodes:ores unless block ~ ~ ~ #argus.mcts_geodes:layer_1 run function argus.mcts_geodes:geodes/build_layer_2
