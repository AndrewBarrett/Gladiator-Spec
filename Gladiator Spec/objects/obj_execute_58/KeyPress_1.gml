var modifier = bar1but3modifier;
var keybind = bar1but3keybind;
var abilitybind = "execute";

var targetcheck = false;
var targetcheck = scr_target_alive();

if (currentcharges > 0 && targetcheck == true && obj_character.gcdactive == false && obj_character.rage >= 30)
{
	scr_ability_mapper(modifier, keybind, abilitybind);	
}