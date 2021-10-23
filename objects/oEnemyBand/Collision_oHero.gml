event_inherited();

if instance_exists(oTextbox_Result) and cToggle{
	cToggle = 0;
	oTextbox_Result.title = title;
	if (oHero.selected == option_a){
		if (oHero.followers >= size){
			oTextbox_Result.content = option_a_result_sucess;
			oTextbox_Result.impacts = option_a_impact_sucess;
		}
		else{
			oTextbox_Result.content = option_a_result_failure;
			oTextbox_Result.impacts = option_a_impact_failure;
			oHero.death = 1;
		}
	}
	if (oHero.selected == option_b){
		if (oHero.followers >= size/3){
			oTextbox_Result.content = option_b_result_sucess;
			oTextbox_Result.impacts = option_b_impact_sucess;
		}
		else{
			oTextbox_Result.content = option_b_result_failure;
			oTextbox_Result.impacts = option_b_impact_failure;
			oHero.death = 1;
		}
		
	}
	if (oHero.selected == option_c){
		oTextbox_Result.content = option_c_result_sucess;
		oTextbox_Result.impacts = option_c_impact_sucess;
	}
}