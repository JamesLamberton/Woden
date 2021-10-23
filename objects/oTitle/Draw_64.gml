/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_font(Norse_Font);
draw_set_color(c_white);
draw_text_transformed(x,y,oHero.name,10,4,0); 
draw_set_halign(fa_center);
draw_text_transformed(x,y+80,oHero.title ,5,2.5,0); 
draw_sprite(sBars,0,0,-100);
