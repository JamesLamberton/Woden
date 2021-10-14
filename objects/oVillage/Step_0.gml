event_inherited();
if collision{
name = ["Finnmork","Jokulsvikra","Mostr","Gnupverjahreppr","Auonar","Hafr","Folafotr","Landamot","Lonlond"]
suffix = ["thorpe","thwaite","toft","keld","ness","by","kirk"]
type_list = ["settlement","woodland village","small village","headland village","farmstead","monestary village"];
type_num = irandom_range(0,5);
size = irandom_range(2,10)*10;
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
option_a_result =  oHero.name+"'s popularity amoung the general populace result in "+string(recruits)+" eager and loyal warriors for the band."
option_a_impacts = [0,recruits,-5,5,"",0];

option_b_result = "While unnapreciated, settling for the winter allows food stocks to replenish and knowledge to be gained. The men and the people of the "+type+" become disgruntled with one another and all of them see less of "+oHero.name+" for the situation. "
option_b_impacts = [2,2,15,-10,"",0]

option_c_result_sucess = "Guided by Woden, "+oHero.name+"'s army tears through "+full_name+", leaving nothing but rubble and the message to others that the Volsungs are coming, and will not be stopped.";
option_c_impacts = [0,-size/2,ceil(size/3),ceil(size/3),"",0];

option_c_result_failure = "In an overestimation of his abilities, "+oHero.name+ "finds himself and his band in a losing battle. His band barely escapes with their lives, as the men of "+full_name+" strike down "+oHero.name+".";
}
