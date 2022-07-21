if (search_on = 1) and (search_array =""){
	
	draw_set_color(c_white);
	draw_set_font(font_big);
	draw_text(room_width/3,room_height/2,"No Search Results");
}

//draw text at the top
draw_rectangle_color(0,0,room_width-32,32,c_black,c_black,c_black,c_black,false)
draw_set_color(c_white);
draw_set_font(font_normal);
//set the history to 0 if nothing loaded


if (is_array(history_loaded) = true){
	//draw the information
	if (search_on = 0){
		draw_text(0,0,"Showing:  " + string(array_length(history_loaded)) + "  /  " + string(array_length(history_loaded)) + "     |     Downloaded: " + string(total_downed) +"     Ignored: " + string(total_ignored));
	}
	if (search_on = 1) and (search_array !=""){
		draw_text(0,0,"Showing:  " + string(array_length(search_array)) + "  /" + string(array_length(history_loaded)) + "     |     Downloaded: " + string(search_downed) +"     Ignored: " + string(search_ignored));
	}
	if (search_on = 1) and (search_array =""){
		draw_text(0,0,"Showing:  " + string("0") + "  /  " + string(array_length(history_loaded)) + "     |     Downloaded: " + string("0") +"     Ignored: " + string("0"));
	}
}

if (is_array(history_loaded) = false){
	history_loaded = 0;
	draw_text(0,0,"Showing:  " + string("0") + "  /  " + string("0") + "     |     Downloaded: " + string("0") +"     Ignored: " + string("0"));
	
}