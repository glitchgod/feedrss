/// @description draw info
draw_set_font(font0);
draw_set_color(c_black);
draw_text(x,y,string_hash_to_newline("Timer set at: "+string(timer_minutes)+" minutes"));
draw_text(x,y+32,string_hash_to_newline("Update in: "+string( timer_live)));
draw_text(x,y+32*2,string_hash_to_newline("Update Errors: "+string(total_errors)+" (DEV)"));
draw_text(x,y+32*3,string_hash_to_newline("Time Last Updated: "));
draw_text(x,y+32*4,string_hash_to_newline(string(last_updated)));
draw_text(x,y+32*5,string_hash_to_newline("Last Amount Downloaded: "+string(last_downloaded_amount)));
draw_text(x,y+32*6,string_hash_to_newline("Websites grabbing count: "+string(active_url_list)));
draw_text(x,y+32*7,string_hash_to_newline("Number of ignored words: "+string(array_length_1d(ignore_list)-1)));
/**/

/* */
/*  */
