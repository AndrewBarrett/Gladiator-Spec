// Ability Script

if (obj_buff_scrash.buffactive == true)
{
	obj_character.rage -= 10;
	obj_character.gcdactive = true;
	obj_character.multitargets = 0;
} else
{
	obj_cleave.currentcharges -=1;
	obj_character.rage -= 20;
	obj_character.gcdactive = true;
	obj_character.multitargets = 0;
}

// Damage Calculation

damagetotal = 3489;

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

scr_target_damage("cleave", obj_damage_cleave, damagetotal, true);