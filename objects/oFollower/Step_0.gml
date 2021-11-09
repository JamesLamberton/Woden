//if update{
//	update = 0;
//	if  oHero.moving{
//		sprite_index = sprite_walk_set;
//		image_index = random_range(1,7);
//	}
//	else{
//		sprite_index = sprite_idle_set;
//	}
//}

if oHero.followers <= 20{
	sprite_idle_set = Follower_Idle;
	sprite_walk_set = Follower_Walk;
}
else if (oHero.followers > 20 and oHero.followers<= 40){
	sprite_idle_set = Follower_Idle_2;
	sprite_walk_set = Follower_Walk_2;
}
else{
	sprite_idle_set = Follower_Idle_2;
	sprite_walk_set = Follower_Walk_2;
}

if oHero.moving{
	if (sprite_index = sprite_idle_set){
		sprite_index = sprite_walk_set;
		image_index = random_range(1,7);
	}
	if sprite_index != sprite_walk_set{
		sprite_index = sprite_walk_set
	}
	
}
else {
	sprite_index = sprite_idle_set;
}