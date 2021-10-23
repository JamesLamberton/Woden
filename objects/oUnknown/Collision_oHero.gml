	if place_meeting(oHero.x, oHero.y, oSmallVillage){
		instance_create_layer(x,y,"Instances",oVillage);
		instance_destroy();
	}