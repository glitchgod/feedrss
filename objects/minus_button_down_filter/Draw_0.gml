if (special_number != 0){
	if mouse_enter_key = 0 {	//mouse not over
		if clicked_on = 0 {
			draw_self();
		}
	}

	if mouse_enter_key = 1 {	//mouse over	
		if clicked_on = 0 {
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_white,1);
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_black,.25);
		}
		if clicked_on = 1 {
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_white,0);
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_red,1);
		}
	}
}
//set the color of text to white
draw_set_color(c_white);
draw_set_font(font_medium);
draw_set_halign(fa_left);
draw_text(x-315,y,string(info));	//actual text to draw




//reset the color scheme
draw_set_color(c_black);
draw_set_halign(fa_left)


if (special_number = 0){
	draw_sprite_ext(Minus_Button,0,x,y,1,1,0,c_red,.5)
}
    

