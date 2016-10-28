/*
-- Query: SELECT * FROM dota.skill
-- Date: 2016-10-25 16:13
*/
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (1,'fissure','Fissure','Slams the ground with a mighty totem, creating an impassable ridge of stone while stunning and damaging enemy units along its line.','125/140/155/170','15','POINT TARGET','ENEMY UNITS','MAGICAL','NO','110 / 160 / 210 / 260','1400','8','1 / 1.25 / 1.5 / 1.75',NULL,NULL,1);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (2,'enchant_totem','Enchant Totem','Empowers Earthshaker\'s totem, causing it to deal extra damage on the next attack. Upgradable by Aghanim\'s Scepter.','20/30/40/50','5','NO TARGET','ENEMY UNITS',NULL,NULL,'0 / 0 / 0 / 0',NULL,'14 / 14 / 14 / 14',NULL,'100% / 200% / 300% / 400%','900',1);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (3,'aftershock','Aftershock','Causes the earth to shake underfoot, adding additional damage and stuns to nearby enemy units when Earthshaker casts his abilities.',NULL,NULL,'PASSIVE',NULL,'MAGICAL','NO','50 / 75 / 100 / 125','300','0.6 / 0.9 / 1.2 / 1.5',NULL,NULL,NULL,1);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (4,'echo_slam','Echo Slam','Shockwaves travel through the ground, damaging enemy units. Each enemy hit causes an echo to damage nearby units.','145/205/265','150/130/110','NO TARGET',NULL,'MAGICAL','NO','160 / 210 / 270','600',NULL,NULL,'40 / 55 / 70',NULL,1);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (5,'storm_bolt','Storm Hammer','Sven unleashes his magical gauntlet that deals damage and stuns enemy units.','140','13','UNIT TARGET','ENEMY UNITS','MAGICAL','NO','100 / 175 / 250 / 325','255','2',NULL,NULL,NULL,2);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (6,'great_cleave','Great Cleave','Sven strikes with great force, cleaving all nearby enemy units with his attack.',NULL,NULL,'PASSIVE',NULL,NULL,'YES','30% / 42% / 54% / 66%','300.000000',NULL,NULL,NULL,NULL,2);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (7,'warcry','Warcry','Sven\'s Warcry heartens his allies for battle, increasing their movement speed and armor. Lasts 8 seconds.','25/25/25/25','32/26/20/14','NO TARGET',NULL,NULL,NULL,NULL,'900','8',NULL,'ARMOR: 5 / 10 / 15 / 20 SPEED: 12%',NULL,2);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (8,'gods_strength','God\'s Strength','Sven channels his rogue strength, granting bonus damage for 25 seconds. Upgradable by Aghanim\'s Scepter.','100/150/200','80','NO TARGET',NULL,NULL,NULL,'100% / 150% / 200%','900',NULL,NULL,'','DAMAGE: 75% / 100% / 125%',2);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (9,'crystal_nova','Crystal Nova','A burst of damaging frost slows enemy movement and attack rate in the targeted area.','100/120/140/160','12/11/10/9','POINT TARGET','N/A','MAGICAL','NO','100 / 150 / 200 / 250','425','4.5','SLOW: 20% / 30% / 40% / 50%','N/A','N/A',3);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (10,'frostbite','Frostbite','Encases an enemy unit in ice, prohibiting movement and attack, while dealing 50 damage every half-second. Lasts 10 seconds on creeps level 6 or lower.','115/125/140/150','9/8/7/6','UNIT TARGET','ENEMY UNITS','MAGICAL','NO','PER HALF-SECOND: 50','N/A','1.5 / 2 / 2.5 / 3','N/A','N/A','N/A',3);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (11,'brilliance_aura','Arcane Aura','Gives additional mana regeneration to all friendly units on the map. This bonus is increased for Crystal Maiden.','N/A','N/A','PASSIVE','ALLIES','N/A','N/A','N/A','N/A','N/A','N/A','MANA REGEN: 1 / 1.5 / 2 / 3','N/A',3);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (12,'freezing_field','Freezing Field','CHANNELED - Surrounds Crystal Maiden with random icy explosions that slow enemies and deal massive damage. Lasts 10 seconds. Upgradable by Aghanim\'s Scepter.','200/400/600','90','NO TARGET, CHANNELED','N/A','MAGICAL','NO','105 / 170 / 250','835','N/A','N/A','SLOW: 30%','DAMAGE: 170 / 250 / 310',3);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (13,'bloodrage','Bloodrage','Drives a unit into a bloodthirsty rage during which a unit deals, and takes, increased damage. Units affected by Bloodrage will be healed for a percentage of the max health of any units they kill. Units affected by Bloodrage when killed will heal a percentage of their max health to their killer.','N/A','12/10/8/6\n\n','UNIT TARGET','HEROES','N/A','YES','N/A','N/A','9 / 10 / 11 / 12','N/A','25% / 30% / 35% / 40%','N/A',4);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (14,'blood_bath','Blood Rite','Bloodseeker baptizes an area in sacred blood. After 3 seconds the ritual completes, causing any enemies caught in the area to take damage and become silenced.','100','25/21/17/13\n\n','POINT TARGET','N/A','PURE','NO','120 / 160 / 200 / 240','600',' 3 / 4 / 5 / 6','N/A','N/A','N/A',4);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (15,'thirst','Thirst','Bloodseeker is invigorated by the wounds of his enemies, gaining bonus movement speed and attack damage whenever an enemy hero\'s health falls below 75%, with the bonuses increasing as their health falls further. If an enemy hero\'s health falls below 25%, he will also gain vision and True Sight of that hero. Bonuses stack per hero.','N/A','N/A','PASSIVE','N/A','N/A','YES','N/A','VISIBILITY 25%','N/A','N/A','SPEED: 16% / 24% / 32% / 40%','N/A',4);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (16,'rupture','Rupture','Causes an enemy unit\'s skin to rupture. If the unit moves, it takes a percentage of the distance traveled as damage. The damage is dealt through spell immunity. Upgradable by Aghanim\'s Scepter.','150/200/250','60','UNIT TARGET','ENEMY UNITS','PURE','YES','30% / 45% / 60%','1000','12','N/A','N/A','DURATION: 40 CHARGES: 2',4);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (17,'spirit_lance','Spirit Lance','Sends a magical spirit lance to a target enemy unit that damages and slows, while summoning an illusory phantom to attack the unit.','125/130/135/140','7','UNIT TARGET','ENEMY UNITS','MAGICAL','NO','100 / 150 / 200 / 250','N/A','3.25','N/A','SLOW: 10% / 20% / 30% / 40%','N/A',5);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (18,'doppelwalk','Doppelganger','Phantom Lancer briefly vanishes from the battlefield. After 1 second, Phantom Lancer and any of his nearby illusions reappear at a random position within the targeted location, along with two additional doppelgangers. The two added doppelgangers have different properties: one takes normal damage and deals none, while the other takes 600% damage and deals 20% damage.','50','25/20/15/10\n\n25/20/15/10\n\n','POINT TARGET','N/A','N/A','N/A','N/A','900','8','N/A','N/A','N/A',5);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (19,'phantom_edge','Phantom Rush','When targetting an enemy for an attack, Phantom Lancer quickly charges into range. Phantom Lancer\'s illusions also have this ability.','N/A','16/12/8/4\n\n','PASSIVE','N/A','N/A','N/A','N/A',' 600 / 700 / 800 / 900','N/A','N/A','N/A','N/A',5);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (20,'juxtapose','Juxtapose','Phantom Lancer has a chance to fracture his presence, creating an illusion of himself. Illusions also have a chance to fracture further. Illusions created from Phantom Lancer last for 8 seconds, while illusions created from other illusions last 4 seconds.','N/A','N/A','PASSIVE','N/A','N/A','N/A','16%','N/A','TRIGGER CHANCE: 40% / 45% / 50%','N/A','MAX ILLUSIONS: 5 / 7 / 9','N/A',5);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (21,'avalanche','Avalanche','Bombards an area with rocks, stunning and damaging enemy land units.','120','17','POINT TARGET','N/A','MAGICAL','NO','100 / 180 / 260 / 300',' 275','','1','N/A','N/A',6);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (22,'toss','Toss','Grabs the nearest unit in a 275 radius around Tiny, ally or enemy, and launches it at the target unit or rune to deal damage where they land. If the tossed unit is an enemy, it will take an extra 20% damage. Toss does more damage with each level in Grow.','120','8','UNIT TARGET','N/A','MAGICAL','YES','75 / 150 / 225 / 300','1300','N/A','N/A','N/A','N/A',6);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (23,'craggy_exterior','Craggy Exterior','Causes damage to bounce back on Tiny\'s attackers. Enemies that attack Tiny from within 300 units have a chance of being stunned.','N/A','N/A','PASSIVE','N/A','MAGICAL','N/A','25 / 35 / 45 / 55','300','N/A','1 / 1.25 / 1.5 / 1.75','ARMOR: 2 / 3 / 4 / 5','N/A',6);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (24,'grow','Grow','Tiny gains craggy mass that increases his power at the cost of his attack speed. Increases Tossed unit damage and improves movement speed. Upgradable by Aghanim\'s Scepter.','N/A','N/A','PASSIVE','N/A','N/A','N/A','50 / 100 / 150','N/A','N/A','N/A','SPEED: 40 / 50 / 60',' CLEAVE DAMAGE: 50%  TOSS : 50% / 65% / 80%',6);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (25,'gush','Gush','Summons a gush of water to damage an enemy unit, reducing their movement speed and armor. Lasts 4 seconds. Upgradable by Aghanim\'s Scepter.','120','12','UNIT TARGET','ENEMY UNITS','MAGICAL','NO','110 / 160 / 210 / 260','240','N/A','N/A','ARMOR REDUCTION: 3 / 4 / 5 / 6',' COOLDOWN: 7',7);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (26,'kraken_shell','Kraken Shell','Thickens Tidehunter\'s hide to passively block a portion of any incoming physical attack damage. The hide also removes negative status effects if the damage taken crosses a threshold. Does not stack with items that provide Damage Block.','N/A','N/A','PASSIVE','N/A','N/A','N/A','BLOCK: 12 / 24 / 36 / 48','N/A','THRESHOLD TIMER: 6','N/A','N/A','N/A',7);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (27,'anchor_smash','Anchor Smash','Tidehunter swings his mighty anchor to damage nearby enemies and reduce their attack damage.','30/40/50/60','7/6/5/4','NO TARGET','N/A','PHYSICAL','YES','75 / 125 / 175 / 225','375','6','N/A','REDUCTION: 45% / 50% / 55% / 60%','N/A',7);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (28,'ravage','Ravage','Slams the ground, causing tentacles to erupt in all directions, damaging and stunning all nearby enemy units.','150/225/325','150','NO TARGET','N/A','MAGICAL','NO','200 / 290 / 380','1025','2 / 2.4 / 2.8','N/A','N/A','N/A',7);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (29,'devour','Devour','Consumes an enemy or neutral creep, acquiring any special abilities that it possessed.','60','70/60/50/40\n\n','UNIT TARGET','N/A','N/A','N/A','N/A','N/A','N/A','N/A','GOLD: 25 / 50 / 75 / 100','N/A',8);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (30,'scorched_earth','Scorched Earth','Carpets the nearby earth in flames which damage enemies and heal Doom, while also granting him increased movement speed.','60/65/70/75','55','NO TARGET','N/A','MAGICAL','NO','10 / 20 / 30 / 40','600',' 10 / 12 / 14 / 16','N/A','MOVE SPEED: 14%','N/A',8);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (31,'infernal_blade','Infernal Blade','Doom swings his burning sword, igniting the enemy. Stuns for 0.3 seconds and applies a 4 second burn that deals 25 + 1.25% of the target\'s Max HP as damage per second.','40','16/12/8/4\n\n','AUTO-CAST, UNIT TARGET','ENEMY UNITS','MAGICAL','NO','25 / 30 / 35 / 40','N/A','4','0.3','N/A','N/A',8);
INSERT INTO `skill` (`id`,`name`,`full_name`,`description`,`mana`,`cooldown`,`ability`,`affects`,`damage_type`,`spell_immunity`,`damage`,`range`,`duration`,`stun_duration`,`bonus`,`scepter_bonus`,`hero_id`) VALUES (32,'doom','Doom','Inflicts a curse that prevents an enemy Hero from casting spells or using items, while taking damage over time. Upgradable by Aghanim\'s Scepter.','150/200/250','145','UNIT TARGET','ENEMY UNITS','PURE','YES','PER SECOND: 20 / 35 / 50','N/A','15','N/A','N/A','DURATION: 16',8);
