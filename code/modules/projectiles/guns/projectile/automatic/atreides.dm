/obj/item/weapon/gun/projectile/automatic/atreides
	name = "FS SMG .45 \"Atreides\""
	desc = "The Atreides is a replica of an old and popular SMG. Uses .45 rounds."
	icon_state = "mac"
	item_state = "mac"
	w_class = ITEM_SIZE_NORMAL
	caliber = ".45"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = "/obj/item/ammo_casing/c45"
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/c45smg
	matter = list(MATERIAL_PLASTEEL = 16, MATERIAL_PLASTIC = 4)
	damage_multiplier = 0.65

	firemodes = list(
		FULL_AUTO_400,
		SEMI_AUTO_NODELAY,
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    dispersion=list(0.0, 0.6, 0.6), icon="burst"),
		)

/obj/item/weapon/gun/projectile/automatic/atreides/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "[initial(icon_state)]-full"
		item_state = "[initial(item_state)]-full"
	else
		icon_state = initial(icon_state)
		item_state = initial(item_state)
	return
