text_to_draw_0 = "";		//the text to be shown
text_to_draw_1 = "";		//the text to be shown
text_to_draw_2 = "";		//the text to be shown
text_to_draw_3 = "";		//the text to be shown
text_to_draw_4 = "";		//the text to be shown
text_to_draw_5 = "";		//the text to be shown
text_to_draw_6 = "";		//the text to be shown
xyz_number = 0 ;			//what number is the portion
mouse_enter_key = 0 ;		//mouse overed
clicked_on = 0;				//mouse clicked inside
show_details = 0;			//to show all the text to draw
updated_numbers = 0;		//used to know if this button has updated the stats - 0 means no |1 means yes

info_main = string(text_to_draw_0) + "\n" + string(text_to_draw_1) + "\n" + string(text_to_draw_2) + "\n" + string(text_to_draw_3) + "\n" + string(text_to_draw_4) + "\n" + string(text_to_draw_5) + "\n" + string(text_to_draw_6);


info = convert_text(info_main,room_width-48,font_medium)