// Ability Script

obj_character.gcdactive = true;


// Damage Calculation

damagetotal = 15489 + ((obj_buff_scrash.damagecalc/100)*40);
obj_buff_scrash.damagecalc = 0;

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

scr_target_damage("execute", obj_damage_decapitate, damagetotal, false);

// Reset SCrash ability

obj_scrash_58.state = "none";