if collision{
	eContinue = 0
	oHero.moving = 0;
	text = instance_create_layer(1366/2,y+50,"Text",oTextbox_Guide);
	text.title = title;
	text.content = content;
	text.button = option_a;
	collision = 0;
}




if instance_exists(oTextbox_Result){
	oTextbox_Result.title = title;
	oTextbox_Result.content = content_2;
	oTextbox_Result.button = "Begin";
	
	
	
	
}
if eContinue{
	oHero.moving = 1;
	collision = 1;	
	instance_destroy();
	oSpawner.alarm[0] = 1;
	
}
