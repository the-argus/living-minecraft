#called by regeneration/regeneration_step
#@s = geode
execute if score @s ts_biome matches 80..89 store result score $ore_count ts_counter run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 emerald_ore replace emerald_ore
execute if score @s ts_biome matches 90..99 store result score $ore_count ts_counter run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 diamond_ore replace diamond_ore
execute if score @s ts_biome matches 10..19 store result score $ore_count ts_counter run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 iron_ore replace iron_ore
execute if score @s ts_biome matches 50..59 store result score $ore_count ts_counter run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 gold_ore replace gold_ore
execute if score @s ts_biome matches 30..39 store result score $ore_count ts_counter run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 lapis_ore replace lapis_ore
execute if score @s ts_biome matches 40..49 store result score $ore_count ts_counter run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 redstone_ore replace redstone_ore
execute if score @s ts_biome matches 20..29 store result score $ore_count ts_counter run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 copper_ore replace copper_ore
execute unless score @s ts_biome matches 10..69 unless score @s ts_biome matches 80.. store result score $ore_count ts_counter run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 coal_ore replace coal_ore
