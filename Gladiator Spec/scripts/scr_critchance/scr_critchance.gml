additionalcrit = argument0;

additionalcrit = additionalcrit * 100;

critchance = random_range(1,10000);

if (critchance <= obj_character.critper + additionalcrit)
{
	return true;
}
else
{
	return false;
}