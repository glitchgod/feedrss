///decrease time
if 	room_get_name(room) = room_get_name(website_room){
	if website_shower.website_page_on != website_shower.website_list_length - 1{
		website_shower.website_page_on ++
	}
}
if room_get_name(room) = room_get_name(filter_room){
	if filter_shower.filter_page_on != filter_shower.filter_page_length - 1{
		filter_shower.filter_page_on ++;
		off_on_buttons.page_on ++;
		minus_button_down_filter.page_on ++;
		plus_button_up_filter.page_on ++;
	}
}
if room_get_name(room) = room_get_name(word_room){
	if filter_shower.filter_page_on != filter_shower.filter_word_page_length - 1{
		filter_shower.filter_page_on ++;
		page_tracker.page_to_save = filter_shower.filter_page_on;
	}
}

if room_get_name(room) = room_get_name(history_room){
	if history_shower.page_on != array_length(history_shower.history_loaded)  and history_shower.shift_buttons = 0 {
		history_shower.page_on ++;
	}
}
