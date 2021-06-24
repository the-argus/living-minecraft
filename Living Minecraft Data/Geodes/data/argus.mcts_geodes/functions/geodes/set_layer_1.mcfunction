# called by geodes/build
# @s = all builders
scoreboard players set $is_layer_1 ts_counter 0
execute positioned ~1 ~ ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 1
execute positioned ~-1 ~ ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 1
execute positioned ~ ~1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 1
execute positioned ~ ~-1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 1
execute positioned ~ ~ ~1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 1
execute positioned ~ ~ ~-1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 1

# second possible state of a builder: something on the diagonal (50% chance of being 1st layer)
execute unless score $is_layer_1 ts_counter matches 1.. positioned ~1 ~ ~1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2
execute unless score $is_layer_1 ts_counter matches 1.. positioned ~-1 ~ ~1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2
execute unless score $is_layer_1 ts_counter matches 1.. positioned ~ ~1 ~1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2
execute unless score $is_layer_1 ts_counter matches 1.. positioned ~ ~-1 ~1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2

execute unless score $is_layer_1 ts_counter matches 1.. positioned ~1 ~ ~-1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2
execute unless score $is_layer_1 ts_counter matches 1.. positioned ~-1 ~ ~-1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2
execute unless score $is_layer_1 ts_counter matches 1.. positioned ~ ~1 ~-1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2
execute unless score $is_layer_1 ts_counter matches 1.. positioned ~ ~-1 ~-1 if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2

execute unless score $is_layer_1 ts_counter matches 1.. positioned ~1 ~1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2
execute unless score $is_layer_1 ts_counter matches 1.. positioned ~1 ~-1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2
execute unless score $is_layer_1 ts_counter matches 1.. positioned ~-1 ~1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2
execute unless score $is_layer_1 ts_counter matches 1.. positioned ~-1 ~-1 ~ if entity @e[type=area_effect_cloud,tag=ts_builder,distance=...5,scores={ts_geodemat=1}] run scoreboard players set $is_layer_1 ts_counter 2

execute if score $is_layer_1 ts_counter matches 2 store result score $random ts_counter run loot spawn ~ ~-2 ~ loot argus.mcts_core:random/1-8

# set score of geode material to be first layer
execute if score $is_layer_1 ts_counter matches 2 if score $random ts_counter matches 1..4 run scoreboard players set @s ts_geodemat 2
execute if score $is_layer_1 ts_counter matches 1 run scoreboard players set @s ts_geodemat 2
