/// @description Insert description here
// You can write your code in this editor
clicked_on = 0;
keyboard_string = "";														//reset the text

if (instance_exists(line_with_text)  = true){							
	keyboard_string = "";													//reset the text
	line_with_text.text_to_show  = "";										//reset the text
	
	switch (attached_to){
		case 1:
			var lpDialogResult = GetDirectory("Select Directory", string(save_shower.save_test_location));
			if lpDialogResult != ""{										//not blank
				save_shower.save_test_location = string(lpDialogResult)
				grabber.save_file_location = string(lpDialogResult);
				save_shower.save_location_set=0;
				ini_open(string(working_directory)+"tool_stats.ini")
				ini_write_string("stats","save_file_location",grabber.save_file_location);
				ini_close();
			}
		break;
	
		case 2:																//if the room is the one that lists the websites
			if can_use = 1{													//if it is able to be clicked on
				use_site_number = line_on + (3 * current_page) - 1;			//get the entry number in the list of sites note: -1 due to arrays start at 0
				line_with_text.attached_to_edit = attached_to;				//set what case it is for the line text
				if use_site_number <= array_length(website_shower.edit_list) {	//if the entry exists
					if (array_length(website_shower.edit_list[use_site_number]))!= 7 {
						line_with_text.text_to_show = string("ERROR DAMAGED TEXT FILE");			//set the text to be edited
						website_shower.website_number_edit = use_site_number;//set the editing of the array to what number to change
					}
					else{													//if the array isnt damaged
						current_page = website_shower.website_page_on;		//get the current page that is being worked on
						use_site =  website_shower.edit_list[use_site_number,1]	;//what website it is in the website_shower list note: 1 due to array holding the links position
						line_with_text.text_to_show = string(use_site);		//set the text to be edited
						keyboard_string =  string(use_site);				//set the text to be edited
						website_shower.website_number_edit = use_site_number;//set the editing of the array to what number to change
					}
					save_external_website_list();
				}
			}
		break;
		case 3:																//if the room is the one that lists the websites
			if can_use = 1{													//if it is able to be clicked on
				line_with_text.attached_to_edit = attached_to;				//set what it is for the line text
				line_with_text.text_to_show = string(filter_shower.edit_list[word_attached_to.word_number - 1]);	//set the text to be edited
				keyboard_string =  string(string(filter_shower.edit_list[word_attached_to.word_number - 1]));		//set the text to be edited
				filter_shower.filter_word_edit_num = word_attached_to.word_number - 1;								//set the number to be changed
				
				/*
				if use_site_number <= array_length(website_shower.edit_list) {	//if the entry exists
					if (array_length(website_shower.edit_list[use_site_number]))!= 7 {
						line_with_text.text_to_show = string("ERROR DAMAGED TEXT FILE");			//set the text to be edited
						website_shower.website_number_edit = use_site_number;//set the editing of the array to what number to change
					}
					else{													//if the array isnt damaged
						current_page = website_shower.website_page_on;		//get the current page that is being worked on
						use_site =  website_shower.edit_list[use_site_number,1]	;//what website it is in the website_shower list note: 1 due to array holding the links position
						line_with_text.text_to_show = string(use_site);		//set the text to be edited
						keyboard_string =  string(use_site);				//set the text to be edited
						website_shower.website_number_edit = use_site_number;//set the editing of the array to what number to change
					}
					save_external_website_list();
				}*/
			}
		break;
	}
}