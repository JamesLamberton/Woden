chance = random_range(0,129);
//if chance and newMysteriousMan{
//	instance_create_layer(x,y,"Instances",oMysteriousMan);
//	newMysteriousMan = 0;
//}
//else{
//	instance_create_layer(x,y,"Instances",oUnknown);
//}


if (chance < 20 and last != "BadWinter" and last2 != "BadWinter"){
	encounter = instance_create_layer(x,y,"Instances",oEncounter);
	instance_create_layer(x-32,0,"Physics",oPhyWall);
	camp = instance_create_layer(xs,ys,"Instances",oCamp);
	camp.y = y;
	phyObject = instance_create_layer(xs,ys,"Physics",oFirepit);
	phyObject.phy_position_y = y - phyObject.sprite_height/2;
	phyObject.phy_active = false;
	encounter.total =  scriptEncounter("BadWinter",phyObject);
	last2 = last;
	last = "BadWinter";
}
else if (chance >= 20 and chance < 40 and last != "EnemyBand" and last2 != "EnemyBand"){
	encounter = instance_create_layer(x,y,"Instances",oEncounter);
	instance_create_layer(x-32,0,"Physics",oPhyWall);
	phyObject = instance_create_layer(xs,ys,"Physics",oFlag);
	phyObject.phy_position_y = y - phyObject.sprite_height/2;
	phyObject.phy_active = false;
	encounter.total =  scriptEncounter("EnemyBand",phyObject);
	last2 = last;
	last = "EnemyBand";
}
else if (chance >= 40 and chance < 60 and last != "RuinedVillage" and last2 != "RuinedVillage"){
	encounter = instance_create_layer(x,y,"Instances",oEncounter);
	instance_create_layer(x-32,0,"Physics",oPhyWall);
	phyObject = instance_create_layer(xs,ys,"Physics",oRansacked);
	phyObject.phy_position_y = y - phyObject.sprite_height/2;
	phyObject.phy_active = false;
	encounter.total =  scriptEncounter("RuinedVillage",phyObject);
	last2 = last;
	last = "RuinedVillage";
}
else if (chance >=  60 and chance < 80 and last != "Wilderness" and last2 != "Wilderness"){
	encounter = instance_create_layer(x,y,"Instances",oEncounter);
	instance_create_layer(x-32,0,"Physics",oPhyWall);
	camp = instance_create_layer(xs,ys,"Instances",oCamp);
	camp.y = y;
	phyObject = instance_create_layer(xs,ys,"Physics",oFirepit);
	phyObject.phy_position_y = y - phyObject.sprite_height/2;
	phyObject.phy_active = false;
	encounter.total =  scriptEncounter("Wilderness",phyObject);
	last2 = last;
	last = "Wilderness";
}
else if(chance >= 100 and last != "Village" and last2 != "Village"){
	encounter = instance_create_layer(x,y,"Instances",oEncounter);
	instance_create_layer(x-32,0,"Physics",oPhyWall);
	phyObject = instance_create_layer(xs,ys,"Physics",oSign);
	phyObject.phy_position_y = y - phyObject.sprite_height/2;
	phyObject.phy_active = false;
	encounter.total =  scriptEncounter("Village",phyObject);
	last2 = last;
	last = "Village";
}



else{
	alarm[0] = 1;
}

