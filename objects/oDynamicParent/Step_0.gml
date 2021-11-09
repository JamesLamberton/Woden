event_inherited();
if (dragging) {
	phy_position_x = mouse_x + mdx;
	phy_position_y = mouse_y + mdy;
	phy_speed_x = 0;
	phy_speed_y = 0;
   
   if (!mouse_check_button(mb_left)) {
      dragging = false;
   }
}
else if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) and instance_exists(oEncounter) and !oHero.prologue and !oHero.moving ) {
	phy_speed_x = 0;
	phy_speed_y = 0;
	dragging = true;
	respawn = 0;
	mdx = phy_position_x - mouse_x;
	mdy = phy_position_y - mouse_y;
}
