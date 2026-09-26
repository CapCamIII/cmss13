/datum/faction/contractor
	name = "Vanguard's Arrow International"
	faction_tag = FACTION_CONTRACTOR
	base_icon_file = 'icons/mob/hud/factions/vaipo.dmi'

/datum/faction/contractor/modify_hud_holder_from_data(image/holder, location, job_rank, paygrade, assignment, rank_fallback, rank_override, datum/squad/squad)
	var/hud_icon_state = null
	switch(job_rank)
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
		holder.overlays += image(base_icon_file, location, "vai_[hud_icon_state]")
