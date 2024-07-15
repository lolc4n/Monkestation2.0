/datum/map_generator/cave_generator/descoladora
	weighted_open_turf_types = list(/turf/open/misc/asteroid/basalt = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral/random/breathable = 1)

	weighted_mob_spawn_list = list(
		/mob/living/basic/bat = 50,
		/mob/living/basic/lightgeist = 2,
		/mob/living/basic/spider/giant/guard = 20
		/mob/living/basic/spider/giant/hunter = 20
		/mob/living/basic/spider/giant/scout = 6
		/mob/living/basic/mining/bileworm = 10,
		/mob/living/basic/mining/lobstrosity/lava = 5,
		/mob/living/basic/mining/goldgrub = 8,
		/mob/living/basic/mining/basilisk = 8,
		/mob/living/basic/mining/hivelord = 12,
		/obj/structure/spawner/mining/basilisk = 2,
		/obj/structure/spawner/mining/hivelord = 3,
	)

	weighted_flora_spawn_list = list(
		/obj/structure/flora/ash/cacti = 1,
		/obj/structure/flora/ash/cap_shroom = 2,
		/obj/structure/flora/ash/fireblossom = 2,
		/obj/structure/flora/ash/leaf_shroom = 2,
		/obj/structure/flora/ash/seraka = 2,
		/obj/structure/flora/ash/stem_shroom = 2,
		/obj/structure/flora/ash/tall_shroom = 2,
	)

	///Note that this spawn list is also in the icemoon generator
	weighted_feature_spawn_list = list(
		/obj/structure/geyser/hollowwater = 10,
		/obj/structure/geyser/plasma_oxide = 10,
		/obj/structure/geyser/protozine = 10,
		/obj/structure/geyser/random = 2,
		/obj/structure/geyser/wittel = 10,
	)

	initial_closed_chance = 45
	smoothing_iterations = 50
	birth_limit = 4
	death_limit = 3