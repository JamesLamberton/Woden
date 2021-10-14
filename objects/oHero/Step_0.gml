/// @description Insert description here
// You can write your code in this editor

if moving {
	sprite_index = sHero_Walk;
}
else {
	sprite_index = sHero_Idle;
}

for (var i = 0; i < follower_iterate; i += 1){
	follower_iterate -= 1;
	follower = instance_create_layer(self.x - 30 - random_range(0,500) ,self.y,"Instances",oFollower);
	follower.image_index = random_range(1,7);
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
		
	}
	else{
	order += 1;
	lineage -= 1;
	name = name_list[order];
	title = title_list[order];
		
	}
}


if (intelligence <= 0) or (popularity <= 0) or (old_age == 7){
		//kill hero
	if (lineage < 2){
		//you lose
		
	}
	else{
	order += 1;
	lineage -= 1;
	name = name_list[order];
	title = title_list[order];
	age -= 20;
	intelligence = 20;
	popularity = 100;
	food = 10;
		
	}
	
	
}

