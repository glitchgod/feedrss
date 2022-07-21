/// @description Insert description here
// You can write your code in this editor

	if mouse_enter_key = 0 {	//mouse not over
			if clicked_on = 0 {
				draw_sprite_ext(line, 0, x-32, y,1,1,0,c_grey,1)
			}
		}

	if mouse_enter_key = 1 {	//mouse over	
		if clicked_on = 0 {
			draw_sprite_ext(line, 0, x-32, y,1,1,0,c_black,1)
		}
		if clicked_on = 1 {
			draw_sprite_ext(line, 0, x-32, y,1,1,0,c_blue,1)
		}
	}

	if (string_length(text_to_draw_5) = 28){
		draw_set_color(c_green)	;			//set the text color
		draw_set_font(font_medium);			//set the font size
		draw_text(x,y,text_to_draw_0);		//draw the title text
	}
	if (string_length(text_to_draw_5) != 28){
		draw_set_color(c_red)	;			//set the text color
		draw_set_font(font_medium);			//set the font size
		draw_text(x,y,text_to_draw_0);		//draw the title text
	}


if (show_details = 1){
	draw_set_color(c_white)	;			//set the text color
	draw_set_font(font_medium);			//set the font size
	draw_text(32,32,info);
}