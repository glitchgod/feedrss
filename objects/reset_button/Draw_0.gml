if mouse_enter_key = 0 {	//mouse not over
	if clicked_on = 0 {
		draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_white,1);
	}
}

if mouse_enter_key = 1 {	//mouse over	
	if clicked_on = 0 {
		draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_white,1);
		draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_black,.25);
	}
	if clicked_on = 1 {
		draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_white,0);
		draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_yellow,1);
	}
}


draw_set_color(c_white);
draw_set_font(font_medium);
draw_set_halign(fa_center)
draw_text(x+(96/2),y+4,"Reset");
draw_set_color(c_black);
draw_set_halign(fa_left)