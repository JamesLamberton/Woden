/// @description Insert description here
// You can write your code in this editor
if oHero.moving{
	x -= hsp
}
if (x == -700){
	x = 2052;	
	
}
if (x == -701){
	x = 2051;	
	
}
if (x == -702){
	show_debug_message("hi")
	x = 2050;	
	
}

if instance_exists(oWoden){
	if oWoden.wMoving and !oWoden.outro{
		x -= hsp
	}
}

