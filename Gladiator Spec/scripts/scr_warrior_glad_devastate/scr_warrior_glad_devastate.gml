// Ability Script

obj_devastate.currentcharges -=1;
obj_character.gcdactive = true;
obj_character.multitargets = 0;

// Devastate Buff

if(obj_buff_devastate.buffactive == false)
{
	obj_buff_devastate.buffactive = true;
	obj_buff_devastate.timer = obj_buff_devastate.duration;
	obj_buff_devastate.currentcharges +=1;
}

if(obj_buff_devastate.buffactive == true)
{
	obj_buff_devastate.currentcharges +=1;
}







// Damage Calculation

damagetotal = 1328;

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

scr_target_damage("devastate", obj_damage_devastate, damagetotal, false);