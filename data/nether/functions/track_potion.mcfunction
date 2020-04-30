
# Start Tracking
tag @e[type=minecraft:potion,tag=!tracking] add starttracking
execute at @e[tag=starttracking,nbt={Item:{tag:{Potion:"minecraft:water"}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["trackingcloud","starttrackingcloud","watercloud"], Duration:30000}


execute at @e[tag=starttracking,tag=!tracking] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["trackingcloud","starttrackingcloud"], Duration:30000}
tag @e[tag=starttracking] add tracking

# Track
execute at @e[tag=tracking] as @e[tag=tracking] run tp @e[type=minecraft:area_effect_cloud,tag=trackingcloud,limit=1,distance=..2,sort=nearest] @s

# execute at @e[tag=trackingcloud] as @e[tag=trackingcloud] if block ~ ~ ~ minecraft:fire run say f
# execute at @e[tag=trackingcloud] as @e[tag=trackingcloud] if block ~ ~ ~ minecraft:air run say a

# execute at @e[type=minecraft:area_effect_cloud,tag=trackingcloud] run particle minecraft:falling_water ~ ~ ~

# Detect if broken
execute as @e[type=minecraft:area_effect_cloud,tag=trackingcloud] store result score @s potionmotionx run data get entity @s Pos[0] 256
execute as @e[type=minecraft:area_effect_cloud,tag=trackingcloud] store result score @s potionmotiony run data get entity @s Pos[1] 256
execute as @e[type=minecraft:area_effect_cloud,tag=trackingcloud] store result score @s potionmotionz run data get entity @s Pos[2] 256

execute as @e[tag=trackingcloud,tag=!starttrackingcloud] run scoreboard players operation @s potionmotionoldx -= @s potionmotionx
execute as @e[tag=trackingcloud,tag=!starttrackingcloud] run scoreboard players operation @s potionmotionoldy -= @s potionmotiony
execute as @e[tag=trackingcloud,tag=!starttrackingcloud] run scoreboard players operation @s potionmotionoldz -= @s potionmotionz

#execute as @e[tag=trackingcloud] run tellraw @p ["",{"text":"Score is"},{"score":{"name":"@s","objective":"potionmotionx"}},{"text":","},{"score":{"name":"@s","objective":"potionmotiony"}},{"text":","},{"score":{"name":"@s","objective":"potionmotionz"}}]
#execute as @e[tag=trackingcloud] run tellraw @p ["",{"text":"Score is"},{"score":{"name":"@s","objective":"potionmotionoldx"}},{"text":","},{"score":{"name":"@s","objective":"potionmotionoldy"}},{"text":","},{"score":{"name":"@s","objective":"potionmotionoldz"}}]


execute as @e[tag=trackingcloud,tag=!starttrackingcloud] if score @s potionmotionoldx matches 0 if score @s potionmotionoldy matches 0 if score @s potionmotionoldz matches 0 run tag @s add broke
# Process broken
execute at @e[tag=broke] run summon item ~ ~ ~ {Item:{id:"minecraft:sand",Count:1b}}

# execute at @e[tag=broke] if block ~ ~ ~ minecraft:air run say air
# execute at @e[tag=broke] if block ~ ~ ~ minecraft:fire run say fire
# execute at @e[tag=broke,tag=fire] if block ~ ~ ~ minecraft:air run say extinguish
execute at @e[tag=broke,tag=fire] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ water[level=1]
execute at @e[tag=broke,tag=fire] if block ~ ~ ~ minecraft:cave_air run setblock ~ ~ ~ water[level=1]
execute at @e[tag=broke,tag=fire] if block ~ ~ ~ minecraft:void_air run setblock ~ ~ ~ water[level=1]

kill @e[tag=broke]

# Remove tags and update old scoreboards
execute at @e[tag=trackingcloud,tag=watercloud] as @e[tag=trackingcloud,tag=watercloud] if block ~ ~ ~ minecraft:fire run tag @s add fire
execute at @e[tag=trackingcloud] as @e[tag=trackingcloud] unless block ~ ~ ~ minecraft:fire run tag @s remove fire
execute as @e[tag=trackingcloud] run scoreboard players operation @s potionmotionoldx = @s potionmotionx
execute as @e[tag=trackingcloud] run scoreboard players operation @s potionmotionoldy = @s potionmotiony
execute as @e[tag=trackingcloud] run scoreboard players operation @s potionmotionoldz = @s potionmotionz
tag @e[tag=starttracking] remove starttracking
tag @e[tag=starttrackingcloud] remove starttrackingcloud

