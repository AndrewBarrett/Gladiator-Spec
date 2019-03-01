ability = argument0;
object = argument1;
damage = argument2;
multitarget = argument3;


if (ability == "scharge")
{
	// TARGET ONE

	if (obj_character.curtarget == 1)
	{
		// Set the damage on the target
	
		target_one.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
		target_one.damageheight += target_one.basedamageheight;
		inst.localdamage = target_one.curdamage;
	
		// Make adjustments for a cleave ability
		
		obj_character.multitargets +=1;

		if(obj_character.multitargets >= 1)
		{
			damage = damage / 2;
		}
	
		// Hit any additional targets
	
		if (multitarget == true)
		{
			target_two.curdamage = damage;
			scr_warrior_glad_scrash_buff(damage);
			inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
			target_two.damageheight += target_two.basedamageheight;
			inst.localdamage = damage;
	
			target_three.curdamage = damage;
			scr_warrior_glad_scrash_buff(damage);
			inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
			target_three.damageheight += target_three.basedamageheight;
			inst.localdamage = damage;
		}
	}

	// TARGET TWO

	if (obj_character.curtarget == 2)
	{
		// Set the damage on the target
	
		target_two.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
		target_two.damageheight += target_two.basedamageheight;
		inst.localdamage = target_two.curdamage;
	
		// Make adjustments for a cleave ability
	
		obj_character.multitargets +=1;

		if(obj_character.multitargets >= 1)
		{
			damage = damage / 2;
		}
	
		// Hit any additional targets
	
		if (multitarget == true)
		{
			target_one.curdamage = damage;
			scr_warrior_glad_scrash_buff(damage);
			inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
			target_one.damageheight += target_one.basedamageheight;
			inst.localdamage = damage;
	
			target_three.curdamage = damage;
			scr_warrior_glad_scrash_buff(damage);
			inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
			target_three.damageheight += target_three.basedamageheight;
			inst.localdamage = damage;
		}
	}

	// TARGET THREE

	if (obj_character.curtarget == 3)
	{
		// Set the damage on the target
	
		target_three.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
		target_three.damageheight += target_three.basedamageheight;
		inst.localdamage = target_three.curdamage;
	
		// Make adjustments for a cleave ability
	
		obj_character.multitargets +=1;

		if(obj_character.multitargets >= 1)
		{
			damage = damage / 2;
		}
	
		// Hit any additional targets
	
		if (multitarget == true)
		{
			target_one.curdamage = damage;
			scr_warrior_glad_scrash_buff(damage);
			inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
			target_one.damageheight += target_one.basedamageheight;
			inst.localdamage = damage;
	
			target_two.curdamage = damage;
			scr_warrior_glad_scrash_buff(damage);
			inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
			target_two.damageheight += target_two.basedamageheight;
			inst.localdamage = damage;
		}
	}
}

if (ability == "riposte")
{
	// TARGET ONE

	if (target_one.curhealth > 0)
	{
		// Set the damage on the target
	
		target_one.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
		target_one.damageheight += target_one.basedamageheight;
		inst.localdamage = target_one.curdamage;
	}
	
	// TARGET TWO

	if (target_two.curhealth > 0)
	{
		// Set the damage on the target
	
		target_two.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
		target_two.damageheight += target_two.basedamageheight;
		inst.localdamage = target_two.curdamage;
	}
	
	// TARGET THREE

	if (target_three.curhealth > 0)
	{
		// Set the damage on the target
	
		target_three.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
		target_three.damageheight += target_three.basedamageheight;
		inst.localdamage = target_three.curdamage;
	}	
}

if (ability == "cleave")
{
	// TARGET ONE

	if (target_one.curhealth > 0)
	{
		// Set the damage on the target
	
		target_one.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
		target_one.damageheight += target_one.basedamageheight;
		inst.localdamage = target_one.curdamage;
		
		if (obj_debuff_riposte_targetone.debuffactive == true)
		{	
			inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,obj_damage_riposte);
			target_one.damageheight += target_one.basedamageheight;
			inst.localdamage = (obj_debuff_riposte_targetone.totaldamage/100)*40;
			scr_warrior_glad_scrash_buff((obj_debuff_riposte_targetone.totaldamage/100)*40);
		}	
	}
	
	// TARGET TWO

	if (target_two.curhealth > 0)
	{
		// Set the damage on the target
	
		target_two.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
		target_two.damageheight += target_two.basedamageheight;
		inst.localdamage = target_two.curdamage;
		
		if (obj_debuff_riposte_targettwo.debuffactive == true)
		{	
			inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,obj_damage_riposte);
			target_two.damageheight += target_two.basedamageheight;
			inst.localdamage = (obj_debuff_riposte_targettwo.totaldamage/100)*40;
			scr_warrior_glad_scrash_buff((obj_debuff_riposte_targettwo.totaldamage/100)*40);
		}
	}
	
	// TARGET THREE

	if (target_three.curhealth > 0)
	{
		// Set the damage on the target
	
		target_three.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
		target_three.damageheight += target_three.basedamageheight;

		inst.localdamage = target_three.curdamage;
		
		if (obj_debuff_riposte_targetthree.debuffactive == true)
		{	
			inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,obj_damage_riposte);
			target_three.damageheight += target_three.basedamageheight;
			inst.localdamage = (obj_debuff_riposte_targetthree.totaldamage/100)*40;
			scr_warrior_glad_scrash_buff((obj_debuff_riposte_targetthree.totaldamage/100)*40);
		}
	}	
}

if (ability == "execute")
{
	// TARGET ONE

	if (target_one.curhealth > 0 && obj_character.curtarget == 1)
	{
		// Set the damage on the target
	
		target_one.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
		target_one.damageheight += target_one.basedamageheight;
		inst.localdamage = target_one.curdamage;
		
		if (obj_debuff_riposte_targetone.debuffactive == true)
		{	
			inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,obj_damage_riposte);
			target_one.damageheight += target_one.basedamageheight;
			inst.localdamage = (obj_debuff_riposte_targetone.totaldamage/100)*40;
			scr_warrior_glad_scrash_buff((obj_debuff_riposte_targetone.totaldamage/100)*40);
		}	
	}
	
	// TARGET TWO

	if (target_two.curhealth > 0 && obj_character.curtarget == 2)
	{
		// Set the damage on the target
	
		target_two.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
		target_two.damageheight += target_two.basedamageheight;
		inst.localdamage = target_two.curdamage;
		
		if (obj_debuff_riposte_targettwo.debuffactive == true)
		{	
			inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,obj_damage_riposte);
			inst.localdamage = (obj_debuff_riposte_targettwo.totaldamage/100)*40;
			scr_warrior_glad_scrash_buff((obj_debuff_riposte_targettwo.totaldamage/100)*40);
		}
	}
	
	// TARGET THREE

	if (target_three.curhealth > 0 && obj_character.curtarget == 3)
	{
		// Set the damage on the target
	
		target_three.curdamage = damage;

		inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
		target_three.damageheight += target_three.basedamageheight;

		inst.localdamage = target_three.curdamage;
		
		if (obj_debuff_riposte_targetthree.debuffactive == true)
		{	
			inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,obj_damage_riposte);
			target_three.damageheight += target_three.basedamageheight;
			inst.localdamage = (obj_debuff_riposte_targetthree.totaldamage/100)*40;
			scr_warrior_glad_scrash_buff((obj_debuff_riposte_targetthree.totaldamage/100)*40);
		}
	}
}

if (ability == "hstrike" || ability = "devastate")
{
	// TARGET ONE

	if (target_one.curhealth > 0 && obj_character.curtarget == 1)
	{
		// Set the damage on the target
	
		target_one.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
		target_one.damageheight += target_one.basedamageheight;
		inst.localdamage = target_one.curdamage;
		

	}
	
	// TARGET TWO

	if (target_two.curhealth > 0 && obj_character.curtarget == 2)
	{
		// Set the damage on the target
	
		target_two.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
		target_two.damageheight += target_two.basedamageheight;
		inst.localdamage = target_two.curdamage;
		

	}
	
	// TARGET THREE

	if (target_three.curhealth > 0 && obj_character.curtarget == 3)
	{
		// Set the damage on the target
	
		target_three.curdamage = damage;

		inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
		target_three.damageheight += target_three.basedamageheight;

		inst.localdamage = target_three.curdamage;
		

	}
}

if (ability == "scrash")
{
	// TARGET ONE

	if (target_one.curhealth > 0)
	{
		// Set the damage on the target
	
		target_one.curdamage = damage;
		scr_warrior_glad_scrash_buff(damage);
	
		inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
		target_one.damageheight += target_one.basedamageheight;
		inst.localdamage = target_one.curdamage;
	}
	
	// TARGET TWO

	if (target_two.curhealth > 0)
	{
		// Set the damage on the target
	
		target_two.curdamage = damage;
	
		inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
		target_two.damageheight += target_two.basedamageheight;
		inst.localdamage = target_two.curdamage;
	}
	
	// TARGET THREE

	if (target_three.curhealth > 0)
	{
		// Set the damage on the target
	
		target_three.curdamage = damage;
	
		inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
		target_three.damageheight += target_three.basedamageheight;
		inst.localdamage = target_three.curdamage;
	}	
}

if (ability == "impale")
{
	// TARGET ONE

	if (target_one.curhealth > 0)
	{
		// Set the damage on the target
	
		target_one.curdamage = damage;
	
		inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
		target_one.damageheight += target_one.basedamageheight;
		inst.localdamage = target_one.curdamage;
	}
	
	// TARGET TWO

	if (target_two.curhealth > 0)
	{
		// Set the damage on the target
	
		target_two.curdamage = damage;
	
		inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
		target_two.damageheight += target_two.basedamageheight;
		inst.localdamage = target_two.curdamage;
	}
	
	// TARGET THREE

	if (target_three.curhealth > 0)
	{
		// Set the damage on the target
	
		target_three.curdamage = damage;
	
		inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
		target_three.damageheight += target_three.basedamageheight;
		inst.localdamage = target_three.curdamage;
	}	
}

if (ability == "decapitate")
{
	// TARGET ONE

	if (target_one.curhealth > 0 && obj_character.curtarget == 1)
	{
		// Set the damage on the target
	
		target_one.curdamage = damage;
	
		inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
		target_one.damageheight += target_one.basedamageheight;
		inst.localdamage = target_one.curdamage;
		
		if (obj_debuff_riposte_targetone.debuffactive == true)
		{	
			inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,obj_damage_riposte);
			target_one.damageheight += target_one.basedamageheight;
			inst.localdamage = ((obj_debuff_riposte_targetone.totaldamage/100) * 40);	
		}	
	}
	
	// TARGET TWO

	if (target_two.curhealth > 0 && obj_character.curtarget == 2)
	{
		// Set the damage on the target
	
		target_two.curdamage = damage;
	
		inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
		target_two.damageheight += target_two.basedamageheight;
		inst.localdamage = target_two.curdamage;
		
		if (obj_debuff_riposte_targettwo.debuffactive == true)
		{	
			inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,obj_damage_riposte);
			target_two.damageheight += target_two.basedamageheight;
			inst.localdamage = ((obj_debuff_riposte_targettwo.totaldamage/100) * 40);	
		}
	}
	
	// TARGET THREE

	if (target_three.curhealth > 0 && obj_character.curtarget == 3)
	{
		// Set the damage on the target
	
		target_three.curdamage = damage;
	
		inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
		target_three.damageheight += target_three.basedamageheight;
		inst.localdamage = target_three.curdamage;
		
		if (obj_debuff_riposte_targetthree.debuffactive == true)
		{	
			inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,obj_damage_riposte);
			target_three.damageheight += target_three.basedamageheight;
			inst.localdamage = ((obj_debuff_riposte_targetthree.totaldamage/100) * 40);	
		}
	}
}