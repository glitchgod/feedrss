if (room = website_room) {
	if website_shower.website_page_on > 0{
		if mouse_enter_key = 0 {	//mouse not over
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_white,1);
			}
		}

		if mouse_enter_key = 1 {	//mouse over	
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_white,1);
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_black,.25);
			}
			if clicked_on = 1 {
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_white,0);
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_red,1);
			}
		}


	}
	if website_shower.website_page_on = 0{
	    draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_red,.5)
	    }

}

if (room = filter_room) or (room = word_room) {
	if filter_shower.filter_page_on > 0{
		if mouse_enter_key = 0 {	//mouse not over
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_white,1);
			}
		}

		if mouse_enter_key = 1 {	//mouse over	
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_white,1);
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_black,.25);
			}
			if clicked_on = 1 {
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_white,0);
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_red,1);
			}
		}


	}
	if filter_shower.filter_page_on = 0{
	    draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_red,.5)
	    }

}
if (room = history_room) {
	if history_shower.page_on > 0{
		if mouse_enter_key = 0 {	//mouse not over
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_white,1);
			}
		}

		if mouse_enter_key = 1 {	//mouse over	
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_white,1);
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_black,.25);
			}
			if clicked_on = 1 {
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_white,0);
				draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_red,1);
			}
		}


	}
	if history_shower.page_on = 0{
	    draw_sprite_ext(self.sprite_index,2,x,y,.5,.5,0,c_red,.5)
	    }

}