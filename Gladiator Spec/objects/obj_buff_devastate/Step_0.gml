if (buffactive == true)
{
	timer -=1;
	
	if (timer == 0)
	{
		buffactive = false;
		currentcharges = 0;
	
	
	}
}

if (buffactive == false)
{
	currentcharges = 0;	
}

if (currentcharges > maxcharges)
{
	currentcharges = maxcharges;
}