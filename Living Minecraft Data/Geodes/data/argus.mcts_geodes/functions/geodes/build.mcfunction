#called by geodes/spawn.  @s is the center builder of the geode

#generate the number of ore that will spawn in this geode
execute store result score $random ts_counter run loot spawn ~ ~-2 ~ loot argus.mcts_core:random/1-8
execute if score $random ts_counter matches 8 run scoreboard players set @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=8] ts_geodemat 1
execute if score $random ts_counter matches 7 run scoreboard players set @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=7] ts_geodemat 1
execute if score $random ts_counter matches 6 run scoreboard players set @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=6] ts_geodemat 1
execute if score $random ts_counter matches 5 run scoreboard players set @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=5] ts_geodemat 1
execute if score $random ts_counter matches 4 run scoreboard players set @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=4] ts_geodemat 1
execute if score $random ts_counter matches 3 run scoreboard players set @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=3] ts_geodemat 1
execute if score $random ts_counter matches 2 run scoreboard players set @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=2] ts_geodemat 1
execute if score $random ts_counter matches 1 run scoreboard players set @e[type=area_effect_cloud,tag=ts_builder,sort=nearest,limit=1] ts_geodemat 1

#generate the first layer which surrounds the geode
execute as @e[type=area_effect_cloud,tag=ts_builder] at @s unless score @s ts_geodemat matches 1 run function argus.mcts_geodes:geodes/set_layer_1
#generate the second layer
execute as @e[type=area_effect_cloud,tag=ts_builder] at @s unless score @s ts_geodemat matches 1..2 run function argus.mcts_geodes:geodes/set_layer_2

#actually place the blocks
execute as @e[type=area_effect_cloud,tag=ts_builder,scores={ts_geodemat=1}] at @s run function argus.mcts_geodes:geodes/place_ore
execute as @e[type=area_effect_cloud,tag=ts_builder,scores={ts_geodemat=2}] at @s run function argus.mcts_geodes:geodes/place_layer_1
execute as @e[type=area_effect_cloud,tag=ts_builder,scores={ts_geodemat=3}] at @s run function argus.mcts_geodes:geodes/place_layer_2
