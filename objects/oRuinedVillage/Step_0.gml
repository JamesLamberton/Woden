event_inherited();
if collision and tToggle{
	title = "A Ruined Village";
	content = oHero.name+"'s band approached a village scorched and smoking, remnants of a sucessful raid. Passing through the village reveals the helpless faces of the survivors left after the slaughter.";
	option_a = "Loot, take what food remains from the settlement.";
	option_a_result_sucess = "The men look at "+oHero.name+" in fear as he commands them to plunder the remains of the settlement. The survivors do little to resist other than weep and beg.";
	option_a_impact_sucess = [0,0,15,-10,"",0];


	option_b = "Investigate, it is critical to find out whatever we can about our potential enemies.";
	option_b_result_sucess = oHero.name+" analyses the remants of the village to analyse how their unknown enemies operate. He estimates their size, strategies and potential weaknesses.";
	option_b_impact_sucess = [10,0,0,5,"",0];


	option_c = "Provide, those left need help that the band can lend.";
	option_c_result_sucess = oHero.name +"dedicates time and food to help rebuild the village. Over the time at the village, stories are shared and companionships are built. Some war wearied men disband to stay behind and settle, while more fresh and eager faces join the band. Tales of "+oHero.name+"'s honor spread through the region. ";
	option_c_impact_sucess = [5,5,-10,15,"",0];
}

//[+intelligence, +followers, +food, +popularity, +special]