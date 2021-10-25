event_inherited();
if collision and tToggle{
	tToggle = 0;
	title = "The Wilderness";
	content = oHero.name+"'s band neared the edge of a deep and dark forest. Many of the band are shaken by the forest, believing a great beast hunts inside. They urge "+oHero.name+" to avoid the forest entirely, however there is an abundance of wildlife that could be an opportunity for food.";
	option_a = "Hunt the wildlife, we must not waste this opportunity.";
	option_a_result_sucess = "Some food is gathered, but not before long a few of the men return to camp injured and afraid. The rest of the men refuse to hunt after that. ";
	option_a_impact_sucess = [0,0,+15,-10,"",0];


	option_b = "Kill the Beast, its carcass will sustain the men.";
	option_b_result_sucess = "The Beast hides in the shadows, and strikes without warning. Two men fall before it is even found, and another two before it is cut down, taking one more to the grave before faltering. The food is plenty but the cost is high.";
	option_b_impact_sucess = [0,-5,+25,-10,"",0];


	option_c = "Avoid, heeding their advice will make the men relieved.";
	option_c_result_sucess = "The men thank "+oHero.name+" for his considerability, as they quickly pass the forest.";
	option_c_impact_sucess = [0,0,0,+10,"",0];
}

//[+intelligence, +followers, +food, +popularity, +special