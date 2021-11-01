if oHero.moving{
	x -= hsp
}
if (x <= -192){
	x += 1700 + random_range(500,1700);	
	
}

if instance_exists(oWoden){
	if oWoden.wMoving and !oWoden.outro{
		x -= hsp
	}
}

