
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
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_green,1);
		}
	}
