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