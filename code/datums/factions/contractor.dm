/datum/faction/contractor
	name = "Vanguard's Arrow Incorporated"
	faction_tag = FACTION_CONTRACTOR

/datum/faction/contractor/modify_hud_holder(image/holder, mob/living/carbon/human/H)
	var/hud_icon_state
	var/obj/item/card/id/ID = H.get_idcard()
	var/_role
	if(H.mind)
		_role = H.job
	else if(ID)
		_role = ID.rank
	switch(_role)
		if(JOB_CONTRACTOR_TL)
			hud_icon_state = "tml"
		if(JOB_CONTRACTOR_MG)
			hud_icon_state = "mg"
		if(JOB_CONTRACTOR_MEDIC)
			hud_icon_state = "med"
		if(JOB_CONTRACTOR_ENGI)
			hud_icon_state = "eng"
		if(JOB_CONTRACTOR_ST)
			hud_icon_state = "standard"
		if(JOB_CONTRACTOR_SYN)
			hud_icon_state = "syn"
		if(JOB_CONTRACTOR_COVTL)
			hud_icon_state = "covtml"
		if(JOB_CONTRACTOR_COVMG)
			hud_icon_state = "covmg"
		if(JOB_CONTRACTOR_COVMED)
			hud_icon_state = "covmed"
		if(JOB_CONTRACTOR_COVENG)
			hud_icon_state = "coveng"
		if(JOB_CONTRACTOR_COVST)
			hud_icon_state = "covstandard"
		if(JOB_CONTRACTOR_COVSYN)
			hud_icon_state = "covsyn"
	if(hud_icon_state)
		holder.overlays += image('icons/mob/hud/marine_hud.dmi', H, "vai_[hud_icon_state]")
