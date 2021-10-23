var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);




if titlescreen{
	draw_set_halign(fa_left);
	draw_set_font(feightBit);
	draw_set_colour(c_white);
	draw_text(tx+2,ty+2,"Chapter   1");
	draw_text(sx+2,sy+2,"Skip");
	draw_text(ex+2,ey+2,"Quit");
	draw_set_colour(c_teal);
	draw_text(tx,ty,"Chapter   1");
	draw_text(sx,sy,"Skip");
	draw_text(ex,ey,"Quit");
	
	if point_in_rectangle(mousex,mousey,tx,ty,tx+string_width("Chapter   1"),ty+string_height("Chapter   1")){
	draw_set_colour(c_teal);
	draw_text(tx+2,ty+2,"Chapter   1");
	draw_set_colour(c_white);
	draw_text(tx,ty,"Chapter   1");
	if left_click{
		instance_create_layer(1566,y,"Instances",oGuidance);
		titlescreen = 0;
		intro = 1;
		}
		
	}
	
	if point_in_rectangle(mousex,mousey,sx,sy,sx+string_width("Skip"),sy+string_height("Skip")){
	draw_set_colour(c_teal);
	draw_text(sx+2,sy+2,"Skip");
	draw_set_colour(c_white);
	draw_text(sx,sy,"Skip");
	if left_click{
		oWodenTitle.invisible = 1;
		oWodenTitleShadow.invisible = 1;
		titlescreen = 0;
		outro = 1;
		}
		
	}
	
	if point_in_rectangle(mousex,mousey,ex,ey,ex+string_width("Quit"),ey+string_height("Quit")){
	draw_set_colour(c_teal);
	draw_text(ex+2,ey+2,"Quit");
	draw_set_colour(c_white);
	draw_text(ex,ey,"Quit");
	if left_click{
		game_end();

		}
		
	}	
}
else{
	draw_set_halign(fa_left);
	draw_set_font(feightBit);
	draw_set_colour(c_white);
	draw_text_color(tx+2,ty+2,"Chapter   1",c_white,c_white,c_white,c_white,textAlpha);
	draw_text_color(sx+2,sy+2,"Skip",c_white,c_white,c_white,c_white,textAlpha);
	draw_text_color(ex+2,ey+2,"Quit",c_white,c_white,c_white,c_white,textAlpha);
	draw_set_colour(c_teal);
	draw_text_color(tx,ty,"Chapter   1",c_teal,c_teal,c_teal,c_teal,textAlpha);
	draw_text_color(sx,sy,"Skip",c_teal,c_teal,c_teal,c_teal,textAlpha);
	draw_text_color(ex,ey,"Quit",c_teal,c_teal,c_teal,c_teal,textAlpha);
	textAlpha -= 0.02;
	if !outro{
		tx -= 3;
		sx -= 3;
		ex -= 3;
	}
		
	
}