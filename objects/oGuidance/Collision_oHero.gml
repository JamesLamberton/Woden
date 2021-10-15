if collision{
	eContinue = 0
	oHero.moving = 0;
	text = instance_create_layer(1366/2,y+50,"Text",oTextbox_Guide);
	text.title = title;
	text.content = content[page]
	text.button = "Continue \n"+string(page+1)+"/"+string(page_max);
	collision = 0;
	
}
if next_page{
	next_page = 0;
	if (page != page_max-1){
	text = instance_create_layer(1366/2,y+50,"Text",oTextbox_Guide);
	text.title = title;
	text.content = content[page]
	text.button = "Continue \n"+string(page+1)+"/"+string(page_max);
}
else{
	text = instance_create_layer(1366/2,y+50,"Text",oTextbox_Result);
	text.title = title;
	text.content = content[page]
	text.button = "Begin";
}
	
	
	
	
	
	
}



if instance_exists(oTextbox_Result){
	oTextbox_Result.title = title;
	oTextbox_Result.content = content_2;
	oTextbox_Result.button = "Begin";
	
	
	
	
}
if eContinue{
	oHero.moving = 1;
	collision = 1;	
	oSpawner.alarm[0] = 1;
	instance_destroy();
	oHero.prologue_end = 1;
	
	
}
