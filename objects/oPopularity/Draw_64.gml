draw_set_color(c_yellow);
draw_sprite(Popularity_Background,0,x,y);
start_angle = -90;
repeat pop_repeat{
		draw_sprite_ext(popularity_metre,0,x,y,2,2,-start_angle,c_yellow,1);
		start_angle += 5;
}
draw_sprite(Popularity_Foreground,0,x,y);

