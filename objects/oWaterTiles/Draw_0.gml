/// @description Insert description here
// You can write your code in this editor
//Get tilemap
//tilemap = layer_tilemap_get_id("WaterTiles");

////Set surface
//surface_set_target(water_surf);

//draw_tilemap(tilemap, 100, 100);

////Reset surface
//surface_reset_target();

////Draw surface in game
//draw_surface(water_surf, 100, 100);
with(oMountains) {
	draw_sprite_ext(sprite_index, image_index, x, (y+(other.y-y)+(other.y-y)*0.7), image_xscale, -image_yscale*other.reflection, 0, -1,1);

}
with(oHill2) {
	draw_sprite_ext(sprite_index, image_index, x, (y+(other.y-y)+(other.y-y)*0.7), image_xscale, -image_yscale*other.reflection, 0, -1,1);

}
with(oHill1) {
	draw_sprite_ext(sprite_index, image_index, x, (y+(other.y-y)+(other.y-y)*0.7), image_xscale, -image_yscale*other.reflection, 0, -1,1);

}
with(oSmallVillage) {
	draw_sprite_ext(sprite_index, image_index, x, (y+(other.y-y)+(other.y-y)*0.7), image_xscale, -image_yscale*other.reflection, 0, -1,1);

}
with(oGround) {
	draw_sprite_ext(sprite_index, image_index, x, (y+(other.y-y)+(other.y-y)*0.7), image_xscale, -image_yscale*other.reflection, 0, -1,1);

}

with(oFollower) {
	draw_sprite_ext(sprite_index, image_index, x, (y+other.yoff*2), image_xscale, -image_yscale*other.reflection, 0, -1,1);
}


with(oHero) {
	draw_sprite_ext(sprite_index, image_index, x, (y+other.yoff*2), image_xscale, -image_yscale*other.reflection, 0, -1,1);

}


//with(oEncounter) {
//	draw_sprite_ext(sprite_index, image_index, x, (y+(other.y-y)+(other.y-y)*0.7), image_xscale, -image_yscale*other.reflection, 0, -1,1);

//}
with(oDynamicParent){
	//if falling{
	//	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, -image_yscale*other.reflection, 0, -1,1);
	//	sy = y+sprite_height;
		
	//}
	if under and !falling{
		draw_sprite_ext(sprite_index, image_index, x, (y+sprite_height), image_xscale, -image_yscale*other.reflection, 0, -1,1);
		sy = y+sprite_height;
		image_alpha = 1;
		splash = 0;
	}
	else if under and falling{
		draw_sprite_part_ext(sprite_index, image_index, 0,0,sprite_width,sprite_height-dis/1.5,x-sprite_width/2, sy+sprite_width*0.7 , image_xscale, -image_yscale*other.reflection, -1,1);
		sy -= (phy_speed_y*0.7);
		if position_meeting(x,(sy-sprite_height/2*0.7),oDynamicParent) or splash{
			image_alpha = 0;	
			dis = y+sprite_height/2 - (sy-sprite_height/2*0.7)
			splash = 1;
			//draw_sprite_part(sprite_index, image_index, 0, 0, sprite_width, sprite_height, x-sprite_width, y-sprite_height);
			
		}
		else{
			image_alpha = 1;	
			splash = 0;
		}
	}
	else{
		draw_sprite_ext(sprite_index, image_index, x, (other.y+(other.y-y)*0.7), image_xscale, -image_yscale*other.reflection, 0, -1,1);
		sy = (y+(other.y-y)+(other.y-y)*0.7);
		image_alpha = 1;
		splash = 0;
	}
}
