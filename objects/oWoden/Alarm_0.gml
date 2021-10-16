if (i > 0){
	with (all){
		if (layer == layer_get_id("UI_Instances")) or (layer == layer_get_id("UI_Background")){
			y += 5;	
		
		}
	}
	i -= 1;
}
alarm[0] = 1;