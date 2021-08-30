tag @s add spawned

execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
fill ~ ~ ~ ~ ~ ~ gravel replace #argus.mcts_core:replace_on_creation
#execute unless block ~ ~ ~ gravel run kill @s[type=!player]
