// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function custom_history_search(){
	var temp_current_made = 0;																		//count how many have been made
	for(xyz = 0;xyz < array_length(history_shower.history_loaded);xyz ++){
		if (string_count(string_lower(history_shower.search_phrase),string_lower(history_shower.history_loaded[xyz,0])) > 0){	//if the phrase is found
			//get the title
			history_shower.search_array[temp_current_made,0] = string(history_shower.history_loaded[xyz,0]);
			new_button = instance_create_depth(32,32 + (33 * temp_current_made) ,0,History_title_search_button);
			new_button.text_to_draw_0 = string(history_shower.search_array[temp_current_made,0]);
			new_button.xyz_number = xyz;
			
			//get the link
			history_shower.search_array[temp_current_made,1] = string(history_shower.history_loaded[xyz,1]);	
			new_button.text_to_draw_1 = string(history_shower.search_array[temp_current_made,1]);
			
			//get the date pulled
			history_shower.search_array[temp_current_made,2] = string(history_shower.history_loaded[xyz,2]);	
			new_button.text_to_draw_2 = string(history_shower.search_array[temp_current_made,2]);
			
			//get the Category
			history_shower.search_array[temp_current_made,3] = string(history_shower.history_loaded[xyz,3]);	
			new_button.text_to_draw_3 = string(history_shower.search_array[temp_current_made,3]);
			
			//get the OG name
			history_shower.search_array[temp_current_made,4] = string(history_shower.history_loaded[xyz,4]);	
			new_button.text_to_draw_4 = string(history_shower.search_array[temp_current_made,4]);
			
			//get the Download Status
			history_shower.search_array[temp_current_made,5] = string(history_shower.history_loaded[xyz,5]);	
			new_button.text_to_draw_5 = string(history_shower.search_array[temp_current_made,5]);
			
			//get the feed source
			history_shower.search_array[temp_current_made,6] = string(history_shower.history_loaded[xyz,6]);	
			new_button.text_to_draw_6 = string(history_shower.search_array[temp_current_made,6]);
			
			temp_current_made ++;
		}
	}
}
