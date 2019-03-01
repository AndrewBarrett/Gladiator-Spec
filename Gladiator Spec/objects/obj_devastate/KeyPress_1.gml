var modifier = bar2but2modifier;
var keybind = bar2but2keybind;
var abilitybind = "devastate";

var targetcheck = false;
var targetcheck = scr_target_alive();

if (currentcharges > 0 && targetcheck == true && obj_character.gcdactive == false)
{
	scr_ability_mapper(modifier, keybind, abilitybind);	
}