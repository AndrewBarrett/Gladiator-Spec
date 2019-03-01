var modifier = bar1but1modifier;
var keybind = bar1but1keybind;
var abilitybind = "scharge";

var targetcheck = false;
var targetcheck = scr_target_alive();

if (currentcharges > 0 && targetcheck == true && obj_character.gcdactive == false)
{
	scr_ability_mapper(modifier, keybind, abilitybind);	
}