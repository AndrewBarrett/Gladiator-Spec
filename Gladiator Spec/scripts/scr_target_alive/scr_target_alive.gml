if (obj_character.curtarget == 0)
{
	return false;
}

if (obj_character.curtarget == 1 && target_one.curhealth > 0)
{
	return true;
}

if (obj_character.curtarget == 2 && target_two.curhealth > 0)
{
	return true;
}

if (obj_character.curtarget == 3 && target_three.curhealth > 0)
{
	return true;
}