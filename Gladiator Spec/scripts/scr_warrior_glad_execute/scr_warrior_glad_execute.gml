// Ability Script

if (obj_buff_scrash.buffactive == true)
{
	obj_character.rage -= 15;
	obj_character.gcdactive = true;
	obj_character.multitargets = 0;
} else
{
	obj_execute_58.currentcharges -=1;
	obj_character.rage -= 30;
	obj_character.gcdactive = true;
	obj_character.multitargets = 0;
}




// Damage Calculation

damagetotal = 7894;

// Shield Charge Buff

schargemultiplier = scr_warrior_glad_scharge_buff();

obj_buff_scharge.buffactive = false;
obj_buff_scharge.currentcharges = 0;

// Calculate Crit

var crit;

switch (schargemultiplier)
{
	case 1:
	crit = scr_critchance(0);
	break;

	case 20:
	crit = scr_critchance(20);
	damagetotal = damagetotal * 1.2;
	break;

	case 40:
	crit = scr_critchance(40);
	damagetotal = damagetotal * 1.4;
	break;
}

if (crit == true){

	damagetotal = damagetotal * 2;
}

// Create Damage Instances

scr_target_damage("execute", obj_damage_execute, damagetotal, false);