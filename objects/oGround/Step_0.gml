/// @description Insert description here
// You can write your code in this editor
if oHero.moving{
	x -= hsp
}
if (x <= -52){
	x += 1500;	
	
}

if instance_exists(oWoden){
	if oWoden.wMoving and !oWoden.outro{
		x -= hsp
	}
}