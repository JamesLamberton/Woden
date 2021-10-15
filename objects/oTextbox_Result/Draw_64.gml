draw_set_font(Norse_Font);

draw_set_halign(fa_left);
draw_text_ext_transformed(70,y+20,title,1,600,3,3,0);
draw_set_font(arial);
draw_text_ext_transformed(70,y+80,content,20,750,1,1,0);


draw_text(x,y+250,button);

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);

if point_in_rectangle(mousex,mousey,x,y+250,x+string_width(button),y+250+string_height(button)){
	draw_set_colour(c_orange);
	draw_text(x,y+250,button);
	if left_click{
		mouse_click = 1;
		oEncounter.eContinue = 1;
		instance_destroy();
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
Bonus_type = impacts[4];
if (Bonus_type != ""){
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_text(1000,y+100+30*space,"Gained "+string(Bonus_type));	
}

