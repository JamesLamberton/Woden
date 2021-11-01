chance = random_range(0,129);
//if chance and newMysteriousMan{
//	instance_create_layer(x,y,"Instances",oMysteriousMan);
//	newMysteriousMan = 0;
//}
//else{
//	instance_create_layer(x,y,"Instances",oUnknown);
//}
if (chance < 20 and last != "BadWinter" and last2 != "BadWinter"){
	instance_create_layer(x,y,"Instances",oBadWinter);
	last2 = last;
	last = "BadWinter";
}
else if (chance >= 20 and chance < 40 and last != "EnemyBand" and last2 != "EnemyBand"){
	instance_create_layer(x,y,"Instances",oEnemyBand);
	last2 = last;
	last = "EnemyBand";
}
else if (chance >= 40 and chance < 60 and last != "RuinedVillage" and last2 != "RuinedVillage"){
	instance_create_layer(x,y,"Instances",oRuinedVillage);
	last2 = last;
	last = "RuinedVillage";
}
else if (chance >=  60 and chance < 80 and last != "Wilderness" and last2 != "Wilderness"){
	instance_create_layer(x,y,"Instances",oWilderness);
	last2 = last;
	last = "Wilderness";
}
else if(chance >= 100 and last != "Village" and last2 != "Village"){
	instance_create_layer(x,y,"Instances",oVillage);
	last2 = last;
	last = "Village";
}
else{
	alarm[0] = 1;
}

