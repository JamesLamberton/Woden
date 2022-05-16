event_inherited();
if collision{
	impacts = [20,6,20,90,"",0];
	title = "The Volsung Saga, Chapter 1";
	content = oVolsungSaga.chapter_1;
	option_a = "Intervene";
	content_2 = "Our son shall have the gift of Our support and with it, the ability to sire the greatest kings of all time."

	
}
else{	

	oHero.prologue = 0;	
}
if oWoden.wMoving{
	x -= hsp;	
	
}

if (x <= 300) and (oWoden.page != page_max) and spriteToggle{
	spriteToggle = 0;
	oWoden.page += 1;
	if (oWoden.page != page_max){
		guide = instance_create_layer(1366,y,"Instances",oGuidance);
		guide.hsp = 3;
		guide.sprite_index = frames[oWoden.page];
	}
	else{
		
	}

}
if (x <= -600){
	if (oWoden.page == page_max){
		oWoden.outro = 1;
		
	}
	instance_destroy();
}
