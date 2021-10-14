/// @description Insert description here
// You can write your code in this editor

if oHero.update{
	instance_destroy();
}

if oHero.moving{
	if (sprite_index = Follower_Idle){
		sprite_index = Follower_Walk;
		image_index = random_range(1,7);
	}
	if (sprite_index = Follower_Idle_2){
		sprite_index = Follower_Walk_2;
		image_index = random_range(1,7);
	}
	
}
else {
	if (sprite_index = Follower_Walk){
		sprite_index = Follower_Idle;
	}
	if (sprite_index = Follower_Walk_2){
		sprite_index = Follower_Idle_2;
	}
	
	
}