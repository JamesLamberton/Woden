chance = random_range(0,99);
//if chance and newMysteriousMan{
//	instance_create_layer(x,y,"Instances",oMysteriousMan);
//	newMysteriousMan = 0;
//}
//else{
//	instance_create_layer(x,y,"Instances",oUnknown);
//}
if (chance < 20){
	instance_create_layer(x,y,"Instances",oBadWinter);
}
else if (chance >= 20 and chance < 40){
	instance_create_layer(x,y,"Instances",oEnemyBand);
}
else if (chance >= 40 and chance < 60){
	instance_create_layer(x,y,"Instances",oRuinedVillage);
}
else if (chance >=  60 and chance < 80){
	instance_create_layer(x,y,"Instances",oVillage);
}
else{
	instance_create_layer(x,y,"Instances",oVillage);
}


