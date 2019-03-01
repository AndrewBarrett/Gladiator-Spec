// scr_ability_recharge();

if (currentcharges < basecharges && recharging == false)
{
	recharging = true;
	cooldown = basecooldown;
}

if (recharging == true)
{
	cooldown -= 1;
	
	if (cooldown <= 0)
	{
		recharging = false;
		currentcharges +=1;
	}
}
