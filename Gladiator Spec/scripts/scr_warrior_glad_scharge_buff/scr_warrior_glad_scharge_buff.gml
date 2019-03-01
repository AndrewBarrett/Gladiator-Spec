if (obj_buff_scharge.buffactive == false)
{
	return 1;	
}

if (obj_buff_scharge.buffactive == true && obj_buff_scharge.currentcharges == 1)
{
	return 20;	
}

if (obj_buff_scharge.buffactive == true && obj_buff_scharge.currentcharges == 2)
{
	return 40;	
}

