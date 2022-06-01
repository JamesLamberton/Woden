if !moveToggle{
	x += hsp;
	prologue = 1;
}
else{
	prologue = 0;
}
if death{
	show_debug_message("You died");	
	game_restart();
}

if keyboard_check_pressed(ord("R")){
	game_restart();	
	
}
window_set_fullscreen(true);
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
	sprite_index = sHero_Walk_Updated;
}
else if prologue{
	sprite_index = sHero_Walk_Updated;
	}
else {
	sprite_index = sHero_Walk_Updated;
}


// kill hero
if canDie and moving and ((popularity <= 0) or (old_age == 7) or (death and oEncounter.eContinue and oEncounter.collision) or (!followers and !food)){
	death = 0;
	if !son{
		//you lose
		moving = 0;
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
	death = 1;
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
	death = 1;
	followers = 0;
}
if food <= 0{
	foodlvl = 0;
}
else if food <= 20{
	foodlvl= 1;
}
else if food <= 40{
	foodlvl = 2;
}
else{
	foodlvl = 3;
}

if intelligence == 0{
	intelligencelvl= 0;
}
else if (intelligence > 0 and intelligence <= 10){
	intelligencelvl = 1;
}
else if (intelligence > 10 and intelligence <= 20){
	intelligencelvl = 2;
}
else{
	intelligencelvl = 3;
}
if popularity <= 0{
	moralelvl = 0;	
}
else if popularity <= 60{
	moralelvl= 1;
}
else if (popularity > 60 and popularity <= 120){
	moralelvl = 2;
}
else{
	moralelvl = 3;
}

if (current_followers > followers){
	inst = instance_find(oFollower, irandom(instance_number(oFollower) - 1));
	instance_destroy(inst);
	current_followers -= 1;
}
if (current_followers < followers and current_followers < followerlimit){
	follower = instance_create_layer(self.x - 60 - random_range(0,350) ,self.y,"Instances",oFollower);
	follower.image_index = random_range(1,10);
	current_followers += 1;
	
}




