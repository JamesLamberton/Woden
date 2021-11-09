
if instance_exists(oTextbox){

	oTextbox.option_a = option_a;
	oTextbox.option_a_condition = option_a_condition;
	oTextbox.option_b = option_b;
	oTextbox.option_b_condition = option_b_condition;
	oTextbox.option_c = option_c;
	oTextbox.option_c_condition = option_c_condition;
}
if collision and !completed{
	eResult = 0;
	eContinue = 0;
	oHero.moving = 0;
	instance_create_layer(1366/2,y-220,"Text",oTextbox);
	oTextbox.title = title;
	oTextbox.content = content;
	collision = 0;
	}

if eResult and !completed{
	instance_destroy(oTextbox);
	instance_create_layer(1366/2,y-220,"Text",oTextbox_Result);
	eResult = 0;
}



if eContinue and !completed{
	oHero.moving = 1;
	collision = 1;	
	oHero.food -= floor(oHero.followers/10);
	if (oHero.age >= 80){
	oHero.popularity -= 10;
	oHero.old_age = random_range(1,8);
	}
	if (oHero.food <= 0){
		oHero.food = 0;
		oHero.popularity -= 15;
		oHero.followers = ceil(oHero.followers * 0.75);
		
	}
	oSpawner.alarm[0] = 1;
	completed = 1;
}





