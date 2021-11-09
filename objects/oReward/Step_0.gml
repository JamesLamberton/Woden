if oHero.moving{
	phy_position_x -= hsp
}
if (phy_position_x <= -192){
	phy_position_x += 1700;	
	
}
if place_meeting(phy_position_x,phy_position_y,oHero){
	if rewardType == "Food"{
		oHero.food += rewardAmount;	
	}
	else if rewardType == "Intelligence"{
		oHero.intelligence += rewardAmount;	
	}
	else if rewardType == "Morale"{
		oHero.popularity += rewardAmount;
	}
	else if rewardType == "Men"{
		oHero.followers += rewardAmount;
	}
	rewardtext = instance_create_layer(x-50,280,"Text",oRewardText);
	rewardtext.amount = rewardAmount;
	rewardtext.rtype = rewardType;
	instance_destroy();
}
