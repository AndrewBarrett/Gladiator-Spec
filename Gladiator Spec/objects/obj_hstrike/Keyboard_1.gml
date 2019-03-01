var modifier = bar2but1modifier;
var keybind = bar2but1keybind;
var abilitybind = "hstrike";

var targetcheck = false;
var targetcheck = scr_target_alive();

if (currentcharges > 0 && targetcheck == true && obj_character.rage >= (30-(obj_buff_devastate.currentcharges*5)))
{
	scr_ability_mapper(modifier, keybind, abilitybind);	
}