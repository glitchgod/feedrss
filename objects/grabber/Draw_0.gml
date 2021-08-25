/// @description draw info
if room=home_room{
	draw_set_font(font_normal);
	draw_set_color(c_white);
	draw_text(x,y+32*.65,string_hash_to_newline("Timer set at: "+string(timer_minutes)+" minutes"));
	draw_text(x,y+32*1.65,string_hash_to_newline("Update in: "+string( timer_live)));
	draw_text(x,y+32*2.65,string_hash_to_newline("Website Errors: "+string(total_errors)));
	draw_text(x,y+32*3.65,string_hash_to_newline("Time Last Updated: "));
	draw_text(x,y+32*4.65,string_hash_to_newline(string(last_updated)));
	draw_text(x,y+32*5.65,string_hash_to_newline("Tors Found: "+string(last_parse_amount )));
	draw_text(x,y+32*6.65,string_hash_to_newline("Being Filtered: "+string(last_download_amount)));
}