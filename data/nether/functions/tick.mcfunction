function nether:track_potion

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] at @s if block ~ ~ ~ minecraft:cauldron[level=0] run tag @s add fill
execute at @e[tag=fill] run setblock ~ ~ ~ minecraft:cauldron[level=3]
kill @e[tag=fill]

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:magma_cream",Count:1b}}] at @s if block ~ ~ ~ minecraft:cauldron unless block ~ ~ ~ minecraft:cauldron[level=0] run tag @s add clean
execute at @e[tag=clean] if block ~ ~ ~ minecraft:cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron[level=0]
execute at @e[tag=clean] if block ~ ~ ~ minecraft:cauldron[level=2] run setblock ~ ~ ~ minecraft:cauldron[level=1]
execute at @e[tag=clean] if block ~ ~ ~ minecraft:cauldron[level=3] run setblock ~ ~ ~ minecraft:cauldron[level=2]
execute at @e[tag=clean] run summon minecraft:item ~ ~ ~ {Item:{id:"slime_ball",Count:1b}}
kill @e[tag=clean]

execute as @a if score @s netherchallenge matches 1.. run function nether:netherteleport

scoreboard players reset @a netherchallenge
scoreboard players enable @a netherchallenge

scoreboard players add #nether_tick nether_tick 1

# Every 1 second
execute if score #nether_tick nether_tick matches 1 run function nether:second
execute if score #nether_tick nether_tick matches 21 run function nether:second
execute if score #nether_tick nether_tick matches 41 run function nether:second
execute if score #nether_tick nether_tick matches 61 run function nether:second
execute if score #nether_tick nether_tick matches 81 run function nether:second

execute if score #nether_tick nether_tick matches 100.. run scoreboard players set #nether_tick nether_tick 0
