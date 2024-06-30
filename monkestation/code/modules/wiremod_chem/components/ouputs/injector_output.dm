/obj/structure/chemical_tank/injector
	name = "remote injector"
	desc = "While anchored, injects anyone who walks over it with some stored chemicals."
	icon_state = "sprayer"
	component_name = "Injector Output"
	density = FALSE
	reagent_flags =  TRANSPARENT

	var/max_inject = 20
	var/inject_amount = 0
	var/creator_ckey = ""

/obj/structure/chemical_tank/injector/Initialize(mapload)
	. = ..()
	var/static/list/loc_connections = list(
		COMSIG_ATOM_ENTERED = PROC_REF(on_entered),
	)
	AddElement(/datum/element/connect_loc, loc_connections)


/obj/structure/chemical_tank/injector/proc/on_entered(datum/source, atom/movable/AM)
	SIGNAL_HANDLER
	if(!anchored)
		return
	if(!iscarbon(AM))
		return
	if(!inject_amount)
		return

	visible_message("[name] pricks [AM] with a needle injecting [inject_amount] units into them.")
	reagents.trans_to(AM, inject_amount, methods = INJECT)
	if(creator_ckey)
		logger.Log(LOG_CATEGORY_ATTACK, "[creator_ckey] injected [AM] with [inject_amount] units using a remote injector.")

/obj/structure/chemical_tank/injector/AltClick(mob/user)
	. = ..()
	var/inject_choice = tgui_input_number(user, "How much to inject someone with?", "[name]", inject_amount, max_inject, 1)
	if(inject_choice)
		inject_amount = inject_choice
	creator_ckey = user.client?.ckey
