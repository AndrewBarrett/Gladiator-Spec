var modifier = bar1but2modifier;
var keybind = bar1but2keybind;
var abilitybind = "riposte";

var targetcheck = false;
var targetcheck = scr_target_alive();

var ragecheck = 0;

if(obj_buff_scrash.buffactive == true)
{
	ragecheck = 10;	
} else
{
	ragecheck = 5;	
}


if (currentcharges > 0 && targetcheck == true && obj_character.gcdactive == false && obj_character.rage >= ragecheck)
{
	scr_ability_mapper(modifier, keybind, abilitybind);	
}