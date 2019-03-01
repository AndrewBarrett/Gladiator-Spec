// Ability Script

obj_scharge_58.currentcharges -=1;
obj_character.rage += 20;
obj_character.gcdactive = true;
obj_character.multitargets = 0;

// BUFF OBJECT

obj_buff_scharge.buffactive = true;
obj_buff_scharge.timer = obj_buff_scharge.duration;

if(obj_buff_scharge.currentcharges < obj_buff_scharge.maxcharges)
{
	obj_buff_scharge.currentcharges +=1;	
}

// Damage Calculation

damagetotal = 1442;

crit = scr_critchance(0);

if (crit == true){

	damagetotal = damagetotal * 2;
}

// Create Damage Instances

scr_target_damage("scharge", obj_damage_scharge, damagetotal, true);