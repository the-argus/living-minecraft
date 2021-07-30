advancement revoke @s only argus.armor_rebalance:netherite/chestplate
recipe take @s minecraft:netherite_chestplate_smithing
clear @s knowledge_book

tag @s add ar_book_kill
schedule function argus.armor_rebalance:kill_book 1t
