// Code for managing and resetting the GCD
// By default gcdactive is set to false
// When an ability is triggered it will set gcdactive to true

if (obj_character.gcdactive = true)
{
    // Increment and reset the GCD timer    
    obj_character.gcd -=1;

    if (obj_character.gcd == 0)
    {	
		obj_character.gcd = obj_character.basegcd;
		obj_character.gcdactive = false;
    }
}

if (autoattackactive = true)
{
	if autoattacktimer > 0
	{
		autoattacktimer -= 1;
	}
	
	if autoattacktimer <= 0
	{ 
		autoattacktimer = autoattackbase;
		scr_warrior_melee_damage(obj_character.curtarget, obj_damage_melee);
	}	
}

if(rage > maxrage)
{
	rage = maxrage;	
}
