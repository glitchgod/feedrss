/// @description Insert description here
// You can write your code in this editor
clicked_on = 0;

if (room_get_name(room) = "website_room") = true {
	if can_use = 1 {
		current_page = website_shower.website_page_on;										//get the current page that is being worked on
		use_site_number = line_on + (3 * current_page) - 1;									//get the entry number in the list of sites note: -1 due to arrays start at 0
	
		var total_length = array_length( website_shower.edit_list) ;						//get the length of the array
	
		//if it is the first one
		if (use_site_number = 0 ){															//if it is the first listed
			array_copy(array_holder,0,website_shower.edit_list,1,total_length -1);			//copy the array but the first one
			website_shower.edit_list = array_holder;										//set the website_shower to the new list
		}
	
		//if it is not first and last
		if (use_site_number > 0 and use_site_number < total_length -1 ){					//if it is not first and last one listed
			var mid_array_length = 0;														//array of the part A
		
			array_copy(array_partA,0,website_shower.edit_list,0,use_site_number)			//copy first half of the array
			array_copy(array_partB,0,website_shower.edit_list,use_site_number + 1 ,total_length - use_site_number - 1);			//copy second half of the array
		
			//array_copy(array_holder,0,website_shower.edit_list,0,total_length -2);			//copy the array but the first one
		
			mid_array_length = array_length(array_partA);									//get he length
			array_copy(array_holder,0,array_partA,0,array_length(array_partA));				//apply first half of the array
			array_copy(array_holder,mid_array_length,array_partB,0,array_length(array_partB));				//apply second half of the array
		
			website_shower.edit_list = array_holder;										//set the website_shower to the new list
		}
	
		//if it is the final one
		if (use_site_number = total_length - 1 ){											//if it is the last one listed
			array_copy(array_holder,0,website_shower.edit_list,0,total_length - 1);			//copy the array but the first one
			website_shower.edit_list = array_holder;										//set the website_shower to the new list
		}
		//create a new button inorder for an easy reset
		remake = instance_create_depth(x,y,0,delete_button);								//make the new button
		remake.line_on = line_on;															//set the new button to the proper line
		instance_destroy();																	//destroy self
		save_external_website_list();														//save the updated
	}
}


if (room_get_name(room) = "word_room") = true {
	if can_use = 1 {
		instance_destroy(self);																//destroy self
		instance_destroy(word_attached_to);													//destroy the word object this is attached to
	}
}
