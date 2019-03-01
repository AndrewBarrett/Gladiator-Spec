var v;
v = obj_character.gcd / obj_character.basegcd
if (v < 0) v += 1
draw_set_alpha(0.5)
draw_set_color(c_black)
draw_rectangle_cd(x + (sprite_width/2), y - (sprite_height/2), x - (sprite_width/2), y + (sprite_height/2), v)
draw_set_alpha(1)