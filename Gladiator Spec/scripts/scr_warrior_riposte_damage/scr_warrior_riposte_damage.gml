target = argument0;
object = argument1;
damage = argument2;

crit = scr_critchance(0);

if (crit == true){

	damage = damage * 2;
}


if (target == 1)
{
	target_one.curdamage = damage;
	//scr_warrior_glad_scrash_buff(damage);
	
	inst = instance_create_depth(target_one_health.x,target_one_health.y-(sprite_height*2)+target_one.damageheight,1,object)
	target_one.damageheight += target_one.basedamageheight;
	inst.localdamage = damage;	
}

if (target == 2)
{
	target_two.curdamage = damage;
	//scr_warrior_glad_scrash_buff(damage);
	
	inst = instance_create_depth(target_two_health.x,target_two_health.y-(sprite_height*2)+target_two.damageheight,1,object)
	target_two.damageheight += target_two.basedamageheight;

	inst.localdamage = damage;	
}

if (target == 3)
{
	target_three.curdamage = damage;
	//scr_warrior_glad_scrash_buff(damage);
	
	inst = instance_create_depth(target_three_health.x,target_three_health.y-(sprite_height*2)+target_three.damageheight,1,object)
	target_three.damageheight += target_three.basedamageheight;
	inst.localdamage = damage;
}