scoreboard objectives add ts_counter dummy
scoreboard objectives add ts_biome dummy

# fake player constants
scoreboard players set $infested_chance ts_counter 4

# other features
function argus.mcts_core:load
