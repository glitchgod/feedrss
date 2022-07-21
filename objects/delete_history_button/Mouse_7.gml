/// @description Insert description here
// You can write your code in this editor
clicked_on = 0;

history_shower.shift_buttons = 0

array_delete(history_shower.history_loaded,xyz_pass_over,1);		//delete the entry from the array
update_downloaded_list();												//save the data
room_restart();														//restart the room to re pull the data