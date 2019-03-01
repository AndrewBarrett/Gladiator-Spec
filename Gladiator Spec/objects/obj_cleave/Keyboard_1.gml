var modifier = bar2but3modifier;
var keybind = bar2but3keybind;
var abilitybind = "cleave";

var targetcheck = false;
var targetcheck = scr_target_alive();

if (currentcharges > 0 && targetcheck == true && obj_character.gcdactive == false && obj_character.rage >= 20)
{
	scr_ability_mapper(modifier, keybind, abilitybind);	
}