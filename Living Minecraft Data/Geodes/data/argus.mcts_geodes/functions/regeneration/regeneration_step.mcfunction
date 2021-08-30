# regenerates a geode by one iteration
# @s = area effects clouds with tag ts_geode, at @s
# once a geode is fully covered by the necessary two layers, the ore will begin to regenerate
function mcts_core:check_biome
# ts_biome ==
# 1, taigas, coal
# 10, plains and forests, iron
# 20, deserts, copper
# 30, jungles, lapis
# 40, swamps, redstone
# 50, savannas and badlands, gold
# 60, oceans, sea lanterns and prismarine
# 70, beaches, coal
# 80, dark forest, emerald
# 90, mountains, diamond
# 100, caves, none
# 110, nether, none
# 120, end, none
# 130, other, none

#store the amount of ore in $ore_count ts_counter
execute unless score @s ts_biome matches 100.. run function argus.mcts_geodes:regeneration/check_ore
execute unless score $ore_counter ts_counter matches 1.. run function argus.mcts_geodes:regeneration/create_ore_locations
