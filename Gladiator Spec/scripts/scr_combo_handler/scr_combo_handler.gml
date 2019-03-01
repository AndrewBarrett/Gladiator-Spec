var ability = argument0;

if (obj_buff_scrash.buffactive == true)
{

	if(obj_combo_one.state == "none")
	{
		obj_combo_one.state = ability;	
	
	}else if(obj_combo_two.state == "none")
	{
		obj_combo_two.state = ability;
	
	}else if (obj_combo_three.state == "none")
	{
		obj_combo_three.state = ability;	
	}

}