clear @s knowledge_book

tag @s add ar_book_kill
schedule function argus.armor_rebalance:kill_book 1t
loot give @s loot argus.armor_rebalance:diamond/chestplate

scoreboard players set @s ar_craft 0
