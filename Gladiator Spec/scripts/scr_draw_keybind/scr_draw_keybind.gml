var modifier = argument0;
var keybind = argument1;

var xposbind = x+sprite_width-3;
var yposbind = y+2;

textColour = make_color_rgb(190, 191, 193);
borderColour = make_color_rgb(0,0,0);
draw_set_color(textColour);
draw_set_font(fontSkyrim);
draw_set_halign(fa_right);
draw_set_valign(fa_top)

if (modifier = "N")
{
	keybind = keybind;
	//draw_text_transformed(xposbind,yposbind,keybind,1.2,1.2,0)
}

if (modifier = "S")
{
	keybind = "S"+keybind;
	//draw_text_transformed(xposbind,yposbind,"S"+keybind,1.2,1.2,0)
}

if (modifier = "C")
{
	keybind = "C"+keybind;
	//draw_text_transformed(xposbind,yposbind,"C"+keybind,1.2,1.2,0)
}

if (modifier = "A")
{
	keybind = "A"+keybind;
	//draw_text_transformed(xposbind,yposbind,"A"+keybind,1.2,1.2,0)
}

//draw_text_transformed(xposbind,yposbind,keybind,1.2,1.2,0)

draw_text_reddit(xposbind, yposbind, borderColour, textColour, keybind);