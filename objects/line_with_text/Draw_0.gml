draw_self()
if (attached_to_edit != 0){
	
	draw_set_color(c_black)
	draw_set_font(font_normal)
	if (string_width(text_to_show)) > 700 {	
		draw_text(x - (string_width(text_to_show) - 700) + 34,y- 4,text_to_show)
		if (blink_line = 1){
			draw_text(x - (string_width(text_to_show) - 700) + 34,y- 4,string(text_to_show) + "<")
		}
	}
	else{
		draw_text(x  + 34,y - 4,text_to_show)
		if (blink_line = 1){
			draw_text(x + 34,y - 4,string(text_to_show) + "<")
		}
	}

	draw_rectangle_color(x,y,x + 31,y + 31,c_white,c_white,c_white,c_white,false);
	if (blink_line = 1){
		draw_set_font(font_big)
		draw_text_color(x,y - 4,">",c_black,c_black,c_black,c_black,1)
	}
}