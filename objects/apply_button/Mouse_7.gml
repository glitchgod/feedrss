/// @description Insert description here
// You can write your code in this editor
clicked_on = 0;
if (instance_exists(cancel_button)  = true){
	instance_destroy(cancel_button);
	
	switch (line_with_text.attached_to_edit){
		case 1:											//set the new custom save location
		if (instance_exists(off_on_buttons) = true){
			if (off_on_buttons.state = 0){				//if override off
				if (save_shower.save_location_set = 0){	//invalid
					save_shower.save_test_location = string(line_with_text.text_to_show)
					save_shower.save_location_set = 0;
				}
				if (save_shower.save_location_set = 1){	//valid
					save_shower.save_test_location = string(line_with_text.text_to_show)
					grabber.save_file_location = string(line_with_text.text_to_show);
					save_shower.save_location_set=0;
					ini_open(string(working_directory)+"tool_stats.ini")
					ini_write_string("stats","save_file_location",grabber.save_file_location);
					ini_close(); 
		        }
			}
			if (off_on_buttons.state = 1){				//if override on
				save_shower.save_test_location = string(line_with_text.text_to_show)
				grabber.save_file_location = string(line_with_text.text_to_show);
				save_shower.save_location_set=0;
				ini_open(string(working_directory)+"tool_stats.ini")
				ini_write_string("stats","save_file_location",grabber.save_file_location);
				ini_close(); 
			}
		}
		
		if string_count("reset",line_with_text.text_to_show){	//reset the save directory
			grabber.save_file_location="";
			ini_open(string(working_directory)+"tool_stats.ini")
			ini_write_string("stats","save_file_location","");
			ini_close(); 
		}
		break;
		
		case 2:													//set the new url
			if website_shower.website_number_edit <= array_length(website_shower.edit_list) {					//if the entry exists
				website_shower.edit_list[website_shower.website_number_edit,1] = string(line_with_text.text_to_show);	//set the new website url
			
				//reset all the history data
				website_shower.edit_list[website_shower.website_number_edit,2] = "";
				website_shower.edit_list[website_shower.website_number_edit,3] = "";
				website_shower.edit_list[website_shower.website_number_edit,4] = "";
				website_shower.edit_list[website_shower.website_number_edit,5] = "";
				website_shower.edit_list[website_shower.website_number_edit,6] = "";
			
				//update the grabber
				array_copy(grabber.url_list,0,website_shower.edit_list,0,array_length(grabber.url_list));
				//save the whole array
				save_external_website_list();
			}
		break;
		
		case 3:													//set the new filtered word
				filter_shower.edit_list[filter_shower.filter_word_edit_num] = string(line_with_text.text_to_show);	//set the new word on the button
				
				//save the whole array
				save_word_list();
				room_restart();
		break;
		
		case 4:													//set the new search word
				history_shower.search_phrase = string(line_with_text.text_to_show);	//set the new word 
				if (string_length(string(line_with_text.text_to_show)) > 0){
					history_shower.page_on =0;
					history_shower.search_on = 1;
					custom_history_search();
				}
				
				
		break;
	}
	line_with_text.text_to_show  = "";
	line_with_text.attached_to_edit = 0;
	
}
keyboard_string = "";				//reset the text
instance_destroy(self);