chance = random_range(0,1);
if chance and newMysteriousMan{
	instance_create_layer(x,y,"Instances",oMysteriousMan);
	newMysteriousMan = 0;
}
else{
	instance_create_layer(x,y,"Instances",oVillage);
}