event_inherited();
title = "A Long Winter";
content = "A scout returns to the band with a worried face, bringing news from the surrounding farmsteads. The farmers living in the area think this year's winter will be long and cold. If they are right, the cold will lead to significant food shortages and those without reserves may starve."

option_a = "Take shelter, the men will appreciate escaping the cold, as long as the food reserves last.";
option_a_result_sucess = "Food reserves take a hit, but the men are greatful for "+oHero.name+"'s decision.";
option_a_impact_sucess = [0,0,-15,+10,"",0];

option_b = "Decrease rations, the men will complain but survive. \n (Cost: 10 intelligence)";
option_b_condition = oHero.intelligence >= 10;
option_b_result_sucess = +oHero.name+" finds a way to reallocate rations, incorporating grubs and tree bark into the meals of the band. The men are disgusted but find the meals better than death.";
option_b_impact_sucess = [-10,0,+15,-5,"",0];

option_c = "Push through the cold, the farmers may be wrong, and there is not enough food to wait and find out.";
option_c_result_sucess = "The farmers were not wrong. The cold is harsh and food is scarce. Some die from frostbite, some from starvation, and others flee from the band in fear of the same fate.";
option_c_impact_sucess = [0,-15,0,-10,"",0];