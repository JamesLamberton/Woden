if oHero.moving{
	phy_position_x -= hsp
}
if (phy_position_x <= -192){
	phy_position_x += 1700;	
	
}

if instance_exists(oWoden){
	if oWoden.wMoving and !oWoden.outro{
		phy_position_x -= hsp
	}
}

