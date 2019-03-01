var modifier = bar3but1modifier;
var keybind = bar3but1keybind;
var abilitybind = "charge";

var targetcheck = false;
var targetcheck = scr_target_alive();

if (targetcheck == true && obj_character.gcdactive == false)
{
	scr_ability_mapper(modifier, keybind, abilitybind);	
}