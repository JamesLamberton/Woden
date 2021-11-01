if start{
	impacts[0] = max(impacts[0],-oHero.intelligence);
	impacts[1] = max(impacts[1],-oHero.followers);
	impacts[2] = max(impacts[2],-oHero.food);
	impacts[3] = max(impacts[3],-oHero.popularity);
	
	
	oHero.intelligence += impacts[0];
	oHero.followers += impacts[1];
	oHero.food += impacts[2];
	oHero.popularity += impacts[3];	
	oHero.age += 1
	if oHero.popularity > 180{
		oHero.popularity = 180;
	}
	if (impacts[4] == "A son"){
		oHero.son += 1;
	}
	else{
	oHero.bonus += impacts[5];
	}
	start = 0;
	//button = "Continue";
}