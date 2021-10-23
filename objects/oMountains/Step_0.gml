



if oHero.moving{
	x -= hsp
}
if (x <= 0){
	x += 2866;	
	
}

if instance_exists(oWoden){
	if oWoden.wMoving and !oWoden.outro{
		x -= hsp
	}
}

