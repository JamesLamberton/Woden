if wMoving{
	sprite_index = sWoden_Walk;
	
}
else {
	sprite_index = sWoden_Idle;

}
if place_meeting(x,y,oGuidance){
	collision = 1;
}


if intro and !collision{
	wMoving = 1;
	x -= 1;
	
	
}
oHero.moveToggle = hudToggle;
if outro{
	wMoving = 1;
	x += 3;
	if (x >= 1400) and hudToggle{
		hudToggle = 0;
		alarm[0] = 3;
		i = 60;
		
		

	}

}

