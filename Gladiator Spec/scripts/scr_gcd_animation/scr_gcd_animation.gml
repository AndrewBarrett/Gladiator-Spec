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