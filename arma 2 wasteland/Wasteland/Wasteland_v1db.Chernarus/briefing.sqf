player createDiarySubject ["changelog","Change log"];
player createDiarySubject ["wasteland", "What is Wasteland?"];
player createDiarySubject ["rules", "Server Rules"];

player createDiaryRecord["changelog", ["Changelog",
"
Version 1DB DEV-Build 4:<br/>
Fixed: UI should now properly be scaled at any ratio/interface size.<br/>
Fixed: Spawn beacons shouldn't dupe anymore.<br/>
<br/>
Notes: There were various changes made but they were done 2-3 weeks prior to this DEV push so I can't actually recall what they were but are relevent.<br/>
<br/>
Version 1DB DEV-Build 3:<br/>
Fixed: Couldn't take meat from chickens.<br/>
Fixed: Couldn't eat cooked rabbit meat.<br/>
Changed: Military Offroad Ambulances are now considered military and won't spawn in a ridiculous number.<br/>
Removed: Some debug hints for the new inventory system.<br/>
<br/>
Version 1DB DEV-Build 2:<br/>
Added: Weight System, the player inventory is now a weight like system.<br/>
Fixed: Spawn beacons will no longer injure a unit when placed.<br/>
Changed: Gutting system revamped and rabbits can be gutted again.<br/>
Added: JIP System, players can no longer team swap in a 30 minute time period and can no longer regain food when reconnecting.<br/>
Changed: Player Inventory menu - You can now drop multiple times of the selected item and menu updates.<br/>
Fixed: Players will no longer randomly spawn in debug lands (yay).<br/>
<br/>
Notes: Umm, there were more changes that I can't remember but in a developers point this update was a huge update for me, a lot of the backend has been changed and required countless hours and headches. Feature wise it doesn't bring a 
whole lot but does introduce game changing game play. There are of course other updates that I made but I can't remember what they were off the top of my head...<br/>
<br/>
<br/>
Version 1DB DEV-Build 1:<br/>
Added: Cool down for placing a spawn beacon, implaced to stop people from bypassing the limitor.<br/>
Changed: Roaming AI are now controlled by the server.<br/>
Changed: AI should now attack civilians and rogue players while in cars.<br/>
Changed: Backpacks are removed on player spawn to prevent units with backpacks spawning with mines, etc.<br/>
Added: HUD system for food/water.<br/>
Changed: Various civilian units were changed to PMC units to enable civilians to use backpacks.<br/>
Fixed: Animals stopped spawning for some reason only rabbits would spawn.<br/>
<br/>
Notes: This update was to mainly fix the remaining exploits along with to introduce a HUD system for food/water. This system is experimental in the dev-builds.<br/>
<br/>
Version 1DB DEV-Build:<br/>
Fixed: Players were able to rapidly use the gut action on animals resulting in a dupe.<br/>
Fixed: Players would spawn in the debug lands.<br/>
Fixed: AI should no longer travel into a gun store area (approx 350m).<br/>
Fixed: AI should no longer attack near a gun store.<br/>
Changed: Gun prices at the gun store have changed to add rarity.<br/>
Fixed: Scoring should now work properly. Blufor,Opfor,Civilian can no longer friendly fire each other only their own team mates.<br/>
<br/>
Notes: First note... This is a testing phase but I have did slight bit of JIP work, this work will include if you're a JIP client you will spawn with nothing. This will cut back on people backing out of a game and rejoining to
regain their food, water and money.<br/>
<br/>
Version 1D Release: <br/>
Fixed: AI Should now attack civilians and rogue players.<br/>
Changed: ENTIRE backend (Useless for the public to know).<br/>
Changed: Spawn Beacons have been secrelty nerfed i'll let you figure that one out.<br/>
Changed: Minor tweaks to the dialogs to update some values.<Br/>
Changed: Anti-Teleport should no longer bug out (as much) and will report more information to the server.<br/>
Changed: Some animations didn't sync across the network but they do now...<br/>
Changed: Reduced amount of AI.<br/>
Fixed: EventHandlers weren't being loaded in.<br/>
Changed: Custom AI functionality will no longer work against players that are not of civilian/rogue.<br/>
Removed: Food stands.<br/>
Fixed: ~ Key not always working
Added: MV-22 (Osprey) to the helicopter SM.<br/>
Added: Static inplacements will now spawn.<br/>
Changed: Artillery trucks and other armored vehicles have been reduced.<br/>
<br/>
Notes: This is the final version of V1D and is being pushed as a release for other communities to host, visit the Dev-Heaven page for the files. There were other fixes in this but they were a week ago from today (9/3/2012) that I just can't remember but i'm
sure they were important.<br/>
<br/>
Version 1D Final:<br/>
Fixed: When a player shot in the gun store twice and then shot once outside the gunstore range it would kill/kick the player.<br/>
Added: Anti-Teleport check to stop players from teleporting.
Fixed: Players can no longer punch/hit other players in the gunstore range, check didn't function properly in last update...<br/>
Changed: New set of animations play when a person is punched.<br/>
Changed: The castle walls around the gunstores can no longer be destroyed.<br/>
Changed: Now when you die and you have a spawn beacon placed, you will be given an option to spawn on it or do the normal spawn.<br/>
Added: Light-Mid APC's now spawn.<br/>
Fixed: Sometimes when a player JIP'd in he/she couldn't use their player menu via ~ key.<br/>
Fixed: Random roaming AI are now fixed should start spawning again.<br/>
Fixed: Large Ammo cache and Money stash should be fixed and backup on the rotation list.<br/>
<br/>
Notes: ACR is now implemented within this patch, players that don't have at the least ACR (LITE) They will be warned and won't be able to play until they install it. Once patch 1.63 is released which includes ACR Lite Wasteland won't be able to fully utilize ACR.
I have also changed how spawn beacons work with this update... I got a lot of negative feedback mainly being from the fact you can't choose weather or not you want to spawn on your beacon. I am however still debating if I want to implement a usage system i.e you spawned on it 3 times it then deletes its self.<br/>
<br/>
Version 1D RC-Final Touches:<br/>
Fixed: AEG Should now be functioning properly for players to disrupt power grids in areas!<br/>
Added: Gunstores are now 'Fortified' and will be surrounded by a castle wall to prevent camping snipers.<br/>
Fixed: Players can no longer 'Punch' or 'Riflebutt' other players at gunstores.<br/>
Changed: Fire chances at gun store has been changed, first shot will warn you. Second shot will remove your gun, third will kick you.<br/>
Changed: Removed the Heavy MG from the roaming raiders group to give players a fighting chance.<br/>
Fixed: More fixes to side missions to prevent side-mission crashes.<br/>
Fixed: Large supply cache should now be random.<br/>
Changed: Roaming AI tweaked to prevent invalid coordinates which keeps them from spawning.<br/>
Added: Spawn beacons! You can now obtain spawn beacons allowing you to place them at your base or somewhere on the map and respawn on them when you die.<br/>
Changed: Server-side code tweaked in hopes to allow more weapons / items to spawn in buildings.<br/>
Changed: Respawn time is set back to 30 seconds.<br/>
Changed: Changed Ammo cache spawn rate from 8 to 12.<br/>
Added: Backpacks will now spawn in the mix. *NOTE ONLY ARMA: 2 OA UNITS CAN WEAR THEM!*<br/>
<br/>
Notes: You can now obtain spawn beacons which you can setup as a respawn point, at the current moment this is a test feature and feedback is welcome on your thoughts. Various big changes coming soon to Wasteland for the final version of V1D which will
be public for other communities to host, some big changes coming will include road flares, new lootable building system and the possibility of a revive like system. And with the final words of this note in around a weeks time the server Tonic's Wasteland (Official 
Wasteland server) will be adding ACR (Army of Czech Republic) DLC Support, players will need to have either ACR (LITE) or ACR (FULL) to be able to play. Visit store.bistudio.com to get them! *NOTE ACR FULL COSTS MONEY WHERE AS ACR (LITE) DOES NOT*<br/>
<br/>
Version 1D Beta RC-Final:<br/>
Added: Roaming 'Raiders' that will come to you randomly and try to kill you.<br/>
Fixed: AI At sidemissions not attacking civilian and rogue players (hopefully).<br/>
Changed: Players shouldn't get dehydrated so quickly anymore.<br/>
<br/>
Notes: Adjusted a few other things that aren't worth mentioning.<br/>
<br/>
Version 1D Beta RC-PreFinal-1:<br/>
Added: Ability to sell guns at gunstores READ NOTES BELOW FOR MORE INFO.<br/>
Changed: Hit functionality  cleaned up some more.<br/>
Fixed: Tlide (~) key would bug out when JIP'ing in not allowing players to open Player Menu.<br/>
Changed: Repair and Refuel capabilities tuned for farther ranges and you can no longer fully repair/refuel vehicles.<br/>
Changed: Survival System (Hunger/Thirst) changed a bit, doing more actions will cause you to dehydrate more.<br/>
Changed: Side Mission JIP System.<br/>
Changed: Buying guns at gun stores now goes into an ammo crate next to the seller, this box can't be moved so don't try.<br/>
<br/>
Notes: Selling guns at gun stores are now possible, there is a button called 'Sell current gun in hand', this means whatever gun is currently in your hand you will sell to the gun store along with the magazines. This is extremely experiemental and
no idea what bugs may occure so please report them. If all goes well the next update to complete Version 1D I will be adding the ability to buy / sell resources i.e. Food, water, medkits and possible base building crafting functionality.<br/>
<br/>
Version 1D Beta RC-PreFinal:<br/>
Changed: When fuel cans are used it will turn empty and you can now refuel them at gas pumps.<br/>
Changed: Refueling capabilities, air vehicles now refuel by 0.25 and land vehicles refuel at 0.35.<br/>
Added: Guns and items now spawn in / around enterable buildings.<br/>
Fixed: You can no longer kill the gun shop guys or push them away with a vehicle.<br/>
Changed: The hit functionality has been tuned up and now syncs better with the animations and you can no longer 'Rapid hit' a target.<br/>
Changed: The hit functionality now gives you a chance to knock the target out for 30 seconds.<br/>
Core changes: Tweaks to the core code have been made and when the mission first starts players will now have a black still putting them at a 'Pause' till everything is ready.<br/>
Core changes: Other various core functionality was changed to help fix random crashes and stability issues.<br/>
Added: New side mission called 'Recover Bomb' this side mission you can recover a bomb from a raiders camp and use it to blow up whatever target you choose.<br/>
Fixed: Money stash side mission now functions properly and users can now get the money from the crate.<br/>
<br/>
Notes: This was a pretty heavy duty update, it was focused a lot more on the backend and not so much bugs and features, this is a Pre-final beta for version 1D. The next 1-2 releases will be the last bits of testing and changes for Version 1D.<br/>
<br/>
Version 1D Beta RC9 (Coconut edition) and standard: <br/>
Added: The ability to punch / rifle butt other players and AI to stun or kill them with enough hits.<br/>
Changed: Player menu can no longer be accessed via action menu. To access your player menu just hit your tlide key ~<br/>
Fixed: Other various tiny bugs.<br/>
Added: Maruko now spawns some what destroyed to give it that 'Wasteland riot feel'.<br/>
Changed: You now dehydrate more from walking / doing stuff with a general overhaul of the survival system.<br/>
Fixed: Players not being assigned a spawn properly - This was a initalization problem in the beginning with BIS functions.<br/>
<br/>
Version 1D Beta RC8 (Coconut edition): <br/>
Fixed: Players now drop all inventory (i.e. cooked and raw food).<br/>
Fixed: Sidemission Money stash.<br/>
Improved: Fast time sync.<br/>
Fixed: Abandon base on second spawn didn't have a marker.<br/>
Added: Secret new functionality.<br/>
Changed: Wheeled Lingor APC's are no longer easy to find they are counted as military vehicles.<br/>
Changed: SUV's limited to only one SUV Type (EP1) which means there won't be 3252352 SUV's.<br/>
<br/>
Notes: Fuck I can't even remember what all i've fixed and added... Oh well sue me..<br/>
<br/>
Version 1D Beta RC7 (Coconut edition): <br/>
Fixed: Players now drop items.<br/>
Changed: Fast Time is now handled by the server and clients are synced with it.<br/>
Added: Support for Addon Vehicles in the dynamic spawn.<br/>
Added: Boats are now random.<br/>
Changed: Vehicle / Object Spawning system has been changed and will hopefully fix desync in beginning.<br/>
Added: New cleanup system for the server to help keep things smooth.<br/>
Added: New side mission called money stash, players will have to search a grid zone to find a container with a random amount of cash from $750-$4,000.<br/>
Added: 3 Reaccuring Sidemissions including Helicopter, Abandon base and the new Side mission Money stash.<br/>
<br/>
Notes: Welcome to Lingor, war has torn apart this island and you are left as one of the remaining survivors.<br/>
<br/>
Version 1D Beta RC6:<br/>
Changed: Bumped number of ammo caches to 8.<br/>
Added: Ambient animals were added with extended functionality to gather meat from them.<br/>
Changed: You can no longer eat raw meat, you must now cook it over a campfire.<br/>
Changed: Changed the fast time value so that time goes by faster now.<br/>
Fixed: Side missions should no longer spawn on top of each other.<br/>
Added: Cherno and Electro now spawn in a destroyed state.<br/>
Changed: Grass forced to maximum distance possible.<br/>
Fixed: Merlin can now lift objects and store objects.<br/>
<br/>
Notes: The grass was forced to maxmim distance, this is a trial phase and is not said to stay like this. Going to judge the performance impact first.. Other changes but I already forgot... More to come!<br/><br/>
Version 1D Beta RC5:<br/>
Core: Reduced the amount of objects that spawn.<br/>
Changed: Players no longer spawn with 20 dollars to prevent money padding.<br/>
Changed: Food stands now hold 15 cans of food, water barrels hold 20.<br/>
Added: Loading screen - Thanks Whiskey<br/>
Feature #30267: Ability to fill water bottles from blue wells.<br/>
Added: Wooden crates to store food/water/repairkits/etc.<br/>
Added: Empty Ammo boxes to store guns collected from vehicles, etc.<br/>
Changed: Reduced the amount of ammo caches to 5.<br/>
Feature #30445: Added Bases around the map.<br/>
Feature #30498: Removed settings menu to balance PVP.<br/>
Added: Rogue list so civs can see who is currently rogue.<br/>
Fixed: AI now attack civilians at side missions.<br/>
Changed: Weather variables, chances of rain have increased and fog reduced.<br/>
Bug #30575: Fixed rogue notifications.<br/>
And some other changes that I am just to damn lazy to remember.<br/>
<br/>
Version 1D Beta RC4:<Br/>
<br/>
Feature #29904: Added Food, water and currency.<br/>
Feature: Added gun stores across the map.<br/>
Feature #30048: Road flares.<br/>
Feature #29909: Tire Fix Script<br/>
Core: Redid most of the core function.<br/>
Fixed: Exploit in gunshop allowing infinite gun support.<br/>
Fixed: Couldn't pickup money.<br/>
Removed: Disabled R3F Arty so grads can properly be used.<br/>
Added: Burning campfires at gun stores that cannot be moved so that players can see at night.<br/>
Changed: R3F So players cannot move objects placed by another team when they're within 150m.<br/>
Changed: Prices at gun stores.<br/>
Updated: Spawning System. Players should no longer spawn inside houses.</br>
Core: Removed some unsured publicVariable's that may be causing mass Desync in beginning.</br>

"]
];

player CreateDiaryRecord["wasteland",
[
"WELCOME TO CRFT Gaming's WASTELAND",
"
The Wasteland is a team versus team versus team sandbox survival experience.  The objective of this mission is to rally your faction, scavenge supplies, weapons, and vehicles, and destroy the other factions.  It is survival at its best!  Keep in mind this is a work in progress and Tonic is hard at work to bring new, better features with each release.  If you have a suggestion or issues, visit his devheaven page for the wasteland https://dev-heaven.net/projects/wasteland-survival-sandbox
<br/><br/>

FAQ<br/>
Q. What am I supposed to do here?<br/>
A. See the above description<br/>
<br/>
Q. Where can I get a gun?<br/>
A.  Weapons are found in one of three places, first in ammo caches that randomly spawn around the map, and second, in the gear section of the vehicles, which also randomly spawn around the map.  The last place to find a gun would be at the gunshops located throughout the map.  You can also find them on dead players whose bodies have not yet been looted.
<br/></br><br/>
Q.  What are the colored circles on the map?<br/>
A.  The colored circles represent power grids, each color with its own transformer or substation.  If you tamper with the substation, the grid will lose power, it will be very inconvenient for anyone looking through the town at night.
<br/><br/><br/>
Q.  Why is it so dark, I cant see.<br/>
A.  The server has a day/night cycle just like in the real world, and as such, night time is a factor in your survival.  It is recommended that you find sources of light or Night Vision Goggles before the darkness sets in.  You can find night vision goggles in vehicles, or you can purchase them at the gunshops.
</br></br><br/><br/>
Q.  Is it ok for me to shoot my team mates?<br/>
A.  If you are a member of the OpFor or the BluFor, it is seriously frowned upon to shoot your teammates and go rogue.  It is recommended that if you want to go rogue and lone wolf it, that you join the civilian faction.  If you are civilian and intend to go rogue, inform your team as such so that there is no confusion as to why you shot them.
<br/><br/>
Q.  Whats with the teapots and big bags?<br/>
A.  This game has a food and water system that you must stay on top of if you hope to survive.  You can collect food and water from water barrels, food stands, or dead players bodies.  Food and water will randomly spawn around the map.  Other items that will randomly spawn are fuel cans for refueling vehicles, medkits for healing yourself, and toolkits for repairing vehicles.  Each of these is a one-time-only use item.
<br/><br/>
Q.  I saw someone breaking a rule, what do I do?<br/>
A.  Simply go into global chat and get the attention of one of the admins  (Tonic, Whiskey, LUNCHBOX) and let them know who the offender was and what they did and they will be dealt with swiftly.
<br/>
"]
];

player createDiaryRecord["wasteland",
[
"Hints & Tips",
"
<br/>
    At the start of the game, spread out and find supplies before worrying about where to establish a meeting place or a base, supplies are important and very valuable.</br>
    When picking a base location, it is best advised to pick a place that is out of the way and not so obvious such as airports, cities, castles, etc.  remember, players randomly spawn in and around towns and could even spawn inside your base should you set it up in a town.<br/>
    If you spawn in an area with no vehicles or supplies in the immediate area, DO NOT just click respawn from the pause menu, chances are if you search an area of a few hundred meters, you will find something.<br/>
    Always be on the lookout for nightvision.  Two pairs are located in the Large Cache, and there are pairs scattered throughout cars.  You can also purchase them from the gunstores.  Nighttime without them SUCKS, and if you have them, you can conduct stealth raids on enemy bases under the cover of complete darkness.<br/>
    When you set up a base, never leave your supplies unguarded, one guard will suffice, but it is recommended you have at least 2, maybe 3 guards at base at all times.<br/>
    The helicopter from the side mission spawns with no fuel, so do not make a mad dash for the chopper unless you are armed and plan to protect it, or have some fuel which can be found in the fuel truck, or in the palated barrels from the abandoned base.<br/>
    There are very aggressive AI characters that spawn with most side missions and will protect the mission objectives with deadly force, be aware of them.<br/>
"
]
];

player createDiaryRecord["rules",["Server Rules!",
"
Breaking these will result in a kick/ban</br></br><br/><br/>
    No killing within 200 meters of any of the gunshops</br><br/>
    No stealing other players' vehicles or gear from their vehicles at the gunshops.<br/><br/>
    If you are going rogue as a civilian, you must announce to your team that you are an enemy and will shoot them on sight before killing them.<br/><br/>
    No cross team communications/information sharing/alliances.<br/><br/>
    Don't be an asshat or disrespectful<br/><br/>
    No hacking/spawning things/teleporting around.<br/>
"
]
];