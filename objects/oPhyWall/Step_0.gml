phy_active = true;
if oHero.moving{
	phy_position_x -= 3;
}
else{
	instance_destroy();
}
image_alpha =0;