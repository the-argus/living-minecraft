# called by geodes/build
# @s = all builders
scoreboard players set $is_layer_2 ts_counter 0
execute positioned ~1 ~ ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 1
execute positioned ~-1 ~ ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 1
execute positioned ~ ~1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 1
execute positioned ~ ~-1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 1
execute positioned ~ ~ ~1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 1
execute positioned ~ ~ ~-1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 1

# second possible state of a builder: something on the diagonal (50% chance of being 2nd layer)
execute unless score $is_layer_2 ts_counter matches 1.. positioned ~1 ~ ~1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2
execute unless score $is_layer_2 ts_counter matches 1.. positioned ~-1 ~ ~1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2
execute unless score $is_layer_2 ts_counter matches 1.. positioned ~ ~1 ~1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2
execute unless score $is_layer_2 ts_counter matches 1.. positioned ~ ~-1 ~1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2

execute unless score $is_layer_2 ts_counter matches 1.. positioned ~1 ~ ~-1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2
execute unless score $is_layer_2 ts_counter matches 1.. positioned ~-1 ~ ~-1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2
execute unless score $is_layer_2 ts_counter matches 1.. positioned ~ ~1 ~-1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2
execute unless score $is_layer_2 ts_counter matches 1.. positioned ~ ~-1 ~-1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2

execute unless score $is_layer_2 ts_counter matches 1.. positioned ~1 ~1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2
execute unless score $is_layer_2 ts_counter matches 1.. positioned ~1 ~-1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2
execute unless score $is_layer_2 ts_counter matches 1.. positioned ~-1 ~1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2
execute unless score $is_layer_2 ts_counter matches 1.. positioned ~-1 ~-1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5] if block ~ ~ ~ #argus.mcts_geodes:layer_1 run scoreboard players set $is_layer_2 ts_counter 2

execute if score $is_layer_2 ts_counter matches 2 store result score $random ts_counter run loot spawn ~ ~-2 ~ loot argus.mcts_core:random/1-8

# place the ore if its layer 1
execute if score $is_layer_2 ts_counter matches 2 if score $random ts_counter matches 1..4 run function argus.mcts_geodes:geodes/place_layer_2
execute if score $is_layer_2 ts_counter matches 1 run function argus.mcts_geodes:geodes/place_layer_2
