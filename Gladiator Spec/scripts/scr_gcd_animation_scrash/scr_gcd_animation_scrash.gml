if (state == "none")
{

	if (obj_character.gcdactive == true && currentcharges > 0)
	{
		scr_draw_gcd();
	}

	if (obj_character.gcdactive == true && currentcharges == 0)
	{
			if (cooldown >= obj_character.gcd)
			{
				scr_draw_cooldown();
			}
			else
			{
				scr_draw_gcd();
			}
	}

	if (obj_character.gcdactive == false && currentcharges == 0)
	{
		scr_draw_cooldown();
	}

}

if (state == "impale" || state == "decapitate")
{

	if (obj_character.gcdactive == true && impale_currentcharges > 0)
	{
		scr_draw_gcd();
	}

	if (obj_character.gcdactive == true && impale_currentcharges == 0)
	{
			if (impale_cooldown >= obj_character.gcd)
			{
				scr_draw_cooldown();
			}
			else
			{
				scr_draw_gcd();
			}
	}

	if (obj_character.gcdactive == false && impale_currentcharges == 0)
	{
		scr_draw_cooldown();
	}

}