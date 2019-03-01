draw_self();

if (state == "none")
{
	sprite_index = spr_scrash_58;
}

if (state == "impale")
{
	sprite_index = spr_impale_58;
}

if (state == "decapitate")
{
	sprite_index = spr_decapitate_58;
}


// KEYBIND
scr_draw_keybind(bar1but4modifier, bar1but4keybind);

// GCD & CD Animation
scr_gcd_animation_scrash();