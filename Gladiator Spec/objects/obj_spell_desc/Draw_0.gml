if (display == true)
{
	draw_self();
	
	draw_set_font(fontSkyrim);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

textColour = make_color_rgb(190, 191, 193);
draw_set_color(textColour);

draw_text_ext(x+4, y+4, text, stringheight, 172);
}