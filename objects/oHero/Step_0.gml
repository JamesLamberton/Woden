if !moveToggle{
	x += hsp;
	prologue = 1;
}
else{
	prologue = 0;
}

if keyboard_check_pressed(ord("R")){
	game_restart();	
	
}
window_set_fullscreen(false);
if keyboard_check_pressed(ord("Q")){
	game_end();	
	
}
if keyboard_check_pressed(ord("Z")){
	wife = 1;
}
if keyboard_check_pressed(ord("X")){
	son = 1;
}
if keyboard_check_pressed(ord("C")){
	death = 1;
}

	
if moving{
	sprite_index = sHero_Walk;
}
else if prologue{
	sprite_index = sHero_Walk;
	}
else {
	sprite_index = sHero_Idle;
}


// kill hero
if canDie and moving and ((popularity <= 0) or (old_age == 7) or (death and oEncounter.eContinue and oEncounter.collision) or (!followers and !food)){
	death = 0;
	if !son{
		//you lose
		moving = 0;
		instance_create_layer(1366/2,y-220,"Text",oTextbox_Dead);
	}
	else{
	order += 1;
	name = name_list[order];
	title = title_list[order];
	if (order < 3){
	son_name = name_list[order+1];
	}
	else{
		order = 0;
	}
	son = 0;
	wife = 0;
	age -= 20;
	intelligence = 20;
	popularity = 100;
	food = 10;
		
	}
	
	
}
if popularity < 0{
	popularity = 0;	
}
else if popularity > 180{
	popularity = 180;	
}
if food < 0{
	food = 0;
}
if intelligence < 0{
	intelligence = 0;
}
if followers < 0{
	followers = 0;
}


if (current_followers > followers){
	inst = instance_find(oFollower, irandom(instance_number(oFollower) - 1));
	instance_destroy(inst);
	current_followers -= 1;
}
if (current_followers < followers and current_followers < followerlimit){
	follower = instance_create_layer(self.x - 60 - random_range(0,350) ,self.y,"Instances",oFollower);
	follower.image_index = random_range(1,7);
	current_followers += 1;
	
}




