//draw the details area on the side
draw_set_font(font_medium)
draw_set_color(c_white)
draw_text(x,y,string("Filters")) ;
draw_set_font(font_small)
if (room_get_name(room) = "filter_room"){
	draw_text(385,y,"Page: " + string(filter_page_on + 1) + " / " + string(filter_page_length)) ;
}
if (room_get_name(room) = "word_room"){
	draw_text(385,y,"Page: " + string(filter_page_on + 1) + " / " + string(filter_word_page_length)) ;
}
