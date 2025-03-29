
//Hat Station 13

/obj/item/clothing/head/collectable
	name = "collectable hat"
	desc = "A rare collectable hat."
	price_tag = 1000
	bad_type = /obj/item/clothing/head/collectable
	spawn_blacklisted = TRUE

/obj/item/clothing/head/collectable/petehat
	name = "ultra rare hat"
	desc = "an ultra rare hat. It commands a certain respect."
	icon_state = "petehat"

/obj/item/clothing/head/collectable/slime
	name = "collectable slime cap!"
	desc = "It just latches right in place!"
	icon_state = "slime"
	body_parts_covered = 0

/obj/item/clothing/head/collectable/xenom
	name = "collectable xenomorph helmet!"
	desc = "Hiss hiss hiss!"
	icon_state = "xenom"
	item_state_slots = list(
		slot_l_hand_str = "xenos_helm",
		slot_r_hand_str = "xenos_helm",
		)
	body_parts_covered = HEAD|FACE|EYES
	style_coverage = COVERS_WHOLE_HEAD

/obj/item/clothing/head/collectable/chef
	name = "collectable chef's hat"
	desc = "A rare Chef's Hat meant for hat collectors!"
	icon_state = "chefhat"
	item_state = "chefhat"

/obj/item/clothing/head/collectable/paper
	name = "collectable paper hat"
	desc = "What looks like an ordinary paper hat, is actually a rare and valuable collector's edition paper hat. Keep away from water, fire and Librarians."
	icon_state = "paper"
	item_state = "paper"
	body_parts_covered = 0

/obj/item/clothing/head/collectable/tophat
	name = "collectable top hat"
	desc = "A top hat worn by only the most prestigious hat collectors."
	icon_state = "tophat"
	item_state = "tophat"
	body_parts_covered = 0

/obj/item/clothing/head/collectable/captain
	name = "collectable captain's hat"
	desc = "A Collectable Hat that'll make you look just like a real comdom!"
	icon_state = "captain"
	item_state_slots = list(
		slot_l_hand_str = "caphat",
		slot_r_hand_str = "caphat",
		)
	body_parts_covered = 0

/obj/item/clothing/head/collectable/police
	name = "collectable police officer's hat"
	desc = "A Collectable Police Officer's Hat. This hat emphasizes that you are THE LAW."
	icon_state = "policehelm"
	body_parts_covered = 0

/obj/item/clothing/head/collectable/beret
	name = "collectable beret"
	desc = "A Collectable red Beret. It smells faintly of Garlic."
	icon_state = "beret"
	body_parts_covered = 0

/obj/item/clothing/head/collectable/welding
	name = "collectable welding helmet"
	desc = "A Collectable Welding Helmet. Now with 80% less lead! Not for actual welding. Any welding done while wearing this Helmet is done so at the owner's own risk!"
	icon_state = "welding"
	item_state = "welding"
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/head/collectable/slime
	name = "collectable slime hat"
	desc = "Just like a real Brain Slug!"
	icon_state = "headslime"

/obj/item/clothing/head/collectable/flatcap
	name = "collectable flat cap"
	desc = "A Collectible farmer's Flat Cap!"
	icon_state = "flat_cap"
	item_state_slots = list(
		slot_l_hand_str = "detective",
		slot_r_hand_str = "detective",
		)

/obj/item/clothing/head/collectable/pirate
	name = "collectable pirate hat"
	desc = "You'd make a great Dread Syndie Roberts!"
	icon_state = "pirate"
	body_parts_covered = 0

/obj/item/clothing/head/collectable/kitty
	name = "collectable kitty ears"
	desc = "The fur feels... a bit too realistic."
	icon_state = "kitty"
	body_parts_covered = 0

/obj/item/clothing/head/collectable/kitty/equipped(mob/user, slot)
	. = ..()

	if(slot != slot_head)
		return

	var/mob/living/carbon/human/user_human = user
	if(!user && !user.mind) //let's not send nt on a crusade against mindless bodies
		. = ..()

	//a foul heretic! gib them if they're cruciformed, otherwise announce them for all to hunt
	if(user_human in disciples)
		user_human.SetStunned(100)
		user_human.shake_animation(20)
		user_human.emote("scream")
		user_human.take_overall_damage(75)
		to_chat(user_human, SPAN_DANGER("You feel your body falter, your mind begin to tear. You have made a terrible mistake."))
		spawn(5 SECONDS)
			user_human.gib()

	else
		for(var/mob/living/carbon/human/H in disciples)
			to_chat(H, SPAN_DANGER("You feel a flood of rage course through your cruciform... [user_human] has embraced heresy at [get_area(user_human)], the angels call for their death!"))
			to_chat(H, SPAN_NOTICE("The eye of the protector has blessed you with strength, tenacity and dexterity to aid you in your crusade... but you can feel these blessings already begin to fade away..."))

			var/datum/individual_objective/kitty/kittyobjective = new /datum/individual_objective/kitty
			kittyobjective.assign(H.mind)
			kittyobjective.set_target(user_human)

			H.stats.addTempStat(STAT_ROB, STAT_LEVEL_PROF, 10 MINUTES)
			H.stats.addTempStat(STAT_VIG, STAT_LEVEL_PROF, 10 MINUTES)
			H.stats.addTempStat(STAT_TGH, STAT_LEVEL_PROF, 10 MINUTES)


/obj/item/clothing/head/collectable/kitty/mob_can_unequip(mob/M, slot, disable_warning)
	if(slot == slot_head)
		return FALSE
	else
		. = ..()

/obj/item/clothing/head/collectable/rabbitears
	name = "collectable rabbit ears"
	desc = "Not as lucky as the feet!"
	icon_state = "bunny"
	body_parts_covered = 0

/obj/item/clothing/head/collectable/wizard
	name = "collectable wizard's hat"
	desc = "NOTE:Any magical powers gained from wearing this hat are purely coincidental."
	icon_state = "wizard"

/obj/item/clothing/head/collectable/hardhat
	name = "collectable hard hat"
	desc = "WARNING! Offers no real protection, or luminosity, but it is damn fancy!"
	icon_state = "hardhat0_yellow"
	body_parts_covered = 0

/obj/item/clothing/head/collectable/thunderdome
	name = "collectable Thunderdome helmet"
	desc = "Go Red! I mean Green! I mean Red! No Green!"
	icon_state = "thunderdome"

/obj/item/clothing/head/collectable/swat
	name = "collectable SWAT helmet"
	desc = "Now you can be in the Deathsquad too!"
	icon_state = "swat"

/obj/item/clothing/head/collectable/gnome
	name = "gnome hat"
	desc = "Why do gnomes come out of our toilet? Maybe they're searching for money?"
	icon_state = "gnome_hat"
	spawn_blacklisted = FALSE
	body_parts_covered = 0

/obj/item/clothing/head/collectable/festive
	name = "collectable festive paper hat"
	icon_state = "xmashat"
	desc = "A crappy paper hat that you are REQUIRED to wear."
	flags_inv = 0
	body_parts_covered = 0
