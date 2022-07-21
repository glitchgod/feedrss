if 	room_get_name(room) = room_get_name(website_room){
	if (website_shower.website_page_on != website_shower.website_list_length-1){
		if mouse_enter_key = 0 {	//mouse not over
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,1);
			}
		}

		if mouse_enter_key = 1 {	//mouse over	
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,1);
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_black,.25);
			}
			if clicked_on = 1 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,0);
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_red,1);
			}
		}


	}
	if (website_shower.website_page_on = website_shower.website_list_length -1 ){
	    draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_red,.5)
	    }

}

if (room_get_name(room) = room_get_name(filter_room)){
	if (filter_shower.filter_page_on != filter_shower.filter_page_length -1 ){
		if mouse_enter_key = 0 {	//mouse not over
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,1);
			}
		}

		if mouse_enter_key = 1 {	//mouse over	
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,1);
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_black,.25);
			}
			if clicked_on = 1 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,0);
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_red,1);
			}
		}


	}
	if (filter_shower.filter_page_on = filter_shower.filter_page_length -1 ){
	    draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_red,.5)
	    }

}

if (room_get_name(room) = room_get_name(word_room)){
	if (filter_shower.filter_page_on != filter_shower.filter_word_page_length-1){
		if mouse_enter_key = 0 {	//mouse not over
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,1);
			}
		}

		if mouse_enter_key = 1 {	//mouse over	
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,1);
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_black,.25);
			}
			if clicked_on = 1 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,0);
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_red,1);
			}
		}


	}
	if (filter_shower.filter_page_on = filter_shower.filter_word_page_length -1 ){
	    draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_red,.5)
	    }

}
if (room_get_name(room) = room_get_name(history_room)){
	//if (filter_shower.filter_page_on != filter_shower.filter_word_page_length-1){
		if mouse_enter_key = 0 {	//mouse not over
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,1);
			}
		}

		if mouse_enter_key = 1 {	//mouse over	
			if clicked_on = 0 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,1);
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_black,.25);
			}
			if clicked_on = 1 {
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_white,0);
				draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_red,1);
			}
		}


	}
	///if (filter_shower.filter_page_on = filter_shower.filter_word_page_length -1 ){
	///    draw_sprite_ext(self.sprite_index,1,x,y,.5,.5,0,c_red,.5)
	//    }

//}
