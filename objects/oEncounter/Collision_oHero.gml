if collision{
	eContinue = 0;
	oHero.moving = 0;
	collision = 0;
	instance_create_layer(1366/2,y+50,"Text",oTextbox);
	oTextbox.title = title;
	oTextbox.content = content ;
	}

if eContinue{
	x += 1000;
	oHero.moving = 1;
	collision = 1;	
	oHero.age += 1;
	oHero.food -= ceil(oHero.followers/10);
	instance_destroy(oTextbox);
	if (oHero.age >= 80){
	oHero.popularity -= 10;
	oHero.old_age = random_range(1,8);
	}
	if (oHero.food <= 0){
		oHero.food = 0;
		oHero.popularity -= 15;
		oHero.followers = ceil(oHero.followers * 0.75);
		
	}
}




