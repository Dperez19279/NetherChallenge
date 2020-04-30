
scoreboard objectives add potionmotionx dummy
scoreboard objectives add potionmotiony dummy
scoreboard objectives add potionmotionz dummy
scoreboard objectives add potionmotionoldx dummy
scoreboard objectives add potionmotionoldy dummy
scoreboard objectives add potionmotionoldz dummy
scoreboard objectives add nether_tick dummy
scoreboard objectives add spawnpoint_count dummy
scoreboard objectives add cfgNumSpawnpoint dummy

scoreboard players add #cfgNumSpawnpoint cfgNumSpawnpoint 0
execute if score #cfgNumSpawnpoint cfgNumSpawnpoint matches 0 run scoreboard players set #cfgNumSpawnpoint cfgNumSpawnpoint 5

scoreboard objectives add netherchallenge trigger

