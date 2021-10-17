if wMoving{
	sprite_index = sWoden_Walk;
	
}
else {
	sprite_index = sWoden_Idle;

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
		i = 40;
		
		

	}

}

