
tag @s remove spawnpointExists
execute if entity @e[tag=spawnpoint] run tag @s add spawnpointExists

tag @s remove inOverworld
execute if entity @s[nbt={Dimension:0}] run tag @s add inOverworld

# Removing check for now. Not sure if I want to keep it
tag @s add inOverworld

tag @s remove emptyInventory
execute if entity @s[nbt={Inventory:[]}] run tag @s add emptyInventory

tag @s add emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:0b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:1b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:2b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:3b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:4b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:5b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:6b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:7b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:8b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:9b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:10b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:11b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:12b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:13b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:14b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:15b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:16b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:17b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:18b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:19b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:20b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:21b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:22b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:23b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:24b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:25b}]}] run tag @s remove emptyEnderchest
execute if entity @s[nbt={EnderItems:[{Slot:26b}]}] run tag @s remove emptyEnderchest

execute if entity @s[tag=!spawnpointExists] run tellraw @s ["",{"text":"There doesn't appear to be any spawnpoints. Did you create any?"}]
execute if entity @s[tag=!inOverworld] run tellraw @s ["",{"text":"You can only enter this challenge from the Overworld"}]
execute if entity @s[tag=!emptyInventory] run tellraw @s ["",{"text":"You need an empty inventory to start"}]
execute if entity @s[tag=!emptyEnderchest] run tellraw @s ["",{"text":"Your enderchest needs to be empty as well"}]

execute if entity @s[tag=spawnpointExists,tag=inOverworld,tag=emptyInventory,tag=emptyEnderchest] run execute at @e[tag=spawnpoint,sort=random,limit=1] run tp @s ~ ~ ~