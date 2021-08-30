# called by argus.mcts_geodes:tick
execute unless entity @s[tag=spawned] run function argus.mcts_geodes:geodes/spawn
scoreboard players add @s ts_geodelife 1
