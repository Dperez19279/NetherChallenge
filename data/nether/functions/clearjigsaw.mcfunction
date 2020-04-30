# Clear all players inventories of jigsaw blocks that are taken by hoppers
clear @s minecraft:jigsaw
tellraw @s ["",{"text":"That item is illegal to own"}]
advancement revoke @s only nether:obtained_spawnpoint