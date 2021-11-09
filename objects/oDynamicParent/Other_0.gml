if place_meeting(x,y,oCollect_1){
	oEncounter.choice = "A";
	instance_destroy();
}
else if place_meeting(x,y,oCollect_2){
	oEncounter.choice = "B";
	instance_destroy();
}
else if place_meeting(x,y,oCollect_3){
	oEncounter.choice = "C";
	instance_destroy();
}
else if !respawn{
	phy_position_x = 1366/2;
	phy_position_y = -100;
	respawn = 1;
}
	