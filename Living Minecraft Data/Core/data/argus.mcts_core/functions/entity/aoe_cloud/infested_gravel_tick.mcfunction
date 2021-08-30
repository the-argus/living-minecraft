execute unless entity @s[tag=spawned] run function argus.mcts_core:entity/aoe_cloud/infested_gravel_spawn

execute if entity @a[distance=..7] unless block ~ ~ ~ gravel run function argus.mcts_core:block/infested_break
