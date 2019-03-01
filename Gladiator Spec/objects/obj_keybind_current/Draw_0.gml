draw_self()

textColour = make_color_rgb(190, 191, 193);
draw_set_color(textColour);
draw_set_font(fontSkyrim);

draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

draw_text(x + (sprite_width/2),y + (sprite_height/2), keybind);