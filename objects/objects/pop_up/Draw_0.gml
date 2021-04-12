/// @description draw the background block

//backing and outline
draw_rectangle_colour(0,0,room_width,room_height,c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
draw_rectangle_colour(2,2,room_width-4,room_height-(room_height/4)-4,c_black,c_black,c_black,c_black,1)

draw_set_font(font1);
draw_set_color(c_black);
draw_text_ext(4,4+real(scroll_wheel_spot*4),string_hash_to_newline(pop_up_text),-1,room_width-8);


//text area overflow box
draw_rectangle_colour(0,room_height-(room_height/4)-2,room_width,room_height,c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)

//top of popup overflow box
draw_rectangle_colour(0,0,room_width,1,c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)

if pop_up_type  !=3 {
	draw_rectangle_colour(24,room_height-(room_height/8)-48,room_width-28,room_height-(room_height/8)-12,c_white,c_white,c_white,c_white,0)
	draw_rectangle_colour(24,room_height-(room_height/8)-48,room_width-28,room_height-(room_height/8)-12,c_black,c_black,c_black,c_black,1)

	//text input area
	draw_set_font(font0);

	//blink text
	if blink_cursor = 0{
	    draw_set_color(c_black);draw_text(26,room_height-(room_height/8)-46,string_hash_to_newline(string(input_text_shown) + string(" ")));
	    }
	if blink_cursor = 1{
	    draw_set_color(c_black);draw_text(26,room_height-(room_height/8)-46,string_hash_to_newline(string(input_text_shown) + string(" _")));
	    }
    
	draw_rectangle_colour(0,room_height-(room_height/4)-2,22,room_height,c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
}
//ok box
draw_rectangle_colour(24,room_height-(room_height/8),room_width-(room_width/2)-28,room_height-(room_height/8)+48,c_green,c_green,c_green,c_green,0)
draw_rectangle_colour(24,room_height-(room_height/8),room_width-(room_width/2)-28,room_height-(room_height/8)+48,c_black,c_black,c_black,c_black,1)
draw_set_font(font2);
draw_set_color(c_black);
draw_text(96,room_height-(room_height/8)-2,string_hash_to_newline("OK"));

if pop_up_type  !=3 {
	//cancel box
	draw_rectangle_colour(room_width-(room_width/2)+28,room_height-(room_height/8),room_width-28,room_height-(room_height/8)+48,c_red,c_red,c_red,c_red,0)
	draw_rectangle_colour(room_width-(room_width/2)+28,room_height-(room_height/8),room_width-28,room_height-(room_height/8)+48,c_black,c_black,c_black,c_black,1)
	draw_set_font(font3);
	draw_set_color(c_black);
	draw_text(room_width-(room_width/2)+48,room_height-(room_height/8)+2,string_hash_to_newline("CANCEL"));
}
