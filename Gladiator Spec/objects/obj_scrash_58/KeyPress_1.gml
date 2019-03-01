var modifier = bar1but4modifier;
var keybind = bar1but4keybind;
var abilitybind = state;

if (state == "none")
{
	abilitybind = "scrash";	
}

var targetcheck = false;
var targetcheck = scr_target_alive();


if (state == "none")
{
	if (currentcharges > 0 && targetcheck == true && obj_character.gcdactive == false && obj_character.rage >= 0)
	{
		scr_ability_mapper(modifier, keybind, abilitybind);	
	}
}

if (state != "none")
{
	if (impale_currentcharges > 0 && targetcheck == true && obj_character.gcdactive == false && obj_character.rage >= 0)
	{
		scr_ability_mapper(modifier, keybind, abilitybind);	
	}
}

