keyboard_string = "";													//reset the text

if (instance_exists(line_with_text)  = true){							
	keyboard_string = "";											//reset the text
	line_with_text.text_to_show  = "";								//reset the text
														
	line_with_text.attached_to_edit = 4;							//set what it is for the line text
	history_shower.search_on = 1;									//set the search to be on
	history_shower.page_on =0;
	history_shower.search_phrase = "";

	history_shower.search_array ="";
}
clicked_on = 0;

history_shower.total_downed = 0;							//keeping track of the amount downloaded
history_shower.total_ignored = 0;							//keeping track of the amount ignored
history_shower.search_downed = 0;							//keeping track of the amount search downloaded
history_shower.search_ignored = 0;							//keeping track of the amount search ignored

if (instance_exists(History_title_button) =true){
	History_title_button.updated_numbers =0;
}

if (instance_exists(History_title_search_button) =true){
	History_title_search_button.updated_numbers =0;
}