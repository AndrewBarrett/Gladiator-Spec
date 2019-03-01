draw_self()

textColour = make_color_rgb(190, 190, 190);
draw_set_color(textColour);

draw_set_font(fontSkyrim);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x+36,y+15, localdamage)