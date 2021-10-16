var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);



if titlescreen{
	draw_set_colour(c_white);
	draw_text(tx,ty,"Chapter 1");
	if point_in_rectangle(mousex,mousey,tx,ty,tx+string_width("Chapter 1"),ty+string_height("Chapter 1")){
	draw_set_colour(c_orange);
	draw_text(tx,ty,"Chapter 1");
	if left_click{
		titlescreen = 0;
		intro = 1;
		}
		
	}	
}