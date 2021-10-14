draw_set_font(Norse_Font);

draw_set_halign(fa_left);
draw_text_ext_transformed(70,y+20,title,1,600,3,3,0);
draw_set_font(arial);
draw_text_ext_transformed(70,y+80,content,20,750,1,1,0);



draw_text(850,y+100,option_a);
draw_text(850,y+150,option_b);
draw_text(850,y+200,option_c);

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);

if point_in_rectangle(mousex,mousey,850,y+100,850+string_width(option_a),y+100+string_height(option_a)){
	draw_set_colour(c_orange);
	draw_text(850,y+100,option_a);
	if left_click{
		mouse_click = 1;
		oHero.selected = option_a;
		oEncounter.eResult = 1;
	}
	
}
if point_in_rectangle(mousex,mousey,850,y+150,850+string_width(option_b),y+150+string_height(option_b)){
	draw_set_colour(c_orange);
	draw_text(850,y+150,option_b);
	if left_click{
		mouse_click = 1;
		oHero.selected = option_b;
		oEncounter.eResult = 1;
	}
	
}
if point_in_rectangle(mousex,mousey,850,y+200,850+string_width(option_c),y+200+string_height(option_c)){
	draw_set_colour(c_orange);
	draw_text(850,y+200,option_c);
	if left_click{
		mouse_click = 1;
		oHero.selected = option_c;
		oEncounter.eResult = 1;
		
	}
	
}