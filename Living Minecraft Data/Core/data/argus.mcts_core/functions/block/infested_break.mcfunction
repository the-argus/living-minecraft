# MUST BE CALLED FROM INFESTED BLOCK MARKER ENTITY

# called by:

# entity/aoe_cloud/infested_gravel_tick

execute store result score $random ts_counter run loot spawn ~ ~-2 ~ loot argus.mcts_core:random/1-10

execute if block ~ ~ ~ #argus.mcts_core:replace_on_creation if score $random ts_counter <= $infested_chance ts_counter run summon silverfish ~ ~ ~ {Tags:["ts_infested"]}
kill @s[type=!player]
