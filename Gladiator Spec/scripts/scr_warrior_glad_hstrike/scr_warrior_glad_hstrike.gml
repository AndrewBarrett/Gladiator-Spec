// Ability Script

obj_hstrike.currentcharges -=1;
obj_character.rage -= (30-(obj_buff_devastate.currentcharges*5));
obj_character.multitargets = 0;

// Damage Calculation

damagetotal = 2345;

// Calculate Crit

schargemultiplier = 0;

crit = false;

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

scr_target_damage("hstrike", obj_damage_hstrike, damagetotal, false);