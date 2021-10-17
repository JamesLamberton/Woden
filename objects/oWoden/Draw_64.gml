var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);



if titlescreen{
	draw_set_halign(fa_left);
	draw_set_font(feightBit);
	draw_set_colour(c_white);
	draw_text(tx,ty,"Chapter 1");
	draw_text(sx,sy,"Skip");
	
	if point_in_rectangle(mousex,mousey,tx,ty,tx+string_width("Chapter 1"),ty+string_height("Chapter 1")){
	draw_set_colour(c_orange);
	draw_text(tx,ty,"Chapter 1");
	if left_click{
		instance_create_layer(1366,y,"Instances",oGuidance);
		titlescreen = 0;
		intro = 1;
		}
		
	}
	
	if point_in_rectangle(mousex,mousey,sx,sy,sx+string_width("Skip"),sy+string_height("Skip")){
	draw_set_colour(c_orange);
	draw_text(sx,sy,"Skip");
	if left_click{
		oWodenTitle.invisible = 1;
		titlescreen = 0;
		outro = 1;
		}
		
	}	
}