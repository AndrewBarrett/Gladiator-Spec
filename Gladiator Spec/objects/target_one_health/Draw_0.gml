draw_self()

if (target_one.curhealth > 0)
{
	draw_set_color(make_color_rgb(255,0,0));
	draw_rectangle(x+2, y+2, healthbarx +1, y+sprite_height-3 +1, false);	
}