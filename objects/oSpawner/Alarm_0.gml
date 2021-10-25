chance = random_range(0,129);
//if chance and newMysteriousMan{
//	instance_create_layer(x,y,"Instances",oMysteriousMan);
//	newMysteriousMan = 0;
//}
//else{
//	instance_create_layer(x,y,"Instances",oUnknown);
//}
if (chance < 20 and last != "BadWinter"){
	instance_create_layer(x,y,"Instances",oBadWinter);
	last = "BadWinter";
}
else if (chance >= 20 and chance < 40 and last != "EnemyBand"){
	instance_create_layer(x,y,"Instances",oEnemyBand);
	last = "EnemyBand";
}
else if (chance >= 40 and chance < 60 and last != "RuinedVillage"){
	instance_create_layer(x,y,"Instances",oRuinedVillage);
	last = "RuinedVillage";
}
else if (chance >=  60 and chance < 80 and last != "Wilderness"){
	instance_create_layer(x,y,"Instances",oWilderness);
	last = "Wilderness";
}
else{
	instance_create_layer(x,y,"Instances",oVillage);
	last = "Village";
}


