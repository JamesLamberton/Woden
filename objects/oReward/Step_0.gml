if oHero.moving{
	phy_position_x -= hsp
}
if (phy_position_x <= -192){
	phy_position_x += 1700;	
	
}
if place_meeting(phy_position_x,phy_position_y,oHero){
	if rewardType == "Food"{
		oHero.food += rewardAmount;	
		//if (oHero.food == 30){
		//	show_debug_message("You lose!");
		//	game_restart();}
	}
	else if rewardType == "Intelligence"{
		oHero.intelligence += rewardAmount;	
	}
	else if rewardType == "Morale"{
		oHero.popularity += rewardAmount;
		if (rewardAmount == 30){
			show_debug_message("You win!");
			game_restart();
		}
		if (oHero.popularity == 0){
			show_debug_message("You lose!");
			game_restart();
		}
	}
	else if rewardType == "Men"{
		oHero.followers += rewardAmount;
		if (oHero.followers == 0){
			show_debug_message("You lose!");
			game_restart();
		}
	}
	rewardtext = instance_create_layer(x-50,280,"Text",oRewardText);
	rewardtext.amount = rewardAmount;
	rewardtext.rtype = rewardType;
	instance_destroy();
}
