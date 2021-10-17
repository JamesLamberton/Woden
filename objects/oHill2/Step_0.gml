if oHero.moving{
	x -= hsp
}
if (x <= 0){
	x += 2766;	
	
}

if instance_exists(oWoden){
	if oWoden.wMoving and !oWoden.outro{
		x -= hsp
	}
}

