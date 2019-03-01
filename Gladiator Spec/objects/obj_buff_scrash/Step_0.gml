if (buffactive == true)
{
	timer -=1;
	
	if (timer == 0)
	{
		buffactive = false;
		currentcharges = 0;
		
		// Determine if any combos have been achieved
		
		if (obj_combo_one.state = "riposte" && obj_combo_two.state = "riposte" && obj_combo_three.state = "cleave")
		{
			obj_scrash_58.state = "impale";
		}
		
		if (obj_combo_one.state = "riposte" && obj_combo_two.state = "riposte" && obj_combo_three.state = "execute")
		{
			obj_scrash_58.state = "decapitate";
		}
		
		// Reset the combo states
		
		obj_combo_one.state = "none";
		obj_combo_two.state = "none";
		obj_combo_three.state = "none";
		
		
	}
}

if (buffactive == false)
{
	currentcharges = 0;	
}

if (currentcharges > 2)
{
	currentcharges = 2;
}