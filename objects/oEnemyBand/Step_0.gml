event_inherited();
if collision and tToggle{
	size = irandom_range(2,7)*10;
	title = "An Enemy Approaches";
	content = "War looms over the horision, as "+oHero.name+"'s scouts report a rival warband heading straight towards the camp. The scouts inform "+oHero.name+" that the band holds     "+string(size)+" men, and that there is little time to pack the camp and retreat before the band arrives.";
	option_a = "Fight, many of Odin's warriors will enter Valhalla today.";
	option_a_result_sucess = "The battle is brutal and glorious. The honor of the Volsung name shines through the warriors as they bring Odin's wrath upon their enemies.";
	option_a_impact_sucess = [0,-ceil(size/2),0,15,"",0];
	option_a_result_failure = "Outnumbered, "+oHero.name+"'s men fall as they are overwhelmed by superior numbers. There are barely any survivors.";
	option_a_impact_failure = [-10,-ceil(oHero.followers*0.9),-ceil(oHero.food*0.9),0,"",0];

	option_b = "Ambush, with control over the battlefield location, the element of surpise is with us. \n (Cost: 10 intelligence)";
	option_b_condition = oHero.intelligence >= 10;
	option_b_result_sucess = "With men revealing themselves from between the trees surrounding the field, the tide of battle changes. Enemy lines shatter and those that do not immediately fall turn and run in fear. "+oHero.name+"'s tactical brillance leads to a heroic victory.";
	option_b_impact_sucess = [-10,-ceil(size/4),0,20,"",0];
	option_b_result_failure = "Although the ambush took them by surpise, the sheer numbers of the warband cut down "+oHero.name+" and his men with ease.";
	option_b_impact_failure = [-10,-ceil(oHero.followers*0.9),-ceil(oHero.food*0.9),0,"",0];

	option_c = "Retreat, those quick enough to run will survive the oncoming onslaught.";
	option_c_result_sucess = "It is a dark day for the Volsungs. The surviving few look upon the camp from a distance with lowered heads. Fire and smoke are all that remain of the camp. ";
	option_c_impact_sucess = [0,-ceil(oHero.followers*0.4),0,-ceil(oHero.food*0.4),"",0];
}

//[+intelligence, +followers, +food, +popularity, +special]