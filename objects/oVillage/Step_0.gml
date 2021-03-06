event_inherited();
if collision and tToggle{
	tToggle = 0;
//name = ["Finnmork","Jokulsvikra","Mostr","Gnupverjahreppr","Auonar","Hafr","Folafotr","Landamot","Lonlond"]
//suffix = ["thorpe","thwaite","toft","keld","ness","by","kirk"]
//type_list = ["settlement","woodland village","small village","headland village","farmstead","monestary village"];
type_num = irandom_range(0,5);
size = irandom_range(2,7)*10;
full_name = name[irandom_range(0,8)] + suffix[type_num] ;
type = type_list[type_num]
diff = oHero.followers + oHero.bonus*5- size;
title = full_name;
content = oHero.name+" and his band near "+full_name+", a "+type+".";
option_a = "Recurit more warriors, "+oHero.name+"'s reputation thrives in this "+type;
option_b = "Settle, the warriors will not agree, but today is a time of peace and rest.";
option_c = "Raid the "+type+", the "+type+" only holds "+string(size)+" guards and the men are eager for a fight.";
//[+intelligence, +followers, +food, +popularity, +special]

recruits = ceil(oHero.popularity/5);
option_a_result_sucess =  oHero.name+"'s popularity amoung the general populace result in "+string(recruits)+" eager and loyal warriors for the band."
option_a_impact_sucess = [0,recruits,-5,5,"",0];
option_b_result_sucess = "While unnapreciated, settling for the winter allows food stocks to replenish and knowledge to be gained. The men and the people of the "+type+" become disgruntled with one another and all of them see less of "+oHero.name+" for the situation. "
if !oHero.wife{
	if irandom_range(-3,1) and (oHero.popularity >= 90){
		option_b_result_wife = option_b_result_sucess + "Showing respect towards the Volsung name, the leader of "+full_name+" offers his daughter to be "+oHero.name+"'s bride.  ";
		wife = 1;
		
		option_b_impact_sucess = [2,2,15,+5,"",0]
		
	}
	else{
		wife = 0;
		option_b_impact_sucess = [2,2,15,-15,"",0]	
	}
	
}
else{
	wife = 0;
	if irandom_range(-1,1) and !oHero.son{
		option_b_result_sucess = option_b_result_sucess + "The time to rest allows bonds to be made between "+oHero.name+" and his wife. Not long into the stay, the Volsung family are blessed with a son; "+oHero.son_name+". The men rejoice as the Volsung family strengthens and follows the path to greatness. Many men from "+full_name+" flock to the band in hopes to see the Age of "+oHero.son_name+".";
		option_b_impact_sucess = [0,10,15,+15,"A son",1]	
	}
	else{
		option_b_impact_sucess = [2,2,15,-15,"",0]	
	}
}





option_c_result_sucess = "Guided by Woden, "+oHero.name+"'s army tears through "+full_name+", leaving nothing but rubble and the message to others that the Volsungs are coming, and will not be stopped.";
option_c_impact_sucess = [0,-size/2+oHero.bonus*5,ceil(size/3),ceil(size/3),"",0];

option_c_result_failure = "In an overestimation of his abilities, "+oHero.name+ "finds himself and his band in a losing battle. His band barely escapes with their lives, as the men of "+full_name+" strike down "+oHero.name+".";
option_c_impact_failure = [0,-ceil(oHero.followers*0.9),0,0,"",0];
}
