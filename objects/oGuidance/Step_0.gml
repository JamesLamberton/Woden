event_inherited();
if collision{
	impacts = [20,6,20,90,"",0];
	title = "The Volsung Saga, Chapter 1";
	content = oVolsungSaga.chapter_1;
	page_max = array_length(content);
	option_a = "Intervene";
	content_2 = "Our son shall have the gift of Our support and with it, the ability to sire the greatest kings of all time."

	
}
else{	

	oHero.prologue = 0;	
}
if oWoden.wMoving{
	x -= hsp;	
	
}
if (x <= 0) and (page != page_max) and spriteToggle{
	spriteToggle = 0;
	guide = instance_create_layer(x+1500,y,"Instances",oGuidance);
	guide.hsp = 3;
	guide.page = page;
	guide.sprite_index = frames[page];
}
if (x <= -100){
	if (page == page_max){
		instance_create_layer(x+600,y,"Instances",oBegin);
		
	}
	instance_destroy();

}

	