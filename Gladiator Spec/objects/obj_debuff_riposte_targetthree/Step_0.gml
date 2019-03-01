if (debuffactive == true)
{
	timer -=1;
	tickcounter -=1;
	
	if (timer == 0)
	{
		debuffactive = false;	
	}
	
	if (tickcounter = 0)
	{
		totaldamage = totaldamage - damagecalc;
		scr_warrior_riposte_damage(3, obj_damage_riposte,damagecalc);
		
		
		// If the debuff is still active reset the tick counter
		
		if (debuffactive == true)
		{
			tickcounter = tickduration;	
		}
	}
	
	
	
}