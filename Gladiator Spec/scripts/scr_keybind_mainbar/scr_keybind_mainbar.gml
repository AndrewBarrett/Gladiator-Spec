draw_self();

var modifier = argument0;
var keybind = argument1;

var xposbind = x + (sprite_width/2);
var yposbind = y + (sprite_height/2);

textColour = make_color_rgb(190, 191, 193);
draw_set_color(textColour);
draw_set_font(fontSkyrim);
draw_set_halign(fa_center);
draw_set_valign(fa_center)

if (modifier = "N")
{
	draw_text(xposbind,yposbind,keybind)
}

if (modifier = "S")
{
	draw_text(xposbind,yposbind,"S"+keybind)
}

if (modifier = "C")
{
	draw_text(xposbind,yposbind,"C"+keybind)
}

if (modifier = "A")
{
	draw_text(xposbind,yposbind,"A"+keybind)
}