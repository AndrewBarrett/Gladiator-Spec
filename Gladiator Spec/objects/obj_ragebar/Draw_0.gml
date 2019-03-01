if (obj_character.rage > 0)
{
draw_set_color(make_color_rgb(255,40,40))
draw_rectangle(437, 524, ragebarx, 549, false);
}

textColour = make_color_rgb(10, 10, 10);
draw_set_color(textColour);
draw_set_font(fontSkyrim);
draw_set_halign(fa_center);
draw_set_valign(fa_center);