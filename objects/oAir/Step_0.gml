if instance_exists(oWoden){
	if oWoden.wMoving and !oWoden.outro{
		x -= hsp
	}
}

if invisible{
	image_alpha = image_alpha - 0.01;	
	
}
if (image_alpha <= 0){
	instance_destroy();	
}
if !instance_exists(oWodenTitleShadow){
	instance_destroy();	
}