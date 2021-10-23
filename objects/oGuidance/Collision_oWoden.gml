if collision and !avoid{
	eContinue = 0;
	oWoden.wMoving = 0;
	oWoden.intro = 0;
	text = instance_create_layer(1366/2,8,"Text",oTextbox_Guide);
	text.title = title;
	text.content = content[page];
	text.button = "Continue \n"+string(page+1)+"/"+string(page_max);
	collision = 0;
	avoid = 1;
	
}
//if next_page{
//	next_page = 0;
//	if (page != page_max-1){
////	text = instance_create_layer(1366/2,20,"Text",oTextbox_Guide);
////	text.title = title;
////	text.content = content[page]
////	text.button = "Continue \n"+string(page+1)+"/"+string(page_max);
//}
//else{
//	text = instance_create_layer(1366/2,20,"Text",oTextbox_Result);
//	text.title = title;
//	text.content = content[page]
//	text.button = "Begin";
//}
//}


if instance_exists(oTextbox_Result){
	oTextbox_Result.title = title;
	oTextbox_Result.content = content_2;
	oTextbox_Result.button = "Begin";
	
}
if eContinue{
	if (page != page_max){
		hsp = 3;
		oWoden.wMoving = 1;
	}
	else{
		//eContinue = 0;
		//var text2 = instance_create_layer(1366/2,20,"Text",oTextbox_Result);
		//text2.title = title;
		//text2.content = content_2;
		//text2.button = "Begin";
		oWoden.wMoving = 1;
		//oWoden.outro = 1;
		//instance_destroy();
		
	}
}