hsp = 3;
wMoving = 0;
titlescreen = 1;
intro = 0;
collision = 0;
tx = x+300;
ty = y-150;
outro = 0;
hudToggle = 1;
with (all){
	if (layer == layer_get_id("UI_Instances")) or (layer == layer_get_id("UI_Background")){
		y -= 200;	
		
	}
}
//layer_set_visible(layer_get_id("UI_Instances"),false);
//layer_set_visible(layer_get_id("UI"),false);