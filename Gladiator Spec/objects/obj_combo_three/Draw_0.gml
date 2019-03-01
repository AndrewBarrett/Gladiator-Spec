draw_self();

if (state == "none")
{
	sprite_index = spr_combo_holder;
}

if (state == "riposte")
{
	sprite_index = spr_riposte;	
	
}

if (state == "cleave")
{
	sprite_index = spr_cleave;
}

if (state == "execute")
{
	sprite_index = spr_execute;
}