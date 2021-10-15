/// @description Insert description here
// You can write your code in this editor

	
if moving{
	sprite_index = sHero_Walk;
}
else if prologue{
	sprite_index = sHero_Walk;
	x += hsp;
	}
else {
	sprite_index = sHero_Idle;
}


//else{
//	sprite_index = sHero_Idle;
//}

for (var i = 0; i < follower_iterate; i += 1){
	follower_iterate -= 1;
	follower = instance_create_layer(self.x - 30 - random_range(0,480) ,self.y,"Instances",oFollower);
	follower.image_index = random_range(1,7);
	current_followers += 1
}

if keyboard_check_pressed(vk_space){
	if moving{
		moving = 0;
	}
	else{
		moving = 1;
	}
}
if keyboard_check_pressed(vk_enter){
	//kill hero
	if (lineage < 2){
		//you lose
		moving = 0;
		instance_create_layer(1366/2,480,"Text",oTextbox_Dead);
		
	}
	else{
	order += 1;
	lineage -= 1;
	name = name_list[order];
	title = title_list[order];
	if (order > 3){
	son_name = name_list[order+1];
	}
	else{
		order = 0;
	}
		son = 0;
	}
}

// kill hero
if !prologue and prologue_end and ((intelligence <= 0) or (popularity <= 0) or (old_age == 7) or (death and oEncounter.eContinue and oEncounter.collision)){
	death = 0;
	if (lineage < 2){
		//you lose
		moving = 0;
		instance_create_layer(1366/2,480,"Text",oTextbox_Dead);
	}
	else{
	order += 1;
	lineage -= 1;
	name = name_list[order];
	title = title_list[order];
	if (order > 3){
	son_name = name_list[order+1];
	}
	else{
		order = 0;
	}
	son = 0;
	age -= 20;
	intelligence = 20;
	popularity = 100;
	food = 10;
		
	}
	
	
}

if (current_followers > followers){
	inst = instance_find(oFollower, irandom(instance_number(oFollower) - 1));
	instance_destroy(inst);
	current_followers -= 1;
}
if (current_followers < followers){
	follower = instance_create_layer(self.x - 30 - random_range(0,480) ,self.y,"Instances",oFollower);
	follower.image_index = random_range(1,7);
	current_followers += 1;
}