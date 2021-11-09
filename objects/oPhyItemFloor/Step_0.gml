phy_active = true;
if instance_exists(oReward){
	if oReward.phy_speed_y < -2 {
		phy_active = false;
	}
	else{
		phy_active = true;
	}
}
else{
	phy_active = true;
}

