event_inherited();
if oHero.moving and completed{
	alpha -= 0.05;	
}


if place_meeting(x,y,oHero){
	if nCollision and !completed{
		oHero.prologue = 0;
		oHero.moving = 0;
		oHero.moveToggle = 1;
		nCollision = 0;
		oDynamicParent.phy_active = true;
		total = scriptEncounter(oSpawner.last,oSpawner.phyObject,oSpawner.enemylvl);
	}
	if completed{
		oHero.moving = 1;
		
	}
	
	
}

if choice != "" {
	oSpawner.alarm[0] = 1;
	completed = 1;
	if choice == "A"{
		choice = "";
		if Ar{
			result = As;
		}
		else if Ad[0]{
			result = Ad[1];	
		}
		else{
			result = Af;
		}
	}
	if choice == "B"{
		choice = "";
		if Br{
			result = Bs;
		}
		else if Bd[0]{
			result = Bd[1];	
		}
		else{
			result = Bf;
		}
	}
	if choice == "C"{
		choice = "";
		if Cr{
			result = Cs;
		}
		else if Cd[0]{
			result = Cd[1];	
		}
		else{
			result = Cf;
		}
	}
}
if result != false and completed{
	result[0] = max(result[0],-oHero.food);
	result[1] = max(result[1],-oHero.intelligence);
	result[2] = max(result[2],-oHero.popularity);
	result[3] = max(result[3],-oHero.followers);

	if result[0] > 0{
		o = instance_create_layer(800,500,"Physics",oReward);	
		o.sprite_index = sFoodUp;
		o.rewardType = "Food";
		o.rewardAmount = result[0];
		o.phy_speed_x = random_range(1,3);
		o.phy_speed_y = -random_range(5,7);
	}
	else if result[0] < 0{
		o = instance_create_layer(800,500,"Physics",oReward);	
		o.sprite_index = sFoodUp;
		o.rewardType = "Food";
		o.rewardAmount = result[0];
		o.phy_speed_x = random_range(1,3);
		o.phy_speed_y = -random_range(5,7);
	}
	if result[1] > 0{
		o = instance_create_layer(800,500,"Physics",oReward);	
		o.sprite_index = sIntelUp;
		o.rewardType = "Intelligence";
		o.rewardAmount = result[1];
		o.phy_speed_x = random_range(1,3);
		o.phy_speed_y = -random_range(5,7);
	}
	else if result[1] < 0{
		o = instance_create_layer(800,500,"Physics",oReward);	
		o.sprite_index = sIntelUp;
		o.rewardType = "Intelligence";
		o.rewardAmount = result[1];
		o.phy_speed_x = random_range(1,3);
		o.phy_speed_y = -random_range(5,7);
	}
	if result[2] > 0{
		o = instance_create_layer(800,500,"Physics",oReward);	
		o.sprite_index = sMoraleUp;
		o.rewardType = "Morale";
		o.rewardAmount = result[2];
		o.phy_speed_x = random_range(1,3);
		o.phy_speed_y = -random_range(5,7);
	}
	else if result[2] < 0{
		o = instance_create_layer(800,500,"Physics",oReward);	
		o.sprite_index = sMoraleDown;
		o.rewardType = "Morale";
		o.rewardAmount = result[2];
		o.phy_speed_x = random_range(1,3);
		o.phy_speed_y = -random_range(5,7);
	}
	if result[3] > 0{
		o = instance_create_layer(800,500,"Physics",oReward);	
		o.sprite_index = sMenUp;
		o.rewardType = "Men";
		o.rewardAmount = result[3];
		o.phy_speed_x = random_range(1,3);
		o.phy_speed_y = -random_range(5,7);
	}
	else if result[3] < 0{
		o = instance_create_layer(800,500,"Physics",oReward);	
		o.sprite_index = sMenDown;
		o.rewardType = "Men";
		o.rewardAmount = result[3];
		o.phy_speed_x = random_range(1,3);
		o.phy_speed_y = -random_range(5,7);
	}	
	result = false;
}

if total != 0{
text = total[0]
At = total[1];
Ap = total[2];
Ar = total[3];
Ad = total[4];
As = total[5];
Af = total[6];

Bt = total[7];
Bp = total[8];
Br = total[9];
Bd = total[10];
Bs = total[11];
Bf = total[12];

Ct = total[13];
Cp = total[14];
Cr = total[15];
Cd = total[16];
Cs = total[17];
Cf = total[18];

total = 0;
	
}

/*

	impacts[0] = max(impacts[0],-oHero.intelligence);
	impacts[1] = max(impacts[1],-oHero.followers);
	impacts[2] = max(impacts[2],-oHero.food);
	impacts[3] = max(impacts[3],-oHero.popularity);
	
	*/