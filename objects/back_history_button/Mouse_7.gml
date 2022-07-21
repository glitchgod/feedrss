/// @description Insert description here
// You can write your code in this editor
clicked_on = 0;
//room_restart();		
history_shower.shift_buttons = 0
if (instance_exists(History_title_button)){
	History_title_button.show_details =0;
}
if (instance_exists(History_title_search_button)){
	History_title_search_button.show_details =0;
}

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