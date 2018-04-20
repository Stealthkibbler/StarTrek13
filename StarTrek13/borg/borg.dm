/datum/borg_hivemind
	var/name = "Borg hivemind controller"
	var/mob/living/carbon/human/borgs = list()

/datum/borg_hivemind/New()
//	SSticker.mode.hivemind = src
	SSfaction.borg_hivemind = src
	START_PROCESSING(SSobj, src)
	message_admins("Borg hivemind datum created")

/datum/borg_hivemind/proc/message_collective(var/message)
	var/ping = "<font color='green' size='2'><B><i>Borg Collective</i>[message]</B></font></span>"
	for(var/mob/living/carbon/human/H in borgs)
		to_chat(H, ping)
	for(var/mob/M in GLOB.dead_mob_list)
		to_chat(M, ping)

//datum/borg_hivemind/process()


/datum/faction/borg
	name = "the borg"
	description = "We are the borg. Your biological and technological distinctiveness will be added to our own. You will be adapted to service us."
	flavourtext = "We are the borg. Your biological and technological distinctiveness will be added to our own. You will be adapted to service us. Assimilate them all."
	pref_colour = "green"


/datum/faction/borg/onAddMember(mob/living/D)
	D.mind.make_Borg()