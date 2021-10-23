event_inherited();
if collision and tToggle{
	title = "The Wilderness";
	content = oHero.name+"'s band near the edge of a deep and dark forest. A beast inside, band reluctant";
	option_a = "Hunt around edges.";
	option_a_result_sucess = "yay food";
	option_a_impact_sucess = [0,0,+15,-5,"",0];


	option_b = "Hunt Beast.";
	option_b_result_sucess = "peeps die";
	option_b_impact_sucess = [0,-10,0,5,"",0];


	option_c = "Avoid.";
	option_c_result_sucess = ":) ";
	option_c_impact_sucess = [0,0,0,+10,"",0];
}

//[+intelligence, +followers, +food, +popularity, +special