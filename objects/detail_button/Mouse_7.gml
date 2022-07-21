/// @description Insert description here
// You can write your code in this editor
clicked_on = 0;


if can_use = 1 {
	current_page = website_shower.website_page_on;										//get the current page that is being worked on
	use_site_number = line_on + (3 * current_page) - 1;									//get the entry number in the list of sites note: -1 due to arrays start at 0
	
	if array_length(website_shower.edit_list[use_site_number]) = 7{					//if the entry exists
		website_issue = string( website_shower.edit_list[use_site_number,2]);				//issue if any that the website has						|array entry 2
		website_last_worked = string( website_shower.edit_list[use_site_number,3]);			//string that says last time ran						|array entry 3
		website_tors_found = string_digits( website_shower.edit_list[use_site_number,4]);	//number of tors found last run							|array entry 4
		website_tors_grabbed = string_digits( website_shower.edit_list[use_site_number,5]);	//number of tors downloaded last run					|array entry 5
		website_group_number = string_digits( website_shower.edit_list[use_site_number,6]);	//group number the website is with						|array entry 6

		var text_partA = "Current Issue: " + string(website_issue) + "\n"  ;				//part of the text that will be sent 
		var text_partB = "Last Parse: " + string(website_last_worked) + "\n"  ;				//part of the text that will be sent 
		var text_partC = "Last Tors Seen: " + string(website_tors_found) + "\n"  ;			//part of the text that will be sent 
		var text_partD = "Last Tors Grabbed: " + string(website_tors_grabbed) + "\n"  ;		//part of the text that will be sent 
		var text_partE = "Group(s): " + string(website_group_number) + "\n"  ;			//part of the text that will be sent 

		text_to_send = string(text_partA) + string(text_partB) + string(text_partC) + string(text_partD) + string(text_partE);	//join the info

		website_shower.details_info =  convert_text(text_to_send,338,font_medium);			//send the info
	}
	else{
		text_to_send = "";																	//blank the info
		website_shower.details_info =  convert_text(text_to_send,338,font_medium);			//send the info
	}
}