event_inherited();

if instance_exists(oTextbox_Result) and cToggle{
	cToggle = 0;
	oTextbox_Result.title = title;
	if (oHero.selected == option_a){
		oTextbox_Result.content = option_a_result_sucess;
		oTextbox_Result.impacts = option_a_impact_sucess;

	}
	if (oHero.selected == option_b){

		oTextbox_Result.content = option_b_result_sucess;
		oTextbox_Result.impacts = option_b_impact_sucess;

		
	}
	if (oHero.selected == option_c){
		oTextbox_Result.content = option_c_result_sucess;
		oTextbox_Result.impacts = option_c_impact_sucess;
	}
}