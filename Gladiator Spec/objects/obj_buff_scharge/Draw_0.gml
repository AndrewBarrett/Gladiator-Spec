if (currentcharges > 0)
{
	draw_self();

	// CHARGES
	scr_draw_charges(currentcharges);
	
	// TIMER
	scr_draw_duration();
}