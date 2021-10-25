/// @desc Our Beginning Hero, Sigi
randomise();
moving = 0;
prologue = 0;
canDie = 0;
hsp = 3;
age = 18;
intelligence = 0;
followers = 0;
current_followers = 0;
food = 0;
popularity = 0;
pop_max = 180;
lineage = 1;
moveToggle = 1;
update = 0;
name_list = ["Sigi","Rerir","Volsung","Sigmund"];
title_list = ["The Outlaw","The Father", "The King", "The Twin"];
order = 0;
name = name_list[order];
son_name = "Rerir";
if (order > 3){
	son_name = name_list[order+1];
}
else{
	order = 0;
}
title = title_list[order];
old_age = 0;
selected = "";
inst = 0;
death = 0;
bonus = 1;
wife = 0;
son = 0;