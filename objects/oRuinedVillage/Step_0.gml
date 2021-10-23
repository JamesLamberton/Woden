event_inherited();
if collision and tToggle{
	title = "A Ruined Village";
	content = oHero.name+"'s band approached a village scorched and smoking, remnants of a sucessful raid. Passing through the village reveals the helpless faces of the survivors left after the slaughter.";
	option_a = "Loot.";
	option_a_result_sucess = "kinda fucked up but you get whatever food was left.";
	option_a_impact_sucess = [0,0,10,-10,"",0];


	option_b = "Investigate.";
	option_b_result_sucess = "you learn";
	option_b_impact_sucess = [10,0,0,5,"",0];


	option_c = "Provide.";
	option_c_result_sucess = ":) ";
	option_c_impact_sucess = [5,0,-10,10,"",0];
}

//[+intelligence, +followers, +food, +popularity, +special]