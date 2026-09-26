/datum/faction/contractor
	name = "Vanguard's Arrow International"
	faction_tag = FACTION_CONTRACTOR
	base_icon_file = 'icons/mob/hud/factions/vaipo.dmi'

/datum/faction/contractor/modify_hud_holder(image/holder, mob/living/carbon/human/human)
	var/icon/override_icon_file
	var/hud_icon_state
	var/_role = human.job
	if(!_role)
		var/obj/item/card/id/id_card = human.get_idcard()
		if(id_card)
			_role = id_card.rank
	switch(_role)
		if(JOB_CONTRACTOR_CMD)
			hud_icon_state = "po_cmd"
		if(JOB_CONTRACTOR_COVCMD)
			hud_icon_state = "rs_cmd"
		if(JOB_CONTRACTOR_GUARD)
			hud_icon_state = "ps_bodyguard"
		if(JOB_CONTRACTOR_SYN)
			hud_icon_state = "po_syn"
		if(JOB_CONTRACTOR_COVSYN)
			hud_icon_state = "rs_syn"
		if(JOB_CONTRACTOR_ST)
			hud_icon_state = "po_rfn"
		if(JOB_CONTRACTOR_COVST)
			hud_icon_state = "rs_rfn"
		if(JOB_CONTRACTOR_ENGI)
			hud_icon_state = "po_eng"
		if(JOB_CONTRACTOR_COVENG)
			hud_icon_state = "rs_eng"
		if(JOB_CONTRACTOR_MEDIC)
			hud_icon_state = "po_med"
		if(JOB_CONTRACTOR_COVMED)
			hud_icon_state = "rs_med"
		if(JOB_CONTRACTOR_MG)
			hud_icon_state = "po_mg"
		if(JOB_CONTRACTOR_COVMG)
			hud_icon_state = "rs_mg"
		if(JOB_CONTRACTOR_SECOND)
			hud_icon_state = "po_adj"
		if(JOB_CONTRACTOR_COVSECOND)
			hud_icon_state = "rs_adj"
		if(JOB_CONTRACTOR_TL)
			hud_icon_state = "po_lead"
		if(JOB_CONTRACTOR_COVTL)
			hud_icon_state = "rs_lead"
	if(hud_icon_state)
		holder.overlays += image(override_icon_file ? override_icon_file : base_icon_file, human, "vai_[hud_icon_state]")
