/// @description Insert description here
if (room_get_name(room) = "word_room") = true {
	filter_page_on = page_tracker.page_to_save 
}

if (room_get_name(room) = "filter_room") = true {
	load_custom_filter_options()
}
