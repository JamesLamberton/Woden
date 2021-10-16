if collision{
	instance_destroy(oWoden);
	oHero.moveToggle = 1;
	collision = 0;
	eResult = 0;
	eContinue = 0;
	oHero.prologue = 0;
	oHero.moving = 0;
	oHero.moveToggle = 1;
	instance_create_layer(1366/2,y+50,"Text",oTextbox_Result);
	oTextbox_Result.title = title;
	oTextbox_Result.content = content;
	oTextbox_Result.impacts = impacts;
	
	}
	
	if eContinue{
	oHero.moving = 1;
	collision = 1;	
	oHero.food -= ceil(oHero.followers/10);
	if (oHero.age >= 80){
	oHero.popularity -= 10;
	oHero.old_age = random_range(1,8);
	}
	if (oHero.food <= 0){
		oHero.food = 0;
		oHero.popularity -= 15;
		oHero.followers = ceil(oHero.followers * 0.75);
		
	}
	instance_destroy();
	oSpawner.alarm[0] = 1;
	
}
