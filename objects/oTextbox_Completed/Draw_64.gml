draw_set_font(Norse_Font);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_text_ext_transformed(70,y+20,title,1,600,3,3,0);
draw_set_font(feightBit);
draw_text_ext_transformed(70,y+80,content,20,1250,0.9,0.9,0);

draw_set_halign(fa_center);
draw_text(xt,yt,button);

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);

if point_in_rectangle(mousex,mousey,xt,yt,xt+string_width(button),yt+string_height(button)){
	draw_set_colour(c_orange);
	draw_set_halign(fa_center);
	draw_text(xt,yt,button);
	if left_click{
		mouse_click = 1;
		oGuidance.page += 1;
		oGuidance.eContinue = 1;

		instance_destroy();
	}
}

