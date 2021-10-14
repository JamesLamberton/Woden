event_inherited();
if instance_exists(oTextbox){

	oTextbox.option_a = option_a;
	oTextbox.option_b = option_b;
	oTextbox.option_c = option_c;

}

if instance_exists(oTextbox_Result){
	oTextbox_Result.title = full_name;
	if (oHero.selected == option_a){
		oTextbox_Result.content = option_a_result;
		oTextbox_Result.impacts = option_a_impacts;
	}
	if (oHero.selected == option_b){
		oTextbox_Result.content = option_b_result;
		oTextbox_Result.impacts = option_b_impacts;
		
	}
	if (oHero.selected == option_c){
		
		if (diff >= 0){
			oTextbox_Result.content = option_c_result_sucess;
			oTextbox_Result.impacts = option_c_impacts;
		}
		else{
			oTextbox_Result.content = option_c_result_failure;
			oHero.followers = oHero.followers*0.1
			oHero.death = 1;
		}
		
	}
	

}
if collision{
	type_num = irandom_range(0,5);
	size = irandom_range(2,10)*10;
	full_name = name[irandom_range(0,8)] + suffix[type_num];
	type = type_list[type_num]	
	
}