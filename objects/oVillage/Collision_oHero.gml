event_inherited();


if instance_exists(oTextbox_Result) and cToggle{
	cToggle = 0;
	oTextbox_Result.title = full_name;
	if (oHero.selected == option_a){
		oTextbox_Result.content = option_a_result_sucess;
		oTextbox_Result.impacts = option_a_impact_sucess;
	}
	if (oHero.selected == option_b){
		show_debug_message(option_b_impact_sucess)
		oTextbox_Result.impacts = option_b_impact_sucess;
		if wife{
			oHero.wife = 1;
			oTextbox_Result.content = option_b_result_wife;
			oTextbox_Result.impacts = option_b_impact_sucess;
		}
		else{
			oTextbox_Result.content = option_b_result_sucess;
			oTextbox_Result.impacts = option_b_impact_sucess;
		}
		
		
	}
	if (oHero.selected == option_c){
		
		if (diff >= 0){
			oTextbox_Result.content = option_c_result_sucess;
			oTextbox_Result.impacts = option_c_impact_sucess;
		}
		else{
			oTextbox_Result.content = option_c_result_failure;
			oTextbox_Result.impacts = option_c_impact_failure;
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