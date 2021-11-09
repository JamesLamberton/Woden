var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);




if titlescreen{
	draw_set_halign(fa_left);
	draw_set_font(feightBit);
	draw_set_colour(c_white);
	draw_text(tx+2,ty+2,"Story Mode");
	draw_text(sx+2,sy+2,"Endless");
	draw_text(ex+2,ey+2,"Quit");
	draw_set_colour(c_teal);
	draw_text(tx,ty,"Story Mode");
	draw_text(sx,sy,"Endless");
	draw_text(ex,ey,"Quit");
	
	if point_in_rectangle(mousex,mousey,tx,ty,tx+string_width("Story Mode"),ty+string_height("Story Mode")){
	draw_set_colour(c_teal);
	draw_text(tx+2,ty+2,"Story Mode");
	draw_set_colour(c_white);
	draw_text(tx,ty,"Story Mode");
	if left_click{
		instance_create_layer(1566,y,"Instances",oGuidance);
		titlescreen = 0;
		intro = 1;
		}
		
	}
	
	if point_in_rectangle(mousex,mousey,sx,sy,sx+string_width("Endless"),sy+string_height("Endless")){
	draw_set_colour(c_teal);
	draw_text(sx+2,sy+2,"Endless");
	draw_set_colour(c_white);
	draw_text(sx,sy,"Endless");
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
	draw_text_color(tx+2,ty+2,"Story Mode",c_white,c_white,c_white,c_white,textAlpha);
	draw_text_color(sx+2,sy+2,"Endless",c_white,c_white,c_white,c_white,textAlpha);
	draw_text_color(ex+2,ey+2,"Quit",c_white,c_white,c_white,c_white,textAlpha);
	draw_set_colour(c_teal);
	draw_text_color(tx,ty,"Story Mode",c_teal,c_teal,c_teal,c_teal,textAlpha);
	draw_text_color(sx,sy,"Endless",c_teal,c_teal,c_teal,c_teal,textAlpha);
	draw_text_color(ex,ey,"Quit",c_teal,c_teal,c_teal,c_teal,textAlpha);
	textAlpha -= 0.02;
	if !outro{
		tx -= 3;
		sx -= 3;
		ex -= 3;
	}
		
	
}