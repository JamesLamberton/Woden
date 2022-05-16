if place_meeting(x,y,oHero){
	if !completed and alpha < 0.5{
		alpha += 0.05;	
	}
	draw_set_halign(fa_center);
	if Ap{
		draw_text_transformed_color(1366/6,500,At,3,1,0,c_white,c_white,c_white,c_white,alpha);
		oCollect_1.y = 600; 
	}
	else{
		oCollect_1.y = 1200; 
	}
	if Bp{
		draw_text_transformed_color(1366/2,500,Bt,3,1,0,c_white,c_white,c_white,c_white,alpha);
		oCollect_2.y = 600; 
	}
	else{
		oCollect_2.y = 1200; 
	}
	if Cp{
		draw_text_transformed_color(1366/6*5,500,Ct,3,1,0,c_white,c_white,c_white,c_white,alpha);
		oCollect_3.y = 600; 
	}
	else{
		oCollect_3.y = 1200; 
	}
	draw_text_transformed_color(1366/2+1,301,text,0.8,0.8,0,c_black,c_black,c_black,c_black,alpha);
	draw_text_transformed_color(1366/2,300,text,0.8,0.8,0,c_yellow,c_yellow,c_yellow,c_yellow,alpha*2);
	
}