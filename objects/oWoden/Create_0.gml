hsp = 3;
wMoving = 0;
titlescreen = 1;
intro = 0;
collision = 0;
textAlpha = 1;
tx = x+300;
ty = y-150;
sx = x+300;
sy = y-100;
ex = x+300;
ey = y-50;
outro = 0;
hudToggle = 1;
page = 0;
with (all){
	if (layer == layer_get_id("UI_Instances")) or (layer == layer_get_id("UI_Background")){
		y -= 300;	
		
	}
}
//layer_set_visible(layer_get_id("UI_Instances"),false);
//layer_set_visible(layer_get_id("UI"),false);