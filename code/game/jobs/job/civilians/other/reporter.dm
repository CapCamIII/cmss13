/datum/job/civilian/reporter
	title = JOB_COMBAT_REPORTER
	total_positions = 1
	spawn_positions = 1
	selection_class = "job_ot"
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT
	supervisors = "the acting commanding officer"
	gear_preset = /datum/equipment_preset/uscm/reporter
	entry_message_body = "Your job is document the goings-on of the operation and help the overall morale by portraying the Corps heroicly, you have been equipped with an improved camera and a tape recorder to further this goal. While your main job is not to throw yourself into harms way, if you are needed; every marine's a rifleman. Ensure you do not accidentally leak classified information."

/obj/effect/landmark/start/reporter
	name = JOB_COMBAT_REPORTER
	job = /datum/job/civilian/reporter
