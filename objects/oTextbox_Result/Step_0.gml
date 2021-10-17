if start{
	oHero.intelligence += impacts[0];
	oHero.followers += impacts[1];
	oHero.food += impacts[2];
	oHero.popularity += impacts[3];	
	oHero.age += 2
	show_debug_message(impacts);
	if (oHero.popularity >= oHero.pop_max){
		oHero.popularity = oHero.pop_max;
	
	}
	if (impacts[4] == "A son"){
		oHero.son += 1;
		oHero.lineage += 1;
	}
	else{
	oHero.bonus += impacts[5];
	}
	start = 0;
	//button = "Continue";
}