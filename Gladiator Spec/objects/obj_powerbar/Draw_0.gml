draw_self();

if (obj_character.rage > 0)
{
draw_set_color(make_color_rgb(255,40,40))
draw_rectangle(x+2, y+2, x+ragebarx +1, y+27 +1, false);
}

textColour = make_color_rgb(190, 191, 193);
draw_set_color(textColour);
draw_set_font(fontSkyrim);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(x+(sprite_width/2),y+(sprite_height/2),obj_character.rage);



textColour = make_color_rgb(10, 10, 10);
draw_set_color(textColour);