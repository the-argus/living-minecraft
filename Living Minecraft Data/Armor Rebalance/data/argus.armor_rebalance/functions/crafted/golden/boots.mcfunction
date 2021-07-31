clear @s knowledge_book

tag @s add ar_book_kill
schedule function argus.armor_rebalance:kill_book 1t
loot give @s loot argus.armor_rebalance:golden/boots

scoreboard players set @s ar_craft 0
