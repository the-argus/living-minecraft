advancement revoke @s only argus.armor_rebalance:iron/boots
recipe take @s minecraft:iron_boots
clear @s knowledge_book

tag @s add ar_book_kill
schedule function argus.armor_rebalance:kill_book 1t
