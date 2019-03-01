draw_self()

var xpos = x + (sprite_width/2);
var ypos = y + (sprite_height/2);


textColour = make_color_rgb(190, 191, 193);
draw_set_color(textColour);
draw_set_font(fontSkyrim);

draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

if (modbind == "N")
{
	draw_text(xpos,ypos,"NONE")
}
if (modbind == "S")
{
	draw_text(xpos,ypos,"SHIFT")
}
if (modbind == "C")
{
	draw_text(xpos,ypos,"CTRL")
}
if (modbind == "A")
{
	draw_text(xpos,ypos,"ALT")
}