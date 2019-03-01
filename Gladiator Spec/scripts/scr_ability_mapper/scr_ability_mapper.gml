var modifier = argument0;
var keybind = argument1;
var abilitybind = argument2;

if (modifier == "N")
{
	if keyboard_check_pressed(ord(keybind))
	{		
		scr_ability_selector(abilitybind)	
	}
}

if (modifier == "S")
{
	if keyboard_check_pressed(ord(keybind)) && keyboard_check_direct(vk_lshift)
	{
		scr_ability_selector(abilitybind)		
	}
}

if (modifier == "C")
{
	if keyboard_check_pressed(ord(keybind)) && keyboard_check_direct(vk_lcontrol)
	{
		scr_ability_selector(abilitybind)
	}
}

if (modifier == "A")
{
	if keyboard_check_pressed(ord(keybind)) && keyboard_check_direct(vk_lalt)
	{
		scr_ability_selector(abilitybind)
	}
}