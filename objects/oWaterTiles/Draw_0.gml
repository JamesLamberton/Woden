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
	draw_sprite_ext(sprite_index, image_index, x,900, image_xscale, -image_yscale*other.reflection, 0, -1,1);

}
with(oHill2) {
	draw_sprite_ext(sprite_index, image_index, x,900, image_xscale, -image_yscale*other.reflection, 0, -1,1);

}
with(oHill1) {
	draw_sprite_ext(sprite_index, image_index, x,900, image_xscale, -image_yscale*other.reflection, 0, -1,1);

}
with(oFollower) {
	draw_sprite_ext(sprite_index, image_index, x, (y+other.yoff*2), image_xscale, -image_yscale*other.reflection, 0, -1,1);
}


with(oHero) {
	draw_sprite_ext(sprite_index, image_index, x, (y+other.yoff*2), image_xscale, -image_yscale*other.reflection, 0, -1,1);

}

//with(oGround) {
//	draw_sprite_ext(sprite_index, image_index, x, (y+other.yoff), image_xscale, -image_yscale*other.reflection, 0, -1,1);

//}

with(oEncounter) {
	draw_sprite_ext(sprite_index, image_index, x, (y+other.yoff*2), image_xscale, -image_yscale*other.reflection, 0, -1,1);

}

