chance = random_range(0,129);
//if chance and newMysteriousMan{
//	instance_create_layer(x,y,"Instances",oMysteriousMan);
//	newMysteriousMan = 0;
//}
//else{
//	instance_create_layer(x,y,"Instances",oUnknown);
//}
if (chance < 20 and last != "BadWinter" and last2 != "BadWinter"){
	instance_create_layer(x,y,"Instances",oEncounter);
	phyObject = instance_create_layer(xs,ys,"Physics",oStone);
	phyObject.phy_active = false;
	last2 = last;
	last = "BadWinter";
	instance_create_layer(x-32,0,"Physics",oPhyWall);
}
else if (chance >= 20 and chance < 40 and last != "EnemyBand" and last2 != "EnemyBand"){
	instance_create_layer(x,y,"Instances",oEncounter);
	phyObject = instance_create_layer(xs,ys,"Physics",oStone);
	phyObject.phy_active = false;
	last2 = last;
	last = "EnemyBand";
	instance_create_layer(x-32,0,"Physics",oPhyWall);
}
else if (chance >= 40 and chance < 60 and last != "RuinedVillage" and last2 != "RuinedVillage"){
	instance_create_layer(x,y,"Instances",oEncounter);
	phyObject = instance_create_layer(xs,ys,"Physics",oStone);
	phyObject.phy_active = false;
	last2 = last;
	last = "RuinedVillage";
	instance_create_layer(x-32,0,"Physics",oPhyWall);
}
else if (chance >=  60 and chance < 80 and last != "Wilderness" and last2 != "Wilderness"){
	instance_create_layer(x,y,"Instances",oEncounter);
	phyObject = instance_create_layer(xs,ys,"Physics",oStone);
	phyObject.phy_active = false;
	last2 = last;
	last = "Wilderness";
	instance_create_layer(x-32,0,"Physics",oPhyWall);
}
else if(chance >= 100 and last != "Village" and last2 != "Village"){
	instance_create_layer(x,y,"Instances",oEncounter);
	phyObject = instance_create_layer(xs,ys,"Physics",oStone);
	phyObject.phy_active = false;
	last2 = last;
	last = "Village";
	instance_create_layer(x-32,0,"Physics",oPhyWall);
}
else{
	alarm[0] = 1;
}

