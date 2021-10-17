if (i > 0){
	with (all){
		if (layer == layer_get_id("UI_Instances")) or (layer == layer_get_id("UI_Background")){
			y += 5;	
		
		}
	}
	i -= 1;
}
else{
	instance_create_layer(500,y,"Instances",oBegin);
	instance_destroy();
}
alarm[0] = 1;