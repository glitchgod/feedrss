/// @description Insert description here
// You can write your code in this editor
clicked_on = 0;

//website room setup
if (room_get_name(room) = "website_room"){
	var list_length = 0;												//track how long the array is

	list_length = array_length(website_shower.edit_list);				//set the length tracking

	array_resize(website_shower.edit_list,list_length + 1);				//add a blank spot to the array
	website_shower.edit_list[list_length ,0] = string(list_length);		//set the number
	website_shower.edit_list[list_length ,1] = "New";					//set the website
	website_shower.edit_list[list_length ,2] = "No issue";				//set the default issue
	website_shower.edit_list[list_length ,3] = "Not Ran yet";			//set the time last worked
	website_shower.edit_list[list_length ,4] = 0;						//set the default tors found count
	website_shower.edit_list[list_length ,5] = 0;						//set the default tors grabbed number
	website_shower.edit_list[list_length ,6] = 0;						//set the group number

	save_external_website_list();										//save the update
}

//word room setup
if (room_get_name(room) = "word_room"){
	array_push(filter_shower.edit_list,"NEW PLACE HOLDER");				//add an array entry
	save_word_list();													//update the saved list	
	room_restart();														//restart the room
	
	
}
