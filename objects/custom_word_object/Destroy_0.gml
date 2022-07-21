/// @description 
instance_destroy(attached_to_A);	//destroy the edit button attached

array_delete(filter_shower.edit_list,word_number-1,1)	//remove the enry from the array
save_word_list();					//save the new list
room_restart()						//resetart the room to clean up the data
