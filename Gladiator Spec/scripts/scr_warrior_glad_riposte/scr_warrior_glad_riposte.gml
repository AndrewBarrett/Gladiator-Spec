// Ability Script

if (obj_buff_scrash.buffactive == true)
{
	obj_character.rage -= 5;
	obj_character.gcdactive = true;
	obj_character.multitargets = 0;
} else
{
	obj_riposte_58.currentcharges -=1;
	obj_character.rage -= 20;
	obj_character.gcdactive = true;
	obj_character.multitargets = 0;
}


// Damage Calculation

damagetotal = 1442;

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

scr_target_damage("riposte", obj_damage_riposte, damagetotal, true);


// APPLY DEBUFF - TARGET ONE

if (obj_debuff_riposte_targetone.debuffactive == false)
{
	obj_debuff_riposte_targetone.debuffactive = true;
	obj_debuff_riposte_targetone.timer = obj_debuff_riposte_targetone.duration;
	obj_debuff_riposte_targetone.tickcounter = obj_debuff_riposte_targetone.tickduration;
	
	obj_debuff_riposte_targetone.totalticks = 5;
	obj_debuff_riposte_targetone.totaldamage = obj_debuff_riposte_targetone.basedamage;
	obj_debuff_riposte_targetone.damagecalc = obj_debuff_riposte_targetone.totaldamage / obj_debuff_riposte_targetone.totalticks;
		
} else if (obj_debuff_riposte_targetone.debuffactive == true)
{
	obj_debuff_riposte_targetone.timer = obj_debuff_riposte_targetone.duration + obj_debuff_riposte_targetone.tickcounter;
	
	obj_debuff_riposte_targetone.totalticks = 6;
	obj_debuff_riposte_targetone.totaldamage += obj_debuff_riposte_targetone.basedamage;
	obj_debuff_riposte_targetone.damagecalc = obj_debuff_riposte_targetone.totaldamage / obj_debuff_riposte_targetone.totalticks;
	
}



// APPLY DEBUFF - TARGET TWO

if (obj_debuff_riposte_targettwo.debuffactive == false)
{
	obj_debuff_riposte_targettwo.debuffactive = true;
	obj_debuff_riposte_targettwo.timer = obj_debuff_riposte_targettwo.duration;
	obj_debuff_riposte_targettwo.tickcounter = obj_debuff_riposte_targettwo.tickduration;
	
	obj_debuff_riposte_targettwo.totalticks = 5;
	obj_debuff_riposte_targettwo.totaldamage = obj_debuff_riposte_targettwo.basedamage;
	obj_debuff_riposte_targettwo.damagecalc = obj_debuff_riposte_targettwo.totaldamage / obj_debuff_riposte_targettwo.totalticks;
} else if (obj_debuff_riposte_targettwo.debuffactive == true)
{
	obj_debuff_riposte_targettwo.timer = obj_debuff_riposte_targettwo.duration + obj_debuff_riposte_targettwo.tickcounter;	
	
	obj_debuff_riposte_targettwo.totalticks = 6;
	obj_debuff_riposte_targettwo.totaldamage += obj_debuff_riposte_targettwo.basedamage;
	obj_debuff_riposte_targettwo.damagecalc = obj_debuff_riposte_targettwo.totaldamage / obj_debuff_riposte_targettwo.totalticks;
}



// APPLY DEBUFF - TARGET THREE

if (obj_debuff_riposte_targetthree.debuffactive == false)
{
	obj_debuff_riposte_targetthree.debuffactive = true;
	obj_debuff_riposte_targetthree.timer = obj_debuff_riposte_targetthree.duration;
	obj_debuff_riposte_targetthree.tickcounter = obj_debuff_riposte_targetthree.tickduration;
	
	obj_debuff_riposte_targetthree.totalticks = 5;
	obj_debuff_riposte_targetthree.totaldamage = obj_debuff_riposte_targetthree.basedamage;
	obj_debuff_riposte_targetthree.damagecalc = obj_debuff_riposte_targetthree.totaldamage / obj_debuff_riposte_targetthree.totalticks;
} else if (obj_debuff_riposte_targetthree.debuffactive == true)
{
	obj_debuff_riposte_targetthree.timer = obj_debuff_riposte_targetthree.duration + obj_debuff_riposte_targetthree.tickcounter;
	
	obj_debuff_riposte_targetthree.totalticks = 6;
	obj_debuff_riposte_targetthree.totaldamage += obj_debuff_riposte_targetthree.basedamage;
	obj_debuff_riposte_targetthree.damagecalc = obj_debuff_riposte_targetthree.totaldamage / obj_debuff_riposte_targetthree.totalticks;
}


