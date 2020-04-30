
# Align all spawn points
execute as @e[type=minecraft:item,tag=spawnpoint] at @s positioned ~ ~0.5 ~ run execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

# Find spawnenderman who have successfully teleported and replace them with spawn points
execute at @e[tag=spawnenderman] unless entity @e[tag=spawnpoint,distance=..1] run function nether:createspawnpoint
execute as @e[tag=spawnenderman] at @s unless entity @e[tag=spawnpoint,tag=!newspawnpoint,distance=..1] run kill @s
tag @e[tag=newspawnpoint] remove newspawnpoint

# Allow the items to stack
execute as @e[tag=spawnpoint] run data modify entity @s Item.Count set value 1
execute as @e[tag=spawnpoint] run data modify entity @s Age set value 0



# Force spawnenderman to teleported
execute at @e[tag=spawnenderman] run summon minecraft:snowball ~ ~1 ~-1 {Motion:[0.0,0.0,0.1]}
execute at @e[tag=spawnenderman] run summon minecraft:snowball ~ ~1 ~1 {Motion:[0.0,0.0,-0.1]}
execute at @e[tag=spawnenderman] run summon minecraft:snowball ~-1 ~1 ~ {Motion:[-0.1,0.0,0.0]}
execute at @e[tag=spawnenderman] run summon minecraft:snowball ~1 ~1 ~ {Motion:[-0.1,0.0,0.0]}

# Kill spawnenderman who never teleported
kill @e[tag=snowballed]
tag @e[tag=spawnenderman] add snowballed

scoreboard players set #spawnpoint_count spawnpoint_count 0

execute at @e[tag=spawnpoint] run scoreboard players add #spawnpoint_count spawnpoint_count 1

execute if score #spawnpoint_count spawnpoint_count matches 1.. if score #spawnpoint_count spawnpoint_count < #cfgNumSpawnpoint cfgNumSpawnpoint unless entity @e[tag=spawnenderman] run function nether:multiplyspawnpoints