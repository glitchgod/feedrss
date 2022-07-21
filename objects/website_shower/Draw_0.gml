/// @description draw the list of sites
draw_set_halign(fa_left);
draw_set_font(font_small)
draw_set_color(c_white)
draw_text(x,y - ((270 * website_page_on)),info);

draw_set_halign(fa_right);
draw_text(565,y,"Page: " + string(website_page_on + 1) + " / " + string(website_list_length) + "  |  " + "Websites: " + string(array_length(edit_list))) ;

draw_set_halign(fa_left);
//draw the details area on the side
draw_set_font(font_medium)
draw_set_color(c_white)
//details_info = convert_text(details_info,258,font_medium);
draw_text(622,16,string(details_info)) ;

//draw a block to hide all the text at bottom
draw_rectangle_color(0,352,room_width,room_height,c_black,c_black,c_black,c_black,false)
