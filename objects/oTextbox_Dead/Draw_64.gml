draw_set_font(Norse_Font);

draw_set_halign(fa_left);
draw_text_ext_transformed(70,y+20,title,1,600,3,3,0);
draw_set_font(feightBit);
draw_text_ext_transformed(70,y+80,content,20,750,0.9,0.9,0);

draw_set_halign(fa_center);
draw_text(x,y+250,"Try again next cycle");

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_release = mouse_check_button_released(mb_left);
var left_click = mouse_check_button_pressed(mb_left);

if point_in_rectangle(mousex,mousey,x,y+250,x+string_width("Try again next cycle"),y+250+string_height("Try again next cycle")){
	draw_set_colour(c_orange);
	draw_text(x,y+250,"Try again next cycle");
	if left_release{
		mouse_click = 0;
	}
	if left_click and !mouse_click{
		mouse_click = 1;
		game_restart();
	}
}

space = 0;
for (var i = 0; i < 4; i++){
	resource = impact_name[i];
	amount = impacts[i];
	
	if (amount != 0){
		
		draw_set_colour(c_white);
		draw_set_halign(fa_left);
		draw_text(1000,y+100+30*space,string(resource)+": "+string(amount));
		space += 1;
	}	
}
Bonus = impact_name[4];
Bonus_type = impacts[4];
if (Bonus_type != ""){
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_text(1000,y+100+30*space,string(Bonus)+": "+string(Bonus_type));	
}

