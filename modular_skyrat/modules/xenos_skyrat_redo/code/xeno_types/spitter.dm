/// SKYRAT MODULE SKYRAT_XENO_REDO

/mob/living/carbon/alien/adult/skyrat/spitter
	name = "alien spitter"
	desc = "A fairly heavy looking alien with prominent acid glands, it's mouth dripping with... some kind of toxin or acid."
	caste = "spitter"
	maxHealth = 300
	health = 300
	icon_state = "alienspitter"
	melee_damage_lower = 15
	melee_damage_upper = 20

/mob/living/carbon/alien/adult/skyrat/spitter/Initialize(mapload)
	. = ..()

	add_movespeed_modifier(/datum/movespeed_modifier/alien_heavy)

	REMOVE_TRAIT(src, TRAIT_VENTCRAWLER_ALWAYS, INNATE_TRAIT)

/mob/living/carbon/alien/adult/skyrat/spitter/create_internal_organs()
	organs += new /obj/item/organ/alien/plasmavessel
	organs += new /obj/item/organ/alien/neurotoxin/spitter
	..()
