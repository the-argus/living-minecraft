advancement revoke @s only argus.armor_rebalance:netherite/leggings
recipe take @s minecraft:netherite_leggings_smithing
clear @s knowledge_book

tag @s add ar_book_kill
schedule function argus.armor_rebalance:kill_book 1t
