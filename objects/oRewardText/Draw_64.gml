if amount > 0{
		draw_text_color(xpos,ypos,"+"+string(amount)+" "+rtype,c_green,c_green,c_green,c_green,a);
}
else{
		draw_text_color(xpos,ypos,string(amount)+" "+rtype,c_red,c_red,c_red,c_red,a);
}
if a > 0{
	a -= 0.01;
	ypos -= 1;
	
	
	
}
else{
	instance_destroy()
}