phy_active = true;
with(oDynamicParent){
	if (phy_speed_y >= 3 or dragging or y >= other.y-50) and !respawn 
	{
	    other.phy_active = false;
	}
	else{
		other.phy_active = true;
	}
	
	if (dragging and y >= other.y-50){
		under = 1;
		falling = 0;
	}
	else if (!dragging and y >= other.y-50)
	{
		under = 1;
		falling = 1;
	}
	else{
		under = 0;	
	}
	
	
	
}
with(oReward){
	if phy_speed_y < -3{
			other.phy_active = false;
	}
	//else{
	//	other.phy_active = true;
	//}
}

image_alpha = 0;
