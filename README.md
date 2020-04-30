# Nether Challenge Datapack

The goal of this datapack is to start in the Nether with no items. In the past, you wouldn't even be able to craft tools, but with the latest 1.16 update, it is possible, but very challenging. This datapack adds some features that allow you to do stuff like brew potions and make redstone all without ever visiting the Overworld. I recommend you experiment in creative to learn all the new features.

## Installation

1. Launch a Minecraft instance with the version 1.16 (currently in "Latest Snapshot")
2. Create a world you want to add this datapack to (it can be an already existing world, but you may want to make a backup just in case)
3. Download "Nether Challenge.zip"
4. Open the world save
   * For singleplayer: From the world selection screen, select the world > Edit > Open World Folder
   * For multiplayer: Open the "world" folder
5. Place "Nether Challenge.zip" inside the "datapacks" folder
6. Enter the world

## How to setup the challenge

1. A player that has access to commands
   * For singleplayer: Cheats must be enabled (you can temporarily enable cheats by using "Open to LAN")
   * For multiplayer: Player must be an operator
2. Enter the Nether and teleport to coordinates far away from where a player could walk to
   * I recomend around 10000000 by 10000000 as, at these coordinates, it is impossible to enter the nether through a nether portal. This makes nether portals into one-way doors. This is important to make sure no players exit the nether, grab overworld resources, and return to the challenge. I recomend being in creative mode for this process.
   * The command might look like `/execute in minecraft:the_nether run teleport @s 10000000 70 10000000`
3. Choose a spot you think is suitable to set the spawnpoints. You should take into consideration the distance to important biomes and structures
4. Configure the number of spawnpoints you would like to be created (this set is optional as the default is 5)
   * `/scoreboard players set #cfgNumSpawnpoint cfgNumSpawnpoint NUMSPAWNPOINTS` where NUMSPAWNPOINTS is the number you would like for it to create
5. Stand where you like to create the first spawn point and run `/function nether:createspawnpoint`
6. There should be enderman and snowballs temporarily appearing. Wait for them to stop. You can verify that its done by running the following command. It reports the number of spawnpoints that have been created.
   * `/scoreboard players get #spawnpoint_count spawnpoint_count`
7. You may now return back to where your player was originally

## Starting the challenge

1. To start, ensure you have a completely empty inventory and that your enderchest is empty as well.
2. Type in the command `/trigger netherchallenge` which will teleport you to a random spawnpoint

## Features added by this datapack

* Piglins will drop redstone as one of their barters
* Ghast tears dropped into empty cauldrons will fill the cauldron
* Magma cream dropped into cauldrons with water will consume level of water while cleaning the magma cream into a slime ball
* Brewing Stands can also be crafted from blackstone
* Splash potions will drop a piece of sand when the potion shatters
* A replica of a bug from snapshot 15w31a. When a splash water bottle extinguishes fire, it temporarily sets a flowing water that can create cobblestone
* The spawnpoint system as shown in steps 3-7 of "How to setup the challenge" and "Starting the challenge"

## Sidenotes

* The spawnpoints are shown using items called jigsaw blocks. You cannot pick it up.
* If you do not like a spawnpoint, destroy it like you would any item (eg. fire)
* You can remove all spawnpoints with `/function nether:deletespawnpoints`
* If you think a material/item is too difficult to obtain or any other suggestion, text me
* If you have any other bugs or glitches, text me