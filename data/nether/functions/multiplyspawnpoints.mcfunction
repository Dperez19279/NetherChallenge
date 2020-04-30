execute at @e[tag=spawnpoint,sort=random,limit=1] run summon minecraft:enderman ~ ~ ~ {Attributes:[{Name:"generic.follow_range", Base:0.0},{Name:"generic.knockback_resistance", Base:1.0},{Name:"generic.movement_speed", Base:0.0},{Name:"generic.attack_damage", Base:0.0}],NoAI:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}],Silent:1,DeathLootTable:"minecraft:empty",Tags:["spawnenderman"]}
# execute at @e[tag=spawnenderman] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-10.0,0.0]}

#execute at @e[tag=spawnenderman] run summon minecraft:snowball ~ ~1 ~-1 {Motion:[0.0,0.0,0.1]}
#execute at @e[tag=spawnenderman] run summon minecraft:snowball ~ ~1 ~1 {Motion:[0.0,0.0,-0.1]}
#execute at @e[tag=spawnenderman] run summon minecraft:snowball ~-1 ~1 ~ {Motion:[-0.1,0.0,0.0]}
#execute at @e[tag=spawnenderman] run summon minecraft:snowball ~1 ~1 ~ {Motion:[-0.1,0.0,0.0]}
